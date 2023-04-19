//
//  ViewController.swift
//  Xylophone
//
//  Created by Angela Yu on 28/06/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    
    var player: AVAudioPlayer!
    
//    var tmer: Timer?

    @IBAction func keyPressed(_ sender: UIButton) {
        
        UIView.animate(withDuration: 0.3) {
                sender.alpha = 0.5
            }

        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3 ) {
                UIView.animate(withDuration: 0.3) {
                    sender.alpha = 1.0
                }
                
                playSound(soundTrackName: sender.currentTitle ?? "c")
            }
        
        
//        func timer(){
//            tmer = Timer.scheduledTimer(withTimeInterval: 2, repeats:false, block: {_ in
//                sender.alpha=1
//              UIView.animate(withDuration: 0.3) {
//                sender.alpha = 1.0
//               }
//            })
        
    
    func playSound(soundTrackName: String) {
        let url = Bundle.main.url(forResource: soundTrackName, withExtension: "wav")
        player = try! AVAudioPlayer(contentsOf: url!)
        player.play()
                
    }
}


}
