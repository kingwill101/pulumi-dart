// ignore_for_file: unused_element, unnecessary_cast

/// Exact product price.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse {
  /// Optional. Display price of the product.
  final double displayPrice;

  /// Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  final double originalPrice;

  GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse({
    required this.displayPrice,
    required this.originalPrice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['displayPrice'] = displayPrice;
    map['originalPrice'] = originalPrice;
    return map;
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPriceResponse(
      displayPrice: map['displayPrice'] as double,
      originalPrice: map['originalPrice'] as double,
    );
  }
}
