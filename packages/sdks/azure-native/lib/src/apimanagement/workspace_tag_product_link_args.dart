// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_workspace_tag_product_link_args_doc}
/// The set of arguments for WorkspaceTagProductLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_workspace_tag_product_link_args_doc}
class WorkspaceTagProductLinkArgs {
  /// Full resource Id of a product.
  final pulumi.Input<String> productId;
  /// Tag-product link identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String?>? productLinkId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;
  /// Workspace identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> workspaceId;

  /// Creates a new [WorkspaceTagProductLinkArgs].
  /// [productId] Full resource Id of a product.
  /// [productLinkId] Tag-product link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  /// [workspaceId] Workspace identifier. Must be unique in the current API Management service instance.
  const WorkspaceTagProductLinkArgs({
    required this.productId,
    this.productLinkId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.tagId,
    required this.workspaceId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'productLinkId': ?productLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
      'workspaceId': workspaceId,
    };
  }

  factory WorkspaceTagProductLinkArgs.fromMap(Map<String, dynamic> map) {
    return WorkspaceTagProductLinkArgs(
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productLinkId: (() { final guardedValue = map['productLinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
      workspaceId: pulumi.Input.fromValue(map['workspaceId'] as String),
    );
  }
}
