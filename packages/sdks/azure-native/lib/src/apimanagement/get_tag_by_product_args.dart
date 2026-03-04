// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_get_tag_by_product_args_doc}
/// Arguments for getTagByProduct.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_get_tag_by_product_args_doc}
class GetTagByProductArgs {
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;

  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;

  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;

  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> tagId;

  /// Creates a new [GetTagByProductArgs].
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  GetTagByProductArgs({
    required this.productId,
    required this.resourceGroupName,
    required this.serviceName,
    required this.tagId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': tagId,
    };
  }

  factory GetTagByProductArgs.fromMap(Map<String, dynamic> map) {
    return GetTagByProductArgs(
      productId: pulumi.Input.fromValue(map['productId'] as String),
      resourceGroupName: pulumi.Input.fromValue(
        map['resourceGroupName'] as String,
      ),
      serviceName: pulumi.Input.fromValue(map['serviceName'] as String),
      tagId: pulumi.Input.fromValue(map['tagId'] as String),
    );
  }
}
