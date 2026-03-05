// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cosmosdb_get_notebook_workspace_args_doc}
/// Arguments for getNotebookWorkspace.
/// {@endtemplate}
/// {@macro pulumi_cosmosdb_get_notebook_workspace_args_doc}
class GetNotebookWorkspaceArgs {
  /// Cosmos DB database account name.
  final pulumi.Input<String> accountName;
  /// The name of the notebook workspace resource.
  final pulumi.Input<String> notebookWorkspaceName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Creates a new [GetNotebookWorkspaceArgs].
  /// [accountName] Cosmos DB database account name.
  /// [notebookWorkspaceName] The name of the notebook workspace resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  GetNotebookWorkspaceArgs({
    required this.accountName,
    required this.notebookWorkspaceName,
    required this.resourceGroupName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'notebookWorkspaceName': notebookWorkspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNotebookWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNotebookWorkspaceArgs(
      accountName: pulumi.Input.fromValue(map['accountName'] as String),
      notebookWorkspaceName: pulumi.Input.fromValue(map['notebookWorkspaceName'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
    );
  }
}

