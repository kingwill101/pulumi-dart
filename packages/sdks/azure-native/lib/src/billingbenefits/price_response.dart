// ignore_for_file: unused_element, unnecessary_cast


class PriceResponse {
  final double? amount;
  /// The ISO 4217 3-letter currency code for the currency used by this purchase record.
  final String? currencyCode;

  /// Creates a new [PriceResponse].
  /// [amount] Optional.
  /// [currencyCode] The ISO 4217 3-letter currency code for the currency used by this purchase record.
  PriceResponse({
    this.amount,
    this.currencyCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'currencyCode': ?currencyCode,
    };
  }

  factory PriceResponse.fromMap(Map<String, dynamic> map) {
    return PriceResponse(
      amount: map['amount'] == null ? null : map['amount'] as double,
      currencyCode: map['currencyCode'] == null ? null : map['currencyCode'] as String,
    );
  }
}

