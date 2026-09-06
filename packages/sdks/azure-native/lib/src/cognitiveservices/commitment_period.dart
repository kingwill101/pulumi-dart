// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cognitive Services account commitment period.
class CommitmentPeriod {
  /// Commitment period commitment count.
  final pulumi.Input<int?>? count;
  /// Commitment period commitment tier.
  final pulumi.Input<String?>? tier;

  /// Creates a new [CommitmentPeriod].
  /// [count] Commitment period commitment count.
  /// [tier] Commitment period commitment tier.
  const CommitmentPeriod({
    this.count,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'tier': ?tier,
    };
  }

  factory CommitmentPeriod.fromMap(Map<String, dynamic> map) {
    return CommitmentPeriod(
      count: (() { final guardedValue = map['count']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      tier: (() { final guardedValue = map['tier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
