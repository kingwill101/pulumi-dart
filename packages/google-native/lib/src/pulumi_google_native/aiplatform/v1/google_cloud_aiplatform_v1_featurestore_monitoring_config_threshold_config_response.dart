// ignore_for_file: unused_element, unnecessary_cast

/// The config for Featurestore Monitoring threshold.
class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse {
  /// Specify a threshold value that can trigger the alert. 1. For categorical feature, the distribution distance is calculated by L-inifinity norm. 2. For numerical feature, the distribution distance is calculated by Jensen–Shannon divergence. Each feature must have a non-zero threshold if they need to be monitored. Otherwise no alert will be triggered for that feature.
  final double value;

  GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse({
    required this.value,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['value'] = value;
    return map;
  }

  factory GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeaturestoreMonitoringConfigThresholdConfigResponse(
      value: map['value'] as double,
    );
  }
}
