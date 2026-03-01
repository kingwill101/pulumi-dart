// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_api_release_args_doc}
/// The set of arguments for WorkspaceApiRelease.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_api_release_args_doc}
class WorkspaceApiReleaseArgs {
  /// Identifier of the API the release belongs to.
  final pulumi.Input<String> apiId;
  /// Release Notes
  final pulumi.Input<String>? notes;
  /// Release identifier within an API. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? releaseId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceApiReleaseArgs].
  /// [apiId] Identifier of the API the release belongs to.
  /// [notes] Release Notes
  /// [releaseId] Release identifier within an API. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  WorkspaceApiReleaseArgs({
    required String apiId,
    String? notes,
    String? releaseId,
    required String resourceGroupName,
    required String serviceName,
    required String workspaceId,
  }) :
      apiId = pulumi.Input.asInput<String>(apiId),
      notes = pulumi.Input.asOptionalInput<String>(notes),
      releaseId = pulumi.Input.asOptionalInput<String>(releaseId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiId': apiId,
      'notes': ?notes,
      'releaseId': ?releaseId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceApiReleaseArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceApiReleaseArgs(
      apiId: map['apiId'] as String,
      notes: map['notes'] == null ? null : map['notes'] as String,
      releaseId: map['releaseId'] == null ? null : map['releaseId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

