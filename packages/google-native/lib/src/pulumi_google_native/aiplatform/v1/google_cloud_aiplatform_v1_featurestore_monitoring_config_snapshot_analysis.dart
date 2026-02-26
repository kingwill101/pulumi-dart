// ignore_for_file: unused_element, unnecessary_cast

/// Configuration of the Featurestore's Snapshot Analysis Based Monitoring. This type of analysis generates statistics for each Feature based on a snapshot of the latest feature value of each entities every monitoring_interval.
class GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis {
  /// The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoring_interval for Features under it. Feature-level config: disabled = true indicates disabled regardless of the EntityType-level config; unset monitoring_interval indicates going with EntityType-level config; otherwise run snapshot analysis monitoring with monitoring_interval regardless of the EntityType-level config. Explicitly Disable the snapshot analysis based monitoring.
  final bool? disabled;

  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days.
  final int? monitoringIntervalDays;

  /// Customized export features time window for snapshot analysis. Unit is one day. Default value is 3 weeks. Minimum value is 1 day. Maximum value is 4000 days.
  final int? stalenessDays;

  GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis({
    this.disabled,
    this.monitoringIntervalDays,
    this.stalenessDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final monitoringIntervalDaysValue = monitoringIntervalDays;
    if (monitoringIntervalDaysValue != null) {
      map['monitoringIntervalDays'] = monitoringIntervalDaysValue;
    }
    final stalenessDaysValue = stalenessDays;
    if (stalenessDaysValue != null) {
      map['stalenessDays'] = stalenessDaysValue;
    }
    return map;
  }

  factory GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis.fromMap(
      Map<String, dynamic> map) {
    return GoogleCloudAiplatformV1FeaturestoreMonitoringConfigSnapshotAnalysis(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      monitoringIntervalDays: map['monitoringIntervalDays'] == null
          ? null
          : map['monitoringIntervalDays'] as int,
      stalenessDays:
          map['stalenessDays'] == null ? null : map['stalenessDays'] as int,
    );
  }
}
