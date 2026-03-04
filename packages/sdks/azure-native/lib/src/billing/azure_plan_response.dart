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
  AzurePlanResponse({this.productId, this.skuDescription, this.skuId});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'productId': ?productId,
      'skuDescription': ?skuDescription,
      'skuId': ?skuId,
    };
  }

  factory AzurePlanResponse.fromMap(Map<String, dynamic> map) {
    return AzurePlanResponse(
      productId: (() {
        final guardedValue = map['productId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuDescription: (() {
        final guardedValue = map['skuDescription'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      skuId: (() {
        final guardedValue = map['skuId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
