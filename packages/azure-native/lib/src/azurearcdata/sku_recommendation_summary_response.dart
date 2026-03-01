// ignore_for_file: unused_element, unnecessary_cast


/// The SKU recommendation summary.
class SkuRecommendationSummaryResponse {
  /// Number of blocker issues to fix before migrating this database to the target platform.
  final int? numOfBlockerIssues;
  /// The target recommendation Status for this database.
  final String? recommendationStatus;

  /// Creates a new [SkuRecommendationSummaryResponse].
  /// [numOfBlockerIssues] Number of blocker issues to fix before migrating this database to the target platform.
  /// [recommendationStatus] The target recommendation Status for this database.
  SkuRecommendationSummaryResponse({
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
      numOfBlockerIssues: map['numOfBlockerIssues'] == null ? null : map['numOfBlockerIssues'] as int,
      recommendationStatus: map['recommendationStatus'] == null ? null : map['recommendationStatus'] as String,
    );
  }
}

