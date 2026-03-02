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
    required this.apiLinkId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.tagId,
    required this.workspaceId,
  });

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
      apiLinkId: (map['apiLinkId'] as String).input(),
      resourceGroupName: (map['resourceGroupName'] as String).input(),
      serviceName: (map['serviceName'] as String).input(),
      tagId: (map['tagId'] as String).input(),
      workspaceId: (map['workspaceId'] as String).input(),
    );
  }
}

