// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_workspace_tag_product_link_args_doc}
/// Arguments for getWorkspaceTagProductLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_workspace_tag_product_link_args_doc}
class GetWorkspaceTagProductLinkArgs {
  /// Tag-product link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productLinkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [GetWorkspaceTagProductLinkArgs].
  /// [productLinkId] Tag-product link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  GetWorkspaceTagProductLinkArgs({
    required String productLinkId,
    required String resourceGroupName,
    required String serviceName,
    required String tagId,
    required String workspaceId,
  }) :
      productLinkId = pulumi.Input.asInput<String>(productLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productLinkId': productLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
      'workspaceId': workspaceId,
    };
  }

  factory GetWorkspaceTagProductLinkArgs.fromMap(Map<String, dynamic> map) {
    return GetWorkspaceTagProductLinkArgs(
      productLinkId: map['productLinkId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagId: map['tagId'] as String,
      workspaceId: map['workspaceId'] as String,
    );
  }
}

