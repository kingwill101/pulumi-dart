// ignore_for_file: unused_element, unnecessary_cast

class GetInstancePersistenceConfig {
  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  ///
  /// - DISABLED: 	Persistence is disabled for the instance, and any existing snapshots are deleted.
  /// - RDB: RDB based Persistence is enabled. Possible values: ["DISABLED", "RDB"]
  final String persistenceMode;

  /// Output only. The next time that a snapshot attempt is scheduled to occur.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution and up
  /// to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String rdbNextSnapshotTime;

  /// Optional. Available snapshot periods for scheduling.
  ///
  /// - ONE_HOUR:	Snapshot every 1 hour.
  /// - SIX_HOURS:	Snapshot every 6 hours.
  /// - TWELVE_HOURS:	Snapshot every 12 hours.
  /// - TWENTY_FOUR_HOURS:	Snapshot every 24 hours. Possible values: ["ONE_HOUR", "SIX_HOURS", "TWELVE_HOURS", "TWENTY_FOUR_HOURS"]
  final String rdbSnapshotPeriod;

  /// Optional. Date and time that the first snapshot was/will be attempted,
  /// and to which future snapshots will be aligned. If not provided,
  /// the current time will be used.
  /// A timestamp in RFC3339 UTC "Zulu" format, with nanosecond resolution
  /// and up to nine fractional digits.
  /// Examples: "2014-10-02T15:01:23Z" and "2014-10-02T15:01:23.045123456Z".
  final String rdbSnapshotStartTime;

  /// Creates a new [GetInstancePersistenceConfig].
  /// [persistenceMode] Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// [rdbNextSnapshotTime] Output only. The next time that a snapshot attempt is scheduled to occur.
  /// [rdbSnapshotPeriod] Optional. Available snapshot periods for scheduling.
  /// [rdbSnapshotStartTime] Optional. Date and time that the first snapshot was/will be attempted,
  GetInstancePersistenceConfig({
    required this.persistenceMode,
    required this.rdbNextSnapshotTime,
    required this.rdbSnapshotPeriod,
    required this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['persistenceMode'] = persistenceMode;
    map['rdbNextSnapshotTime'] = rdbNextSnapshotTime;
    map['rdbSnapshotPeriod'] = rdbSnapshotPeriod;
    map['rdbSnapshotStartTime'] = rdbSnapshotStartTime;
    return map;
  }

  factory GetInstancePersistenceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePersistenceConfig(
      persistenceMode: map['persistenceMode'] as String,
      rdbNextSnapshotTime: map['rdbNextSnapshotTime'] as String,
      rdbSnapshotPeriod: map['rdbSnapshotPeriod'] as String,
      rdbSnapshotStartTime: map['rdbSnapshotStartTime'] as String,
    );
  }
}
