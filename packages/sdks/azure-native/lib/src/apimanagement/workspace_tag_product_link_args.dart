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
  final pulumi.Input<String>? productLinkId;
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
  WorkspaceTagProductLinkArgs({
    required pulumi.Output<String> productId,
    pulumi.Output<String>? productLinkId,
    required pulumi.Output<String> resourceGroupName,
    required pulumi.Output<String> serviceName,
    required pulumi.Output<String> tagId,
    required pulumi.Output<String> workspaceId,
  }) :
      productId = pulumi.Input.asInput<String>(productId),
      productLinkId = pulumi.Input.asOptionalInput<String>(productLinkId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asInput<String>(tagId),
      workspaceId = pulumi.Input.asInput<String>(workspaceId);

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
      productId: pulumi.Output.create<String>(map['productId'] as String),
      productLinkId: map['productLinkId'] == null ? null : pulumi.Output.create<String>(map['productLinkId'] as String),
      resourceGroupName: pulumi.Output.create<String>(map['resourceGroupName'] as String),
      serviceName: pulumi.Output.create<String>(map['serviceName'] as String),
      tagId: pulumi.Output.create<String>(map['tagId'] as String),
      workspaceId: pulumi.Output.create<String>(map['workspaceId'] as String),
    );
  }
}

