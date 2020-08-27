//
//  ViewController.swift
//  AppList
//
//  Created by COTEMIG on 26/08/20.
//  Copyright © 2020 Cotemig. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    @IBOutlet weak var tableview: UITableView!
    
    

    override func viewDidLoad() {
        super.viewDidLoad()
        tableview.dataSource = self
        // Do any additional setup after loading the view.
    }


    @IBAction func AddTask(_ sender: Any) {
    let alert = UIAlertController(title: "Nova tarefa", message: "Adicione uma nova tarefa", preferredStyle: .actionSheet)
        
        let salvar = UIAlertAction(title: "Salvar", style: .default) { (action) in
            <#code#>
        }
        let cancelar = UIAlertAction(title: "Cancelar", style: .destructive) { (action) in
            <#code#>
        }
        
        
        alert.addTextField()
        
    alert.addAction(salvar)
    alert.addAction(cancelar)
        
        present(alert, animated: true)
    }
}

extension ViewController: UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath )
        cell.textLabel?.text = "Tarefas \(indexPath.row)"
        return cell
    }
    
    
}

