// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_snapshots_config_composer_v1beta1.dart';

/// The Recovery settings of an environment.
class RecoveryConfigComposerV1beta1 {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final ScheduledSnapshotsConfigComposerV1beta1? scheduledSnapshotsConfig;

  /// Creates a new [RecoveryConfigComposerV1beta1].
  /// [scheduledSnapshotsConfig] Optional. The configuration for scheduled snapshot creation mechanism.
  RecoveryConfigComposerV1beta1({
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

  factory RecoveryConfigComposerV1beta1.fromMap(Map<String, dynamic> map) {
    return RecoveryConfigComposerV1beta1(
      scheduledSnapshotsConfig: map['scheduledSnapshotsConfig'] == null
          ? null
          : ScheduledSnapshotsConfigComposerV1beta1.fromMap(
              (map['scheduledSnapshotsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
