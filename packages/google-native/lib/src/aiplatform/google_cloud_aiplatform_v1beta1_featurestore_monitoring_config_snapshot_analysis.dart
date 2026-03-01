// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of the Featurestore's Snapshot Analysis Based Monitoring. This type of analysis generates statistics for each Feature based on a snapshot of the latest feature value of each entities every monitoring_interval.
class GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis {
  /// The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoring_interval for Features under it. Feature-level config: disabled = true indicates disabled regardless of the EntityType-level config; unset monitoring_interval indicates going with EntityType-level config; otherwise run snapshot analysis monitoring with monitoring_interval regardless of the EntityType-level config. Explicitly Disable the snapshot analysis based monitoring.
  final bool? disabled;

  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value is rolled up to full day. If both monitoring_interval_days and the deprecated `monitoring_interval` field are set when creating/updating EntityTypes/Features, monitoring_interval_days will be used.
  final String? monitoringInterval;

  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days.
  final int? monitoringIntervalDays;

  /// Customized export features time window for snapshot analysis. Unit is one day. Default value is 3 weeks. Minimum value is 1 day. Maximum value is 4000 days.
  final int? stalenessDays;

  /// Creates a new [GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis].
  /// [disabled] The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoring_interval for Features under it. Feature-level config: disabled = true indicates disabled regardless of the EntityType-level config; unset monitoring_interval indicates going with EntityType-level config; otherwise run snapshot analysis monitoring with monitoring_interval regardless of the EntityType-level config. Explicitly Disable the snapshot analysis based monitoring.
  /// [monitoringInterval] Configuration of the snapshot analysis based monitoring pipeline running interval. The value is rolled up to full day. If both monitoring_interval_days and the deprecated `monitoring_interval` field are set when creating/updating EntityTypes/Features, monitoring_interval_days will be used.
  /// [monitoringIntervalDays] Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days.
  /// [stalenessDays] Customized export features time window for snapshot analysis. Unit is one day. Default value is 3 weeks. Minimum value is 1 day. Maximum value is 4000 days.
  GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis({
    this.disabled,
    this.monitoringInterval,
    this.monitoringIntervalDays,
    this.stalenessDays,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'disabled': ?disabled,
      'monitoringInterval': ?monitoringInterval,
      'monitoringIntervalDays': ?monitoringIntervalDays,
      'stalenessDays': ?stalenessDays,
    };
  }

  factory GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis.fromMap(
    Map<String, dynamic> map,
  ) {
    return GoogleCloudAiplatformV1beta1FeaturestoreMonitoringConfigSnapshotAnalysis(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      monitoringInterval: map['monitoringInterval'] == null
          ? null
          : map['monitoringInterval'] as String,
      monitoringIntervalDays: map['monitoringIntervalDays'] == null
          ? null
          : map['monitoringIntervalDays'] as int,
      stalenessDays: map['stalenessDays'] == null
          ? null
          : map['stalenessDays'] as int,
    );
  }
}
