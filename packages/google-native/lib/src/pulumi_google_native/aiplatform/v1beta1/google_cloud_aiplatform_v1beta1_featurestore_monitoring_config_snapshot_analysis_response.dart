// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of the Featurestore's Snapshot Analysis Based Monitoring. This type of analysis generates statistics for each Feature based on a snapshot of the latest feature value of each entities every monitoring_interval.
class GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysisResponse {
  /// The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoring_interval for Features under it. Feature-level config: disabled = true indicates disabled regardless of the EntityType-level config; unset monitoring_interval indicates going with EntityType-level config; otherwise run snapshot analysis monitoring with monitoring_interval regardless of the EntityType-level config. Explicitly Disable the snapshot analysis based monitoring.
  final bool disabled;

  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value is rolled up to full day. If both monitoring_interval_days and the deprecated `monitoring_interval` field are set when creating/updating EntityTypes/Features, monitoring_interval_days will be used.
  final String monitoringInterval;

  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days.
  final int monitoringIntervalDays;

  /// Customized export features time window for snapshot analysis. Unit is one day. Default value is 3 weeks. Minimum value is 1 day. Maximum value is 4000 days.
  final int stalenessDays;

  GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysisResponse({
    required this.disabled,
    required this.monitoringInterval,
    required this.monitoringIntervalDays,
    required this.stalenessDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['disabled'] = disabled;
    map['monitoringInterval'] = monitoringInterval;
    map['monitoringIntervalDays'] = monitoringIntervalDays;
    map['stalenessDays'] = stalenessDays;
    return map;
  }

  factory GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysisResponse.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysisResponse(
      disabled: map['disabled'] as bool,
      monitoringInterval: map['monitoringInterval'] as String,
      monitoringIntervalDays: map['monitoringIntervalDays'] as int,
      stalenessDays: map['stalenessDays'] as int,
    );
  }
}
