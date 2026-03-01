// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_tag_api_link_args_doc}
/// Arguments for getWorkspaceTagApiLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_tag_api_link_args_doc}
class GetWorkspaceTagApiLinkArgs {
  /// Tag-API link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> apiLinkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceTagApiLinkArgs].
  /// [apiLinkId] Tag-API link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceTagApiLinkArgs({
    required pulumi.Output<String> apiLinkId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> tagId,
    required pulumi.Output<String> workspaceId,
  }) :
      apiLinkId = pulumi.Input.asInput<String>(apiLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiLinkId': apiLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceTagApiLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTagApiLinkArgs(
      apiLinkId: pulumi.Output.create<String>(map['apiLinkId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      tagId: pulumi.Output.create<String>(map['tagId'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

