// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_backend_args_doc}
/// Arguments for getWorkspaceBackend.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_backend_args_doc}
class GetWorkspaceBackendArgs {
  /// Identifier of the Backend entity. Must be unique in the current API Management service instance.
  final pulumi.Input<String> backendId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceBackendArgs].
  /// [backendId] Identifier of the Backend entity. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceBackendArgs({
    required pulumi.Output<String> backendId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> workspaceId,
  }) :
      backendId = pulumi.Input.asInput<String>(backendId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'backendId': backendId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceBackendArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceBackendArgs(
      backendId: pulumi.Output.create<String>(map['backendId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

