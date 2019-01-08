//
//  HeaderView.swift
//  UIViewBlur-Practice
//
//  Created by 大室 on 2019/01/08.
//  Copyright © 2019年 大室. All rights reserved.
//

import UIKit

class HeaderView: UICollectionReusableView {

    let imageView: UIImageView = {
        let iv = UIImageView(image: #imageLiteral(resourceName: "stretchy_header"))
        iv.contentMode = .scaleAspectFill
        return iv
    }()

    override init(frame: CGRect) {
        super.init(frame: frame)
        // custom code for layout

        backgroundColor = .red

        addSubview(imageView)
        imageView.fillSuperview()

        //blur
        setupVisualEffectBlur()
    }

    var animator: UIViewPropertyAnimator!

    fileprivate func setupVisualEffectBlur() {
        animator = UIViewPropertyAnimator(duration: 3.0, curve: .linear, animations: { [weak self] in

            // treat this area as the end state of your animation
            let blurEffect = UIBlurEffect(style: .regular)
            let visualEffectView = UIVisualEffectView(effect: blurEffect)

            self?.addSubview(visualEffectView)
            visualEffectView.fillSuperview()
        })
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
