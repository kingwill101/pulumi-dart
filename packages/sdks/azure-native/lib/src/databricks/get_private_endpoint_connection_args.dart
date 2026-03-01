// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_databricks_get_private_endpoint_connection_args_doc}
/// Arguments for getPrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_databricks_get_private_endpoint_connection_args_doc}
class GetPrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetPrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace.
  GetPrivateEndpointConnectionArgs({
    required pulumi.Output<String> privateEndpointConnectionName,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> workspaceName,
  }) :
      privateEndpointConnectionName = pulumi.Input.asInput<String>(privateEndpointConnectionName),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      workspaceName = pulumi.Input.asInput<String>(workspaceName);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetPrivateEndpointConnectionArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Output.create<String>(map['privateEndpointConnectionName'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      workspaceName: pulumi.Output.create<String>(map['workspaceName'] as String),
    );
  }
}

