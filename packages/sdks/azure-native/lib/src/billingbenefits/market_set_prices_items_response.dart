// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Items in the MarketSetPrices array.
class MarketSetPricesItemsResponse {
  /// The currency of the locked price value. Validation: Required. Must be a valid ISO 4217 3-letter currency code.
  final pulumi.Input<String> currency;
  final pulumi.Input<List<String>> markets;
  /// The locked price for the priceable node. Validation: Required. Must be greater than or equal to 0. If the case of billing plans. This represents the price for each cycle charge.
  final pulumi.Input<double> value;

  /// Creates a new [MarketSetPricesItemsResponse].
  /// [currency] The currency of the locked price value. Validation: Required. Must be a valid ISO 4217 3-letter currency code.
  /// [markets] Required.
  /// [value] The locked price for the priceable node. Validation: Required. Must be greater than or equal to 0. If the case of billing plans. This represents the price for each cycle charge.
  const MarketSetPricesItemsResponse({
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

  factory MarketSetPricesItemsResponse.fromMap(Map<String, dynamic> map) {
    return MarketSetPricesItemsResponse(
      currency: pulumi.Input.fromValue(map['currency'] as String),
      markets: pulumi.Input.fromValue((map['markets'] as List).cast<String>()),
      value: pulumi.Input.fromValue(map['value'] as double),
    );
  }
}

