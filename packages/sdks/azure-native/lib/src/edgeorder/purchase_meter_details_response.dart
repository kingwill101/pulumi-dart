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
      billingType: (map['billingType'] as String).input(),
      chargingType: (map['chargingType'] as String).input(),
      multiplier: (map['multiplier'] as double).input(),
      productId: (map['productId'] as String).input(),
      skuId: (map['skuId'] as String).input(),
      termId: (map['termId'] as String).input(),
    );
  }
}

