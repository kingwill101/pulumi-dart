// ignore_for_file: unused_element, unnecessary_cast

import 'persistence_config_persistence_mode.dart';
import 'persistence_config_rdb_snapshot_period.dart';

/// Configuration of the persistence functionality.
class PersistenceConfig {
  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  final PersistenceConfigPersistenceMode? persistenceMode;

  /// Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as default.
  final PersistenceConfigRdbSnapshotPeriod? rdbSnapshotPeriod;

  /// Optional. Date and time that the first snapshot was/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
  final String? rdbSnapshotStartTime;

  /// Creates a new [PersistenceConfig].
  /// [persistenceMode] Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// [rdbSnapshotPeriod] Optional. Period between RDB snapshots. Snapshots will be attempted every period starting from the provided snapshot start time. For example, a start time of 01/01/2033 06:45 and SIX_HOURS snapshot period will do nothing until 01/01/2033, and then trigger snapshots every day at 06:45, 12:45, 18:45, and 00:45 the next day, and so on. If not provided, TWENTY_FOUR_HOURS will be used as default.
  /// [rdbSnapshotStartTime] Optional. Date and time that the first snapshot was/will be attempted, and to which future snapshots will be aligned. If not provided, the current time will be used.
  PersistenceConfig({
    this.persistenceMode,
    this.rdbSnapshotPeriod,
    this.rdbSnapshotStartTime,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'persistenceMode': ?persistenceMode == null
          ? null
          : persistenceMode!.value,
      'rdbSnapshotPeriod': ?rdbSnapshotPeriod == null
          ? null
          : rdbSnapshotPeriod!.value,
      'rdbSnapshotStartTime': ?rdbSnapshotStartTime,
    };
  }

  factory PersistenceConfig.fromMap(Map<String, dynamic> map) {
    return PersistenceConfig(
      persistenceMode: map['persistenceMode'] == null
          ? null
          : PersistenceConfigPersistenceMode.fromValue(
              map['persistenceMode'] as String,
            ),
      rdbSnapshotPeriod: map['rdbSnapshotPeriod'] == null
          ? null
          : PersistenceConfigRdbSnapshotPeriod.fromValue(
              map['rdbSnapshotPeriod'] as String,
            ),
      rdbSnapshotStartTime: map['rdbSnapshotStartTime'] == null
          ? null
          : map['rdbSnapshotStartTime'] as String,
    );
  }
}
