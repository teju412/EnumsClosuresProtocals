//
//  ViewController.swift
//  EnumsClosuresProtocals
//
//  Created by TejaDanasvi on 29/9/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
     // let result = trainBerthNames(berths: .upper)
        let result = trainBerthNames1(berths1: .upper)
        print(result)
        
        let dataCode = dataModel(codes: .barCode(10, 10, "teja you are intillent"))
        print(dataCode)
    }
//MARK:-ENUMARATIONS
    enum TrainBerth {
    case upper, lower, middle, any
    }
    func trainBerthNames(berths:TrainBerth) -> String {
        switch berths {
        case .upper:
            return "oops upper berth"
        case .lower:
            return "oops lower berth"

        case .middle:
            return "oops middle berth"

        case .any:
            return "oops any berth"
        }
    }
    enum trainBerth1: String {
        case upper = "you booked upper seat"
        case lower = "you booked lower seat"
        case middle = "you booked middle seat"
        case any = "you booked any seat"

    }
    func trainBerthNames1(berths1: trainBerth1) -> String {
        switch berths1 {
        case .upper:
            return "\(trainBerth1.upper.rawValue)"
        case .lower:
            return "\(trainBerth1.lower.rawValue)"

        case .middle:
            return "\(trainBerth1.middle.rawValue)"

        case .any:
            return "\(trainBerth1.any.rawValue)"

        }
    }
    
    enum QRCode {
    case barCode( Int, Int , String )
        case navigationBar(String)
    }
    func dataModel(codes: QRCode) -> Any {
        switch codes {
        case .barCode(let a, let b, let desc):
            return "\(a * b) \(desc)"
        case .navigationBar(let name):
            return name
        }
    }

    
        
}


