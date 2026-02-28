// ignore_for_file: unused_element, unnecessary_cast


/// Configuration of the persistence functionality.
class PersistenceConfigResponseRedisV1beta1 {
  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  final String persistenceMode;
  /// The next time that a snapshot attempt is scheduled to occur.
  final String rdbNextSnapshotTime;
  /// Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as default.
  final String rdbSnapshotPeriod;
  /// Optional. Date and time that the first snapshot was/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
  final String rdbSnapshotStartTime;

  /// Creates a new [PersistenceConfigResponseRedisV1beta1].
  /// [persistenceMode] Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// [rdbNextSnapshotTime] The next time that a snapshot attempt is scheduled to occur.
  /// [rdbSnapshotPeriod] Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as default.
  /// [rdbSnapshotStartTime] Optional. Date and time that the first snapshot was/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
  PersistenceConfigResponseRedisV1beta1({
    required this.persistenceMode,
    required this.rdbNextSnapshotTime,
    required this.rdbSnapshotPeriod,
    required this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistenceMode': persistenceMode,
      'rdbNextSnapshotTime': rdbNextSnapshotTime,
      'rdbSnapshotPeriod': rdbSnapshotPeriod,
      'rdbSnapshotStartTime': rdbSnapshotStartTime,
    };
  }

  factory PersistenceConfigResponseRedisV1beta1.fromMap(Map<String, dynamic> map) {
    return PersistenceConfigResponseRedisV1beta1(
      persistenceMode: map['persistenceMode'] as String,
      rdbNextSnapshotTime: map['rdbNextSnapshotTime'] as String,
      rdbSnapshotPeriod: map['rdbSnapshotPeriod'] as String,
      rdbSnapshotStartTime: map['rdbSnapshotStartTime'] as String,
    );
  }
}

