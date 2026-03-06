// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment towards the benefit.
class Commitment {
  final pulumi.Input<double>? amount;
  /// The ISO 4217 3-letter currency code for the currency used by this purchase record.
  final pulumi.Input<String>? currencyCode;
  /// The grain of the commitment.
  final pulumi.Input<String>? grain;

  /// Creates a new [Commitment].
  /// [amount] Optional.
  /// [currencyCode] The ISO 4217 3-letter currency code for the currency used by this purchase record.
  /// [grain] The grain of the commitment.
  const Commitment({
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
      amount: (() { final guardedValue = map['amount']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
      currencyCode: (() { final guardedValue = map['currencyCode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      grain: (() { final guardedValue = map['grain']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

