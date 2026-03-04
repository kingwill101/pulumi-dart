// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cognitive Services account commitment quota.
class CommitmentQuotaResponse {
  /// Commitment quota quantity.
  final pulumi.Input<double>? quantity;

  /// Commitment quota unit.
  final pulumi.Input<String>? unit;

  /// Creates a new [CommitmentQuotaResponse].
  /// [quantity] Commitment quota quantity.
  /// [unit] Commitment quota unit.
  CommitmentQuotaResponse({this.quantity, this.unit});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'quantity': ?quantity, 'unit': ?unit};
  }

  factory CommitmentQuotaResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentQuotaResponse(
      quantity: (() {
        final guardedValue = map['quantity'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as double);
      })(),
      unit: (() {
        final guardedValue = map['unit'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
