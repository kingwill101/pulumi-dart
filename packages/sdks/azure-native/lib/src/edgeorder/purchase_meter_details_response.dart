// ignore_for_file: unused_element, unnecessary_cast


/// Billing type Purchase meter details.
class PurchaseMeterDetailsResponse {
  /// Represents billing type.
  /// Expected value is 'Purchase'.
  final String billingType;
  /// Charging type.
  final String chargingType;
  /// Billing unit applicable for Pav2 billing.
  final double multiplier;
  /// Product Id.
  final String productId;
  /// Sku Id.
  final String skuId;
  /// Term Id.
  final String termId;

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
      billingType: map['billingType'] as String,
      chargingType: map['chargingType'] as String,
      multiplier: map['multiplier'] as double,
      productId: map['productId'] as String,
      skuId: map['skuId'] as String,
      termId: map['termId'] as String,
    );
  }
}

