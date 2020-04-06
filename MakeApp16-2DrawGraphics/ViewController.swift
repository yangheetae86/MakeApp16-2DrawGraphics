//
//  ViewController.swift
//  MakeApp16-2DrawGraphics
//
//  Created by Y on 2020/04/04.
//  Copyright © 2020 HEETAE YANG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet var imgView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func btnDrawLine(_ sender: UIButton) {
        UIGraphicsBeginImageContext(imgView.frame.size) //1
        let context = UIGraphicsGetCurrentContext()! //2
        // Draw Line
        context.setLineWidth(2.0) //3
        context.setStrokeColor(UIColor.red.cgColor) //4
        
        context.move(to: CGPoint(x: 70, y: 50)) //5
        context.addLine(to: CGPoint(x: 270, y: 250)) //6
        
        context.strokePath() //7
        //Draw Triangle //8
        context.setLineWidth(4.0)
        context.setStrokeColor(UIColor.blue.cgColor)
        
        context.move(to: CGPoint(x:170, y:200))
        context.addLine(to: CGPoint(x: 270, y: 350))
        context.addLine(to: CGPoint(x: 70, y: 350))
        context.addLine(to: CGPoint(x: 170, y: 200))
        context.strokePath()
        imgView.image = UIGraphicsGetImageFromCurrentImageContext() //9
        UIGraphicsEndPDFContext() //그림 그리기를 끝낸다
    }
    
    @IBAction func btnDrawRectangle(_ sender: UIButton) {
    }
    @IBAction func btnDrawCircle(_ sender: UIButton) {
    }
    @IBAction func btnDrawArc(_ sender: UIButton) {
    }
    @IBAction func btnDrawFill(_ sender: UIButton) {
    }
}

