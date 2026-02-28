// ignore_for_file: unused_element, unnecessary_cast

class ClusterPersistenceConfigRdbConfig {
  /// Optional. Available snapshot periods for scheduling.
  /// - ONE_HOUR:	Snapshot every 1 hour.
  /// - SIX_HOURS:	Snapshot every 6 hours.
  /// - TWELVE_HOURS:	Snapshot every 12 hours.
  /// - TWENTY_FOUR_HOURS:	Snapshot every 24 hours.
  /// Possible values are: `SNAPSHOT_PERIOD_UNSPECIFIED`, `ONE_HOUR`, `SIX_HOURS`, `TWELVE_HOURS`, `TWENTY_FOUR_HOURS`.
  final String? rdbSnapshotPeriod;

  /// The time that the first snapshot was/will be attempted, and to which
  /// future snapshots will be aligned.
  /// If not provided, the current time will be used.
  final String? rdbSnapshotStartTime;

  /// Creates a new [ClusterPersistenceConfigRdbConfig].
  /// [rdbSnapshotPeriod] Optional. Available snapshot periods for scheduling.
  /// [rdbSnapshotStartTime] The time that the first snapshot was/will be attempted, and to which
  ClusterPersistenceConfigRdbConfig({
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final rdbSnapshotPeriodValue = rdbSnapshotPeriod;
    if (rdbSnapshotPeriodValue != null) {
      map['rdbSnapshotPeriod'] = rdbSnapshotPeriodValue;
    }
    final rdbSnapshotStartTimeValue = rdbSnapshotStartTime;
    if (rdbSnapshotStartTimeValue != null) {
      map['rdbSnapshotStartTime'] = rdbSnapshotStartTimeValue;
    }
    return map;
  }

  factory ClusterPersistenceConfigRdbConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPersistenceConfigRdbConfig(
      rdbSnapshotPeriod: map['rdbSnapshotPeriod'] == null
          ? null
          : map['rdbSnapshotPeriod'] as String,
      rdbSnapshotStartTime: map['rdbSnapshotStartTime'] == null
          ? null
          : map['rdbSnapshotStartTime'] as String,
    );
  }
}
