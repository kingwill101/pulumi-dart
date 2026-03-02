// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Details of the Azure plan.
class AzurePlanResponse {
  /// The ID that uniquely identifies a product.
  final pulumi.Input<String>? productId;
  /// The sku description.
  final pulumi.Input<String>? skuDescription;
  /// The ID that uniquely identifies a sku.
  final pulumi.Input<String>? skuId;

  /// Creates a new [AzurePlanResponse].
  /// [productId] The ID that uniquely identifies a product.
  /// [skuDescription] The sku description.
  /// [skuId] The ID that uniquely identifies a sku.
  AzurePlanResponse({
    this.productId,
    this.skuDescription,
    this.skuId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': ?productId,
      'skuDescription': ?skuDescription,
      'skuId': ?skuId,
    };
  }

  factory AzurePlanResponse.fromMap(Map<String, dynamic> map) {
    return AzurePlanResponse(
      productId: map['productId'] == null ? null : (map['productId']! as String).input(),
      skuDescription: map['skuDescription'] == null ? null : (map['skuDescription']! as String).input(),
      skuId: map['skuId'] == null ? null : (map['skuId']! as String).input(),
    );
  }
}

