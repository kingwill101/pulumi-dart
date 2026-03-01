// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_api_version_set_args_doc}
/// Arguments for getWorkspaceApiVersionSet.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_api_version_set_args_doc}
class GetWorkspaceApiVersionSetArgs {
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Api Version Set identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> versionSetId;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceApiVersionSetArgs].
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [versionSetId] Api Version Set identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceApiVersionSetArgs({
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> versionSetId,
    required pulumi.Output<String> workspaceId,
  }) :
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      versionSetId = pulumi.Input.asInput<String>(versionSetId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'versionSetId': versionSetId,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceApiVersionSetArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceApiVersionSetArgs(
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      versionSetId: pulumi.Output.create<String>(map['versionSetId'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

