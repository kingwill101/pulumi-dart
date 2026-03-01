// ignore_for_file: unused_element, unnecessary_cast


/// Items in the MarketSetPrices array.
class MarketSetPricesItems {
  /// The currency of the locked price value. Validation: Required. Must be a valid ISO 4217 3-letter currency code.
  final String currency;
  final List<String> markets;
  /// The locked price for the priceable node. Validation: Required. Must be greater than or equal to 0. If the case of billing plans. This represents the price for each cycle charge.
  final double value;

  /// Creates a new [MarketSetPricesItems].
  /// [currency] The currency of the locked price value. Validation: Required. Must be a valid ISO 4217 3-letter currency code.
  /// [markets] Required.
  /// [value] The locked price for the priceable node. Validation: Required. Must be greater than or equal to 0. If the case of billing plans. This represents the price for each cycle charge.
  MarketSetPricesItems({
    required this.currency,
    required this.markets,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'currency': currency,
      'markets': markets,
      'value': value,
    };
  }

  factory MarketSetPricesItems.fromMap(Map<String, dynamic> map) {
    return MarketSetPricesItems(
      currency: map['currency'] as String,
      markets: (map['markets'] as List).cast<String>(),
      value: map['value'] as double,
    );
  }
}

