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
    pulumi.Output<String>? connectionName,
    required pulumi.Output<AADAuthTypeWorkspaceConnectionProperties> properties,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      connectionName = pulumi.Input.asOptionalInput<String>(connectionName),
      properties = pulumi.Input.asInput<AADAuthTypeWorkspaceConnectionProperties>(properties),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

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
      connectionName: map['connectionName'] == null ? null : pulumi.Output.create<String>(map['connectionName'] as String),
      properties: pulumi.Output.create<AADAuthTypeWorkspaceConnectionProperties>(AADAuthTypeWorkspaceConnectionProperties.fromMap((map['properties'] as Map).cast<String, dynamic>())),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

