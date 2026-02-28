// ignore_for_file: unused_element, unnecessary_cast

/// The price information of a Product.
class GoogleCloudRetailV2alphaPriceInfo {
  /// The costs associated with the sale of a particular product. Used for gross profit reporting. * Profit = price - cost Google Merchant Center property [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  final double? cost;

  /// The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html). If this field is an unrecognizable currency code, an INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the same Product.primary_product_id must share the same currency_code. Otherwise, a FAILED_PRECONDITION error is returned.
  final String? currencyCode;

  /// Price of the product without any discount. If zero, by default set to be the price. If set, original_price should be greater than or equal to price, otherwise an INVALID_ARGUMENT error is thrown.
  final double? originalPrice;

  /// Price of the product. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371). Schema.org property [Offer.price](https://schema.org/price).
  final double? price;

  /// The timestamp when the price starts to be effective. This can be set as a future timestamp, and the price is only used for search after price_effective_time. If so, the original_price must be set and original_price is used before price_effective_time. Do not set if price is always effective because it will cause additional latency during search.
  final String? priceEffectiveTime;

  /// The timestamp when the price stops to be effective. The price is used for search before price_expire_time. If this field is set, the original_price must be set and original_price is used after price_expire_time. Do not set if price is always effective because it will cause additional latency during search.
  final String? priceExpireTime;

  /// Creates a new [GoogleCloudRetailV2alphaPriceInfo].
  /// [cost] The costs associated with the sale of a particular product. Used for gross profit reporting. * Profit = price - cost Google Merchant Center property [cost_of_goods_sold](https://support.google.com/merchants/answer/9017895).
  /// [currencyCode] The 3-letter currency code defined in [ISO 4217](https://www.iso.org/iso-4217-currency-codes.html). If this field is an unrecognizable currency code, an INVALID_ARGUMENT error is returned. The Product.Type.VARIANT Products with the same Product.primary_product_id must share the same currency_code. Otherwise, a FAILED_PRECONDITION error is returned.
  /// [originalPrice] Price of the product without any discount. If zero, by default set to be the price. If set, original_price should be greater than or equal to price, otherwise an INVALID_ARGUMENT error is thrown.
  /// [price] Price of the product. Google Merchant Center property [price](https://support.google.com/merchants/answer/6324371). Schema.org property [Offer.price](https://schema.org/price).
  /// [priceEffectiveTime] The timestamp when the price starts to be effective. This can be set as a future timestamp, and the price is only used for search after price_effective_time. If so, the original_price must be set and original_price is used before price_effective_time. Do not set if price is always effective because it will cause additional latency during search.
  /// [priceExpireTime] The timestamp when the price stops to be effective. The price is used for search before price_expire_time. If this field is set, the original_price must be set and original_price is used after price_expire_time. Do not set if price is always effective because it will cause additional latency during search.
  GoogleCloudRetailV2alphaPriceInfo({
    this.cost,
    this.currencyCode,
    this.originalPrice,
    this.price,
    this.priceEffectiveTime,
    this.priceExpireTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final costValue = cost;
    if (costValue != null) {
      map['cost'] = costValue;
    }
    final currencyCodeValue = currencyCode;
    if (currencyCodeValue != null) {
      map['currencyCode'] = currencyCodeValue;
    }
    final originalPriceValue = originalPrice;
    if (originalPriceValue != null) {
      map['originalPrice'] = originalPriceValue;
    }
    final priceValue = price;
    if (priceValue != null) {
      map['price'] = priceValue;
    }
    final priceEffectiveTimeValue = priceEffectiveTime;
    if (priceEffectiveTimeValue != null) {
      map['priceEffectiveTime'] = priceEffectiveTimeValue;
    }
    final priceExpireTimeValue = priceExpireTime;
    if (priceExpireTimeValue != null) {
      map['priceExpireTime'] = priceExpireTimeValue;
    }
    return map;
  }

  factory GoogleCloudRetailV2alphaPriceInfo.fromMap(Map<String, dynamic> map) {
    return GoogleCloudRetailV2alphaPriceInfo(
      cost: map['cost'] == null ? null : map['cost'] as double,
      currencyCode:
          map['currencyCode'] == null ? null : map['currencyCode'] as String,
      originalPrice:
          map['originalPrice'] == null ? null : map['originalPrice'] as double,
      price: map['price'] == null ? null : map['price'] as double,
      priceEffectiveTime: map['priceEffectiveTime'] == null
          ? null
          : map['priceEffectiveTime'] as String,
      priceExpireTime: map['priceExpireTime'] == null
          ? null
          : map['priceExpireTime'] as String,
    );
  }
}
