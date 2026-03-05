// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_tag_product_link_args_doc}
/// The set of arguments for TagProductLink.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_tag_product_link_args_doc}
class TagProductLinkArgs {
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

  /// Creates a new [TagProductLinkArgs].
  /// [productId] Full resource Id of a product.
  /// [productLinkId] Tag-product link identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  TagProductLinkArgs({
    required this.productId,
    this.productLinkId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.tagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'productLinkId': ?productLinkId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
    };
  }

  factory TagProductLinkArgs.fromMap(Map<String, dynamic> map) {
    return TagProductLinkArgs(
      productId: pulumi.Input.fromValue(map['productId'] as String),
      productLinkId: (() { final guardedValue = map['productLinkId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      resourceGroupName: pulumi.Input.fromValue(map['resourceGroupName'] as String),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
    );
  }
}

