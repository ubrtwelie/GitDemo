//
//  ViewController.swift
//  TConverter
//
//  Created by Юрий Каплан on 10.02.2023.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var upLabel: UILabel!
    
    @IBOutlet weak var downLabel: UILabel!
    ч   
    
    @IBOutlet weak var slider: UISlider! {
        //default of slide and colors
        didSet {
            slider.maximumValue = 100
            slider.minimumValue = -100
            slider.value = 0
            //colors
            slider.thumbTintColor = .green
            slider.minimumTrackTintColor = .red
            slider.maximumTrackTintColor = .blue
        }
    }
    
    @IBAction func sliderValueChanged(_ sender: UISlider) {
        //upLabel
        let temCels = Int(round(sender.value))
        upLabel.text = "\(temCels)C"
        //downLabel
        let temFah = Int(round(sender.value * 9 / 5) + 32)
        downLabel.text = "\(temFah)F"
        

    }

}

