// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The SKU recommendation summary.
class SkuRecommendationSummaryResponse {
  /// Number of blocker issues to fix before migrating this database to the target platform.
  final pulumi.Input<int?>? numOfBlockerIssues;
  /// The target recommendation Status for this database.
  final pulumi.Input<String?>? recommendationStatus;

  /// Creates a new [SkuRecommendationSummaryResponse].
  /// [numOfBlockerIssues] Number of blocker issues to fix before migrating this database to the target platform.
  /// [recommendationStatus] The target recommendation Status for this database.
  const SkuRecommendationSummaryResponse({
    this.numOfBlockerIssues,
    this.recommendationStatus,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'numOfBlockerIssues': ?numOfBlockerIssues,
      'recommendationStatus': ?recommendationStatus,
    };
  }

  factory SkuRecommendationSummaryResponse.fromMap(Map<String, dynamic> map) {
    return SkuRecommendationSummaryResponse(
      numOfBlockerIssues: (() { final guardedValue = map['numOfBlockerIssues']; if (guardedValue == null) return null; return pulumi.Input.fromValue(((value) { final number = value as num; final integer = number.toInt(); if (number != integer) { throw FormatException('Expected an integer, got $number.'); } return integer; })(guardedValue)); })(),
      recommendationStatus: (() { final guardedValue = map['recommendationStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
