//
//  ViewController.swift
//  todoSwift
//
//  Created by ToruYoshifuji on 2021/04/03.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    @IBOutlet weak var tableView: UITableView!

    var todoList = [String]()

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func addButtonAction(_ sender: Any) {
        let alertController = UIAlertController(title: "Add ToDo", message: "ToDoを入力してください", preferredStyle: UIAlertController.Style.alert)
        alertController.addTextField(configurationHandler: nil)

        let okAction = UIAlertAction(title: "OK", style: UIAlertAction.Style.default) { (action: UIAlertAction) in
            // TODO: OK Action
        }
        alertController.addAction(okAction);

        let cancelButton = UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil);
        alertController.addAction(cancelButton);

        present(alertController, animated: true, completion: nil);
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return todoList.count;
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "tableCell", for: indexPath);
        let todoTitle = todoList[indexPath.row];
        cell.textLabel?.text = todoTitle;
        return cell;
    }
}

