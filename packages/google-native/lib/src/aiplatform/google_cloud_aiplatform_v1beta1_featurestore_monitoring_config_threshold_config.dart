// ignore_for_file: unused_element, unnecessary_cast

/// The config for Featurestore Monitoring threshold.
class GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig {
  /// Specify a threshold value that can trigger the alert. 1. For categorical feature, the distribution distance is calculated by L-inifinity norm. 2. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature.
  final double? value;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig].
  /// [value] Specify a threshold value that can trigger the alert. 1. For categorical feature, the distribution distance is calculated by L-inifinity norm. 2. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature.
  GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig({
    this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final valueValue = value;
    if (valueValue != null) {
      map['value'] = valueValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigThresholdConfig(
      value: map['value'] == null ? null : map['value'] as double,
    );
  }
}
