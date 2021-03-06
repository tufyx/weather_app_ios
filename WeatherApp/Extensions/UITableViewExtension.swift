//
//  UITableViewExtension.swift
//  WeatherApp
//
//  Created by Tufyx on 18/06/2017.
//  Copyright © 2017 tufyx. All rights reserved.
//

import Foundation
import UIKit

extension UITableView {
    
    final func dequeueReusableCell<T: UITableViewCell>(for indexPath: IndexPath, cellType: T.Type = T.self) -> T where T: ReusableProtocol {
        guard let cell = self.dequeueReusableCell(withIdentifier: cellType.reuseIdentifier, for: indexPath) as? T else {
            fatalError("Could not deque cell with identifier \(cellType.reuseIdentifier)")
        }
        return cell
    }
    
}

extension UIStoryboard {
    final func instantiateViewController<T: UIViewController>(ofType storyboardType: T.Type = T.self) -> T where T: ReusableProtocol {
        guard let cell = self.instantiateViewController(withIdentifier: storyboardType.reuseIdentifier) as? T else {
            fatalError("Could not instantiate storyboard with ty \(storyboardType.reuseIdentifier)")
        }
        return cell
    }
}
