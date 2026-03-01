// ignore_for_file: unused_element, unnecessary_cast


/// Commitment towards the benefit.
class Commitment {
  final double? amount;
  /// The ISO 4217 3-letter currency code for the currency used by this purchase record.
  final String? currencyCode;
  /// The grain of the commitment.
  final String? grain;

  /// Creates a new [Commitment].
  /// [amount] Optional.
  /// [currencyCode] The ISO 4217 3-letter currency code for the currency used by this purchase record.
  /// [grain] The grain of the commitment.
  Commitment({
    this.amount,
    this.currencyCode,
    this.grain,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'currencyCode': ?currencyCode,
      'grain': ?grain,
    };
  }

  factory Commitment.fromMap(Map<String, dynamic> map) {
    return Commitment(
      amount: map['amount'] == null ? null : map['amount'] as double,
      currencyCode: map['currencyCode'] == null ? null : map['currencyCode'] as String,
      grain: map['grain'] == null ? null : map['grain'] as String,
    );
  }
}

