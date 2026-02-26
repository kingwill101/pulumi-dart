// ignore_for_file: unused_element, unnecessary_cast

/// Exact product price.
class GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice {
  /// Optional. Display price of the product.
  final double? displayPrice;

  /// Optional. Price of the product without any discount. If zero, by default set to be the 'displayPrice'.
  final double? originalPrice;

  GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice({
    this.displayPrice,
    this.originalPrice,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final displayPriceValue = displayPrice;
    if (displayPriceValue != null) {
      map['displayPrice'] = displayPriceValue;
    }
    final originalPriceValue = originalPrice;
    if (originalPriceValue != null) {
      map['originalPrice'] = originalPriceValue;
    }
    return map;
  }

  factory GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudRecommendationengineV1beta1ProductCatalogItemExactPrice(
      displayPrice:
          map['displayPrice'] == null ? null : map['displayPrice'] as double,
      originalPrice:
          map['originalPrice'] == null ? null : map['originalPrice'] as double,
    );
  }
}
