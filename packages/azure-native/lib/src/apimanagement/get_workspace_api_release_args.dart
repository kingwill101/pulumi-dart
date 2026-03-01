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
  GetWorkspaceApiReleaseArgs({
    required String apiId,
    required String releaseId,
    required String resourceGroupName,
    required String serviceName,
    required String workspaceId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      releaseId = pulumi.Input.asInput<String>(releaseId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      apiId: map['apiId'] as String,
      releaseId: map['releaseId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

