// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class Price {
  final pulumi.Input<double>? amount;
  /// The ISO 4217 3-letter currency code for the currency used by this purchase record.
  final pulumi.Input<String>? currencyCode;

  /// Creates a new [Price].
  /// [amount] Optional.
  /// [currencyCode] The ISO 4217 3-letter currency code for the currency used by this purchase record.
  Price({
    this.amount,
    this.currencyCode,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'amount': ?amount,
      'currencyCode': ?currencyCode,
    };
  }

  factory Price.fromMap(Map<String, dynamic> map) {
    return Price(
      amount: map['amount'] == null ? null : (map['amount'] as double).input(),
      currencyCode: map['currencyCode'] == null ? null : (map['currencyCode'] as String).input(),
    );
  }
}

