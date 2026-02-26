// ignore_for_file: unused_element, unnecessary_cast

import 'google_cloud_aiplatform_v1_threshold_config.dart';

/// The config for Training & Prediction data skew detection. It specifies the training dataset sources and the skew detection parameters.
class GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig {
  /// Key is the feature name and value is the threshold. The threshold here is against attribution score distance between the training and prediction feature.
  final Map<String, String>? attributionScoreSkewThresholds;

  /// Skew anomaly detection threshold used by all features. When the per-feature thresholds are not set, this field can be used to specify a threshold for all features.
  final GoogleCloudAiplatformV1ThresholdConfig? defaultSkewThreshold;

  /// Key is the feature name and value is the threshold. If a feature needs to be monitored for skew, a value threshold must be configured for that feature. The threshold here is against feature distribution distance between the training and prediction feature.
  final Map<String, String>? skewThresholds;

  GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig({
    this.attributionScoreSkewThresholds,
    this.defaultSkewThreshold,
    this.skewThresholds,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final attributionScoreSkewThresholdsValue = attributionScoreSkewThresholds;
    if (attributionScoreSkewThresholdsValue != null) {
      map['attributionScoreSkewThresholds'] =
          attributionScoreSkewThresholdsValue;
    }
    final defaultSkewThresholdValue = defaultSkewThreshold;
    if (defaultSkewThresholdValue != null) {
      map['defaultSkewThreshold'] = defaultSkewThresholdValue.toMap();
    }
    final skewThresholdsValue = skewThresholds;
    if (skewThresholdsValue != null) {
      map['skewThresholds'] = skewThresholdsValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1ModelMonitoringObjectiveConfigTrainingPredictionSkewDetectionConfig(
      attributionScoreSkewThresholds:
          map['attributionScoreSkewThresholds'] == null
              ? null
              : (map['attributionScoreSkewThresholds'] as Map)
                  .cast<String, String>(),
      defaultSkewThreshold: map['defaultSkewThreshold'] == null
          ? null
          : GoogleCloudAiplatformV1ThresholdConfig.fromMap(
              (map['defaultSkewThreshold'] as Map).cast<String, dynamic>()),
      skewThresholds: map['skewThresholds'] == null
          ? null
          : (map['skewThresholds'] as Map).cast<String, String>(),
    );
  }
}
