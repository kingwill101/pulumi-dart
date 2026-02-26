// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_snapshots_config.dart';

/// The Recovery settings of an environment.
class RecoveryConfig {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final ScheduledSnapshotsConfig? scheduledSnapshotsConfig;

  RecoveryConfig({
    this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final scheduledSnapshotsConfigValue = scheduledSnapshotsConfig;
    if (scheduledSnapshotsConfigValue != null) {
      map['scheduledSnapshotsConfig'] = scheduledSnapshotsConfigValue.toMap();
    }
    return map;
  }

  factory RecoveryConfig.fromMap(Map<String, dynamic> map) {
    return RecoveryConfig(
      scheduledSnapshotsConfig: map['scheduledSnapshotsConfig'] == null
          ? null
          : ScheduledSnapshotsConfig.fromMap(
              (map['scheduledSnapshotsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
