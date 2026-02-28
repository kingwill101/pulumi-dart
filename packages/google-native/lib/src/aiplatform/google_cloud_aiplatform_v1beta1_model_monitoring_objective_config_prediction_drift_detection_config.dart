// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1beta1_threshold_config.dart';

/// The config for Prediction data drift detection.
class GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig {
  /// Key is the feature name and value is the threshold. The threshold here is against attribution score distance between different time windows.
  final Map<String, String>? attributionScoreDriftThresholds;

  /// Drift anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  final GoogleCloudAiplatformV1beta1ThresholdConfig? defaultDriftThreshold;

  /// Key is the feature name and value is the threshold. If a feature needs to be monitored for drift, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between different time windws.
  final Map<String, String>? driftThresholds;

  /// Creates a new [GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig].
  /// [attributionScoreDriftThresholds] Key is the feature name and value is the threshold. The threshold here is against attribution score distance between different time windows.
  /// [defaultDriftThreshold] Drift anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  /// [driftThresholds] Key is the feature name and value is the threshold. If a feature needs to be monitored for drift, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between different time windws.
  GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig({
    this.attributionScoreDriftThresholds,
    this.defaultDriftThreshold,
    this.driftThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributionScoreDriftThresholdsValue =
        attributionScoreDriftThresholds;
    if (attributionScoreDriftThresholdsValue != null) {
      map['attributionScoreDriftThresholds'] =
          attributionScoreDriftThresholdsValue;
    }
    final defaultDriftThresholdValue = defaultDriftThreshold;
    if (defaultDriftThresholdValue != null) {
      map['defaultDriftThreshold'] = defaultDriftThresholdValue.toMap();
    }
    final driftThresholdsValue = driftThresholds;
    if (driftThresholdsValue != null) {
      map['driftThresholds'] = driftThresholdsValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1ModelMonitoringObjectiveConfigPredictionDriftDetectionConfig(
      attributionScoreDriftThresholds:
          map['attributionScoreDriftThresholds'] == null
              ? null
              : (map['attributionScoreDriftThresholds'] as Map)
                  .cast<String, String>(),
      defaultDriftThreshold: map['defaultDriftThreshold'] == null
          ? null
          : GoogleCloudAiplatformV1beta1ThresholdConfig.fromMap(
              (map['defaultDriftThreshold'] as Map).cast<String, dynamic>()),
      driftThresholds: map['driftThresholds'] == null
          ? null
          : (map['driftThresholds'] as Map).cast<String, String>(),
    );
  }
}
