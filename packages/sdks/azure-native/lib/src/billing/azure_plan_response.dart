// ignore_for_file: unused_element, unnecessary_cast


/// Details of the Azure plan.
class AzurePlanResponse {
  /// The ID that uniquely identifies a product.
  final String? productId;
  /// The sku description.
  final String? skuDescription;
  /// The ID that uniquely identifies a sku.
  final String? skuId;

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
      productId: map['productId'] == null ? null : map['productId'] as String,
      skuDescription: map['skuDescription'] == null ? null : map['skuDescription'] as String,
      skuId: map['skuId'] == null ? null : map['skuId'] as String,
    );
  }
}

