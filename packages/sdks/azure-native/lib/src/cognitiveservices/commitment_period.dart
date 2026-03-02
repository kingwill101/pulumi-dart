// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Cognitive Services account commitment period.
class CommitmentPeriod {
  /// Commitment period commitment count.
  final pulumi.Input<int>? count;
  /// Commitment period commitment tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [CommitmentPeriod].
  /// [count] Commitment period commitment count.
  /// [tier] Commitment period commitment tier.
  CommitmentPeriod({
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
      count: map['count'] == null ? null : (map['count'] as int).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

