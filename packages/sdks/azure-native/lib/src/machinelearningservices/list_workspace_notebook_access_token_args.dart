// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_workspace_notebook_access_token_args_doc}
/// Arguments for listWorkspaceNotebookAccessToken.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_workspace_notebook_access_token_args_doc}
class ListWorkspaceNotebookAccessTokenArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListWorkspaceNotebookAccessTokenArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ListWorkspaceNotebookAccessTokenArgs({
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListWorkspaceNotebookAccessTokenArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return ListWorkspaceNotebookAccessTokenArgs(
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
