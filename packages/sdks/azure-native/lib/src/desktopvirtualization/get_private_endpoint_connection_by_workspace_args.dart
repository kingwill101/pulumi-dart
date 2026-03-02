// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_desktopvirtualization_get_private_endpoint_connection_by_workspace_args_doc}
/// Arguments for getPrivateEndpointConnectionByWorkspace.
/// {@endtemplate}
/// {@macro pulumi_desktopvirtualization_get_private_endpoint_connection_by_workspace_args_doc}
class GetPrivateEndpointConnectionByWorkspaceArgs {
  /// The name of the private endpoint connection associated with the Azure resource.
  final pulumi.Input<String> privateEndpointConnectionName;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the workspace
  final pulumi.Input<String> workspaceName;

  /// Creates a new [GetPrivateEndpointConnectionByWorkspaceArgs].
  /// [privateEndpointConnectionName] The name of the private endpoint connection associated with the Azure resource.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [workspaceName] The name of the workspace
  GetPrivateEndpointConnectionByWorkspaceArgs({
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

  factory GetPrivateEndpointConnectionByWorkspaceArgs.fromMap(Map<String, dynamic> map) {
    return GetPrivateEndpointConnectionByWorkspaceArgs(
      privateEndpointConnectionName: (map['privateEndpointConnectionName'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      workspaceName: (map['workspaceName'] as String).input(),
    );
  }
}

