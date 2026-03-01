// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_apimanagement_tag_by_product_args_doc}
/// The set of arguments for TagByProduct.
/// {@endtemplate}
/// {@macro pulumi_apimanagement_tag_by_product_args_doc}
class TagByProductArgs {
  /// Product identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String> productId;
  /// The name of the resource group. The name is case insensitive.
  final pulumi.Input<String> resourceGroupName;
  /// The name of the API Management service.
  final pulumi.Input<String> serviceName;
  /// Tag identifier. Must be unique in the current API Management service instance.
  final pulumi.Input<String>? tagId;

  /// Creates a new [TagByProductArgs].
  /// [productId] Product identifier. Must be unique in the current API Management service instance.
  /// [resourceGroupName] The name of the resource group. The name is case insensitive.
  /// [serviceName] The name of the API Management service.
  /// [tagId] Tag identifier. Must be unique in the current API Management service instance.
  TagByProductArgs({
    required String productId,
    required String resourceGroupName,
    required String serviceName,
    String? tagId,
  }) :
      productId = pulumi.Input.asInput<String>(productId),
      resourceGroupName = pulumi.Input.asInput<String>(resourceGroupName),
      serviceName = pulumi.Input.asInput<String>(serviceName),
      tagId = pulumi.Input.asOptionalInput<String>(tagId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': productId,
      'resourceGroupName': resourceGroupName,
      'serviceName': serviceName,
      'tagId': ?tagId,
    };
  }

  factory TagByProductArgs.fromMap(Map<String, dynamic> map) {
    return TagByProductArgs(
      productId: map['productId'] as String,
      resourceGroupName: map['resourceGroupName'] as String,
      serviceName: map['serviceName'] as String,
      tagId: map['tagId'] == null ? null : map['tagId'] as String,
    );
  }
}

