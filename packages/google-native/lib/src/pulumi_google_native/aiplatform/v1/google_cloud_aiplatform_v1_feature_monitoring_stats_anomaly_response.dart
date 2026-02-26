// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_feature_stats_anomaly_response.dart';

/// A list of historical SnapshotAnalysis or ImportFeaturesAnalysis stats requested by user, sorted by FeatureStatsAnomaly.start_time descending.
class GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse {
  /// The stats and anomalies generated at specific timestamp.
  final GoogleCloudAiplatformV1FeatureStatsAnomalyResponse featureStatsAnomaly;

  /// The objective for each stats.
  final String objective;

  GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse({
    required this.featureStatsAnomaly,
    required this.objective,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['featureStatsAnomaly'] = featureStatsAnomaly.toMap();
    map['objective'] = objective;
    return map;
  }

  factory GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeatureMonitoringStatsAnomalyResponse(
      featureStatsAnomaly:
          GoogleCloudAiplatformV1FeatureStatsAnomalyResponse.fromMap(
              (map['featureStatsAnomaly'] as Map).cast<String, dynamic>()),
      objective: map['objective'] as String,
    );
  }
}
