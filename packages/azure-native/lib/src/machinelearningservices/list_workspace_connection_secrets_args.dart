// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_list_workspace_connection_secrets_args_doc}
/// Arguments for listWorkspaceConnectionSecrets.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_list_workspace_connection_secrets_args_doc}
class ListWorkspaceConnectionSecretsArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [ListWorkspaceConnectionSecretsArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  ListWorkspaceConnectionSecretsArgs({
    required String connectionName,
    required String resourceGroupName,
    required String workspaceName,
  }) :
      connectionName = pulumi.Input.asInput<String>(connectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': connectionName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory ListWorkspaceConnectionSecretsArgs.fromMap(Map<String, dynamic> map) {
    return ListWorkspaceConnectionSecretsArgs(
      connectionName: map['connectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

