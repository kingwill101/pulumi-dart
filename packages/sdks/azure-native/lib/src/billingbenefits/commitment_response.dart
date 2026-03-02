// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Commitment towards the benefit.
class CommitmentResponse {
  final pulumi.Input<double>? amount;
  /// The ISO 4217 3-letter currency code for the currency used by this purchase record.
  final pulumi.Input<String>? currencyCode;
  /// The grain of the commitment.
  final pulumi.Input<String>? grain;

  /// Creates a new [CommitmentResponse].
  /// [amount] Optional.
  /// [currencyCode] The ISO 4217 3-letter currency code for the currency used by this purchase record.
  /// [grain] The grain of the commitment.
  CommitmentResponse({
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

  factory CommitmentResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentResponse(
      amount: map['amount'] == null ? null : (map['amount']! as double).input(),
      currencyCode: map['currencyCode'] == null ? null : (map['currencyCode']! as String).input(),
      grain: map['grain'] == null ? null : (map['grain']! as String).input(),
    );
  }
}

