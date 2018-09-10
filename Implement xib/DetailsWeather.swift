//
//  DetailsWeather.swift
//  Implement xib
//
//  Created by Mai Pham Quang Huy on 9/10/18.
//  Copyright © 2018 Mai Pham Quang Huy. All rights reserved.
//

import UIKit

class DetailsWeather: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var mainTextView: UITextView!
    
    override init(frame: CGRect) { //for using custom view in code
        super.init(frame: frame)
        commonInit()
    }
    
    required init?(coder aDecoder: NSCoder) { //for using custom view in IB
        super.init(coder: aDecoder)
        commonInit()
    }
    
    private func commonInit() {
        Bundle.main.loadNibNamed("DetailsWeather", owner: self, options: nil) //load xib name from memory, have to be the same with xib file
        addSubview(contentView) //add the content outlet as a subview of the view just created above
        //possition the contenView to take the entire view appearance
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
}
