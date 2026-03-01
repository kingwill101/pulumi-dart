// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_machinelearningservices_get_workspace_connection_args_doc}
/// Arguments for getWorkspaceConnection.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_get_workspace_connection_args_doc}
class GetWorkspaceConnectionArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String> connectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspaceConnectionArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  GetWorkspaceConnectionArgs({
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

  factory GetWorkspaceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceConnectionArgs(
      connectionName: map['connectionName'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      workspaceName: map['workspaceName'] as String,
    );
  }
}

