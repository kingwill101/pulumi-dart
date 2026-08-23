// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class PriceResponse {
  final pulumi.Input<double>? amount;
  /// The ISO 4217 3-letter currency code for the currency used by this purchase record.
  final pulumi.Input<String>? currencyCode;

  /// Creates a new [PriceResponse].
  /// [amount] Optional.
  /// [currencyCode] The ISO 4217 3-letter currency code for the currency used by this purchase record.
  const PriceResponse({
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
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
