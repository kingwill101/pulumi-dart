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
    required pulumi.Output<String> accountName,
    required pulumi.Output<String> notebookWorkspaceName,
    required pulumi.Output<String> resourceGroupName,
  }) :
      accountName = pulumi.Input.asInput<String>(accountName),
      notebookWorkspaceName = pulumi.Input.asInput<String>(notebookWorkspaceName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'accountName': accountName,
      'notebookWorkspaceName': notebookWorkspaceName,
      'resourceGroupName': resourceGroupName,
    };
  }

  factory GetNotebookWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetNotebookWorkspaceArgs(
      accountName: pulumi.Output.create<String>(map['accountName'] as String),
      notebookWorkspaceName: pulumi.Output.create<String>(map['notebookWorkspaceName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
    );
  }
}

