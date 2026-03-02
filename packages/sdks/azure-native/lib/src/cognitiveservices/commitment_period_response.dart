// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'commitment_quota_response.dart';

/// Cognitive Services account commitment period.
class CommitmentPeriodResponse {
  /// Commitment period commitment count.
  final pulumi.Input<int>? count;
  /// Commitment period end date.
  final pulumi.Input<String> endDate;
  /// Cognitive Services account commitment quota.
  final pulumi.Input<CommitmentQuotaResponse> quota;
  /// Commitment period start date.
  final pulumi.Input<String> startDate;
  /// Commitment period commitment tier.
  final pulumi.Input<String>? tier;

  /// Creates a new [CommitmentPeriodResponse].
  /// [count] Commitment period commitment count.
  /// [endDate] Commitment period end date.
  /// [quota] Cognitive Services account commitment quota.
  /// [startDate] Commitment period start date.
  /// [tier] Commitment period commitment tier.
  CommitmentPeriodResponse({
    this.count,
    required this.endDate,
    required this.quota,
    required this.startDate,
    this.tier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'count': ?count,
      'endDate': endDate,
      'quota': pulumi.Input.mapInputValue<CommitmentQuotaResponse, Map<String, dynamic>>(quota, (value) => value.toMap()),
      'startDate': startDate,
      'tier': ?tier,
    };
  }

  factory CommitmentPeriodResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentPeriodResponse(
      count: map['count'] == null ? null : (map['count'] as int).input(),
      endDate: (map['endDate'] as String).input(),
      quota: (CommitmentQuotaResponse.fromMap((map['quota'] as Map).cast<String, dynamic>())).input(),
      startDate: (map['startDate'] as String).input(),
      tier: map['tier'] == null ? null : (map['tier'] as String).input(),
    );
  }
}

