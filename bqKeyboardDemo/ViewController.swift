//
//  ViewController.swift
//  bqKeyboardDemo
//
//  Created by 张亚峰 on 2018/9/1.
//  Copyright © 2018年 zhangyafeng. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textview: UITextView!
    
    lazy var emoticonView: ZYFEmoticonView = ZYFEmoticonView.inputView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //设置输入视图 -视图刚刚加载，还没有显示，系统默认的键盘还没有生效
        //设置输入视图
        textview.inputView = emoticonView
        
        textview.reloadInputViews()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        textview.becomeFirstResponder()
    }

}

