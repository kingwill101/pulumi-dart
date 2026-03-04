// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_healthcareapis_get_workspace_private_endpoint_connection_args_doc}
/// Arguments for getWorkspacePrivateEndpointConnection.
/// {@endtemplate}
/// {@macro pulumi_healthcareapis_get_workspace_private_endpoint_connection_args_doc}
class GetWorkspacePrivateEndpointConnectionArgs {
  /// The name of the private endpoint connection associated with the Azure resource
  final pulumi.Input<String> privateEndpointConnectionName;

  /// The name of the resource group that contains the service instance.
  final pulumi.Input<String> resourceGroupName;

  /// The name of workspace resource.
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetWorkspacePrivateEndpointConnectionArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource
  /// [resourceGroupName] The name of the resource group that contains the service instance.
  /// [workspaceName] The name of workspace resource.
  GetWorkspacePrivateEndpointConnectionArgs({
    required this.privateEndpointConnectionName,
    required this.resourceGroupName,
    required this.workspaceName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'privateEndpointConnectionName': privateEndpointConnectionName,
      'resourceGroupName': resourceGroupName,
      'workspaceName': workspaceName,
    };
  }

  factory GetWorkspacePrivateEndpointConnectionArgs.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetWorkspacePrivateEndpointConnectionArgs(
      privateEndpointConnectionName: pulumi.Input.fromValue(
        map['privateEndpointConnectionName'] as String,
      ),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      workspaceName: pulumi.Input.fromValue(map['workspaceName'] as String),
    );
  }
}
