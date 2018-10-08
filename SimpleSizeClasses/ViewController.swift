//
//  ViewController.swift
//  SimpleSizeClasses
//
//  Created by vinods on 8/6/18.
//  Copyright © 2018 loylty. All rights reserved.
//

import UIKit
import ContactsUI

class ViewController: UIViewController,CNContactPickerDelegate {
 
 
 @IBOutlet weak var labelNumber: UILabel!
 
 override func viewDidLoad() {
  super.viewDidLoad()
  // Do any additional setup after loading the view, typically from a nib.
 }
 
 @IBAction func contacts(_ sender: Any) {
  
  let contactViewContrlr = CNContactPickerViewController()
  contactViewContrlr.delegate = self
  self.present(contactViewContrlr, animated: true, completion: nil)
  
 }
 
 func contactPicker(_ picker: CNContactPickerViewController, didSelect contacts: [CNContact]) {
  contacts.forEach { contact in
   for number in contact.phoneNumbers {
    let phoneNumber = number.value
    print("number is = \(phoneNumber)")
   }
  }
 }
 func contactPickerDidCancel(_ picker: CNContactPickerViewController) {
  print("Cancel Contact Picker")
 }
 
 
 override func didReceiveMemoryWarning() {
  super.didReceiveMemoryWarning()
  // Dispose of any resources that can be recreated.
 }


}

