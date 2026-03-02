// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'aadauth_type_workspace_connection_properties.dart';

/// {@template pulumi_machinelearningservices_workspace_connection_args_doc}
/// The set of arguments for WorkspaceConnection.
/// {@endtemplate}
/// {@macro pulumi_machinelearningservices_workspace_connection_args_doc}
class WorkspaceConnectionArgs {
  /// Friendly name of the workspace connection
  final pulumi.Input<String>? connectionName;
  final pulumi.Input<AADAuthTypeWorkspaceConnectionProperties> properties;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// Name of Azure Machine Learning workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [WorkspaceConnectionArgs].
  /// [connectionName] Friendly name of the workspace connection
  /// [properties] Required.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] Name of Azure Machine Learning workspace.
  WorkspaceConnectionArgs({
    this.connectionName,
    required this.properties,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionName': ?connectionName,
      'properties': pulumi.Input.mapInputValue<AADAuthTypeWorkspaceConnectionProperties, Map<String, dynamic>>(properties, (value) => value.toMap()),
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory WorkspaceConnectionArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceConnectionArgs(
      connectionName: map['connectionName'] == null ? null : (map['connectionName'] as String).input(),
      properties: (AADAuthTypeWorkspaceConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

