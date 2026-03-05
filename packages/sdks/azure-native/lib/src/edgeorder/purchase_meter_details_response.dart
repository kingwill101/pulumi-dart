// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Billing type Purchase meter details.
class PurchaseMeterDetailsResponse {
  /// Represents billing type.
  /// Expected value is 'Purchase'.
  final pulumi.Input<String> billingType;
  /// Charging type.
  final pulumi.Input<String> chargingType;
  /// Billing unit applicable for Pav2 billing.
  final pulumi.Input<double> multiplier;
  /// Product Id.
  final pulumi.Input<String> productId;
  /// Sku Id.
  final pulumi.Input<String> skuId;
  /// Term Id.
  final pulumi.Input<String> termId;

  /// Creates a new [PurchaseMeterDetailsResponse].
  /// [billingType] Represents billing type.
  /// [chargingType] Charging type.
  /// [multiplier] Billing unit applicable for Pav2 billing.
  /// [productId] Product Id.
  /// [skuId] Sku Id.
  /// [termId] Term Id.
  PurchaseMeterDetailsResponse({
    required this.billingType,
    required this.chargingType,
    required this.multiplier,
    required this.productId,
    required this.skuId,
    required this.termId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'billingType': billingType,
      'chargingType': chargingType,
      'multiplier': multiplier,
      'productId': productId,
      'skuId': skuId,
      'termId': termId,
    };
  }

  factory PurchaseMeterDetailsResponse.fromMap(Map<String, dynamic> map) {
    return PurchaseMeterDetailsResponse(
      billingType: pulumi.Input.fromValue(map['billingType'] as String),
      chargingType: pulumi.Input.fromValue(map['chargingType'] as String),
      multiplier: pulumi.Input.fromValue(map['multiplier'] as double),
      productId: pulumi.Input.fromValue(map['productId'] as String),
      skuId: pulumi.Input.fromValue(map['skuId'] as String),
      termId: pulumi.Input.fromValue(map['termId'] as String),
    );
  }
}

