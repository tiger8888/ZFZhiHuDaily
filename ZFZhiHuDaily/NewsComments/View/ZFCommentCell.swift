//
//  ZFCommentCell.swift
//  ZFZhiHuDaily
//
//  Created by 任子丰 on 16/1/30.
//  Copyright © 2016年 任子丰. All rights reserved.
//

import UIKit
import Kingfisher

class ZFCommentCell: UITableViewCell {

    @IBOutlet weak var avatarImageView: UIImageView!
    @IBOutlet weak var contentLabel: UILabel!
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var zanBtn: ImageTextButton!
    var comment : ZFComments! {
        didSet {
            self.avatarImageView.kf_setImageWithURL(NSURL(string: comment.avatar!)!, placeholderImage: UIImage(named: "Editor_Profile_Avatar"))
            self.userNameLabel.text = comment.author!
            self.contentLabel.text = comment.content!
            self.zanBtn.setTitle(" \(comment.likes!)", forState: .Normal)
        }
    }
    override func awakeFromNib() {
        super.awakeFromNib()
        self.avatarImageView.layer.cornerRadius = self.avatarImageView.width/2
        self.avatarImageView.layer.masksToBounds = true
        zanBtn.buttonTitleWithImageAlignment = UIButtonTitleWithImageAlignmentLeft
        zanBtn.imgTextDistance = 10
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
