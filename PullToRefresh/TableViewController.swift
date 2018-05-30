//
//  TableViewController.swift
//  PullToRefresh
//
//  Created by Son on 5/17/18.
//  Copyright © 2018 Son. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    var alphabet = ["A","B","C","D","E","F","G","H","I"]
    var isAscending = true

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let refreshControll =  UIRefreshControl()
        refreshControll.addTarget(self, action:  #selector(sortArray), for: .valueChanged)
        self.refreshControl = refreshControll
        
        

    }
   
    @objc func sortArray() {
        let sortedAlphabet = alphabet.reversed()
        
        for (index, element) in sortedAlphabet.enumerated() {
            alphabet[index] = element
            
        }
        
        tableView.reloadData()
        refreshControl?.endRefreshing()
    }

    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }



    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return alphabet.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        cell.textLabel?.text = alphabet[indexPath.row]


        return cell
    }
    

    /*
    // Override to support conditional editing of the table view.1
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
