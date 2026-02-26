// ignore_for_file: unused_element, unnecessary_cast

class AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis {
  /// The monitoring schedule for snapshot analysis. For EntityType-level config: unset / disabled = true indicates disabled by default for Features under it; otherwise by default enable snapshot analysis monitoring with monitoringInterval for Features under it.
  final bool? disabled;

  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value is rolled up to full day.
  /// A duration in seconds with up to nine fractional digits, terminated by 's'. Example: "3.5s".
  ///
  /// > **Warning:** <span pulumi-lang-nodejs="`monitoringInterval`" pulumi-lang-dotnet="`MonitoringInterval`" pulumi-lang-go="`monitoringInterval`" pulumi-lang-python="`monitoring_interval`" pulumi-lang-yaml="`monitoringInterval`" pulumi-lang-java="`monitoringInterval`">`monitoring_interval`</span> is deprecated and will be removed in a future release.
  final String? monitoringInterval;

  /// Configuration of the snapshot analysis based monitoring pipeline running interval. The value indicates number of days. The default value is 1.
  /// If both FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days and [FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval][] are set when creating/updating EntityTypes/Features, FeaturestoreMonitoringConfig.SnapshotAnalysis.monitoring_interval_days will be used.
  final int? monitoringIntervalDays;

  /// Customized export features time window for snapshot analysis. Unit is one day. The default value is 21 days. Minimum value is 1 day. Maximum value is 4000 days.
  final int? stalenessDays;

  AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis({
    this.disabled,
    this.monitoringInterval,
    this.monitoringIntervalDays,
    this.stalenessDays,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final disabledValue = disabled;
    if (disabledValue != null) {
      map['disabled'] = disabledValue;
    }
    final monitoringIntervalValue = monitoringInterval;
    if (monitoringIntervalValue != null) {
      map['monitoringInterval'] = monitoringIntervalValue;
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

  factory AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis.fromMap(
      Map<String, dynamic> map) {
    return AiFeatureStoreEntityTypeMonitoringConfigSnapshotAnalysis(
      disabled: map['disabled'] == null ? null : map['disabled'] as bool,
      monitoringInterval: map['monitoringInterval'] == null
          ? null
          : map['monitoringInterval'] as String,
      monitoringIntervalDays: map['monitoringIntervalDays'] == null
          ? null
          : map['monitoringIntervalDays'] as int,
      stalenessDays:
          map['stalenessDays'] == null ? null : map['stalenessDays'] as int,
    );
  }
}
