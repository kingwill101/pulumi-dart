// ignore_for_file: unused_element, unnecessary_cast

import 'commitment_quota_response.dart';

/// Cognitive Services account commitment period.
class CommitmentPeriodResponse {
  /// Commitment period commitment count.
  final int? count;
  /// Commitment period end date.
  final String endDate;
  /// Cognitive Services account commitment quota.
  final CommitmentQuotaResponse quota;
  /// Commitment period start date.
  final String startDate;
  /// Commitment period commitment tier.
  final String? tier;

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
      'quota': quota.toMap(),
      'startDate': startDate,
      'tier': ?tier,
    };
  }

  factory CommitmentPeriodResponse.fromMap(Map<String, dynamic> map) {
    return CommitmentPeriodResponse(
      count: map['count'] == null ? null : map['count'] as int,
      endDate: map['endDate'] as String,
      quota: CommitmentQuotaResponse.fromMap((map['quota'] as Map).cast<String, dynamic>()),
      startDate: map['startDate'] as String,
      tier: map['tier'] == null ? null : map['tier'] as String,
    );
  }
}

