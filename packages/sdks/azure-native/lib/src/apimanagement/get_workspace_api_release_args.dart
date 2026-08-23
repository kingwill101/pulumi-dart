// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_api_release_args_doc}
/// Arguments for getWorkspaceApiRelease.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_api_release_args_doc}
class GetWorkspaceApiReleaseArgs {
  /// API identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiId;
  /// Release identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String> releaseId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceApiReleaseArgs].
  /// [apiId] API identifier. Must be unique in the current API Management service instance.
  /// [releaseId] Release identifier within an API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  const GetWorkspaceApiReleaseArgs({
    required this.apiId,
    required this.releaseId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'releaseId': releaseId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceApiReleaseArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceApiReleaseArgs(
      apiId: pulumi.Input.fromValue(map['apiId'] as String),
      releaseId: pulumi.Input.fromValue(map['releaseId'] as String),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
