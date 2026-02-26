// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_snapshots_config_response2.dart';

/// The Recovery settings of an environment.
class RecoveryConfigResponse2 {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final ScheduledSnapshotsConfigResponse2 scheduledSnapshotsConfig;

  RecoveryConfigResponse2({
    required this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheduledSnapshotsConfig'] = scheduledSnapshotsConfig.toMap();
    return map;
  }

  factory RecoveryConfigResponse2.fromMap(Map<String, dynamic> map) {
    return RecoveryConfigResponse2(
      scheduledSnapshotsConfig: ScheduledSnapshotsConfigResponse2.fromMap(
          (map['scheduledSnapshotsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
