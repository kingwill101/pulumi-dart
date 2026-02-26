// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_snapshots_config2.dart';

/// The Recovery settings of an environment.
class RecoveryConfig2 {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final ScheduledSnapshotsConfig2? scheduledSnapshotsConfig;

  RecoveryConfig2({
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

  factory RecoveryConfig2.fromMap(Map<String, dynamic> map) {
    return RecoveryConfig2(
      scheduledSnapshotsConfig: map['scheduledSnapshotsConfig'] == null
          ? null
          : ScheduledSnapshotsConfig2.fromMap(
              (map['scheduledSnapshotsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
