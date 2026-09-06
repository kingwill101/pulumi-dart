// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_notebook_workspace_args_doc}
/// The set of arguments for NotebookWorkspace.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_notebook_workspace_args_doc}
class NotebookWorkspaceArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the notebook workspace resource.
  final pulumi.Input<String?>? notebookWorkspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [NotebookWorkspaceArgs].
  /// [accountName] Cosmos DB database account name.
  /// [notebookWorkspaceName] The name of the notebook workspace resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  const NotebookWorkspaceArgs({
    required this.accountName,
    this.notebookWorkspaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'notebookWorkspaceName': ?notebookWorkspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory NotebookWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return NotebookWorkspaceArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      notebookWorkspaceName: (() { final guardedValue = map['notebookWorkspaceName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}
