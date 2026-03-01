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
    required pulumi.Output<String> connectionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
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
      connectionName: pulumi.Output.create<String>(map['connectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

