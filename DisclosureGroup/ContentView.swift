//
//  ContentView.swift
//  DisclosureGroup
//
//  Created by Võ Thanh Sang on 6/30/20.
//

import SwiftUI

struct ContentView: View {
    
    @State var show = false
    @State var country = 0
    var body: some View {
        
        VStack {
            DisclosureGroup("Pick a country", isExpanded: self.$show) {
                
                ScrollView {
                    LazyVStack(alignment: .leading, spacing: 15, pinnedViews: [], content: {
                        ForEach(1...10, id: \.self) { count in
                            Text("Country \(count)")
                                .onTapGesture {
                                    self.country = count
                                    
                                    withAnimation {
                                        self.show.toggle()
                                    }
                                }
                        }
                    })
                }
                padding(.top)
                frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            }
            .padding(.all)
            .background(Color.black.opacity(0.06))
            .cornerRadius(12)
            .padding(.horizontal)
            
            Text("selected country \(self.country)")
            
            Spacer()
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
