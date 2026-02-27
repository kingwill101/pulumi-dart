// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_snapshots_config_response_composer_v1beta1.dart';

/// The Recovery settings of an environment.
class RecoveryConfigResponseComposerV1beta1 {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final ScheduledSnapshotsConfigResponseComposerV1beta1
      scheduledSnapshotsConfig;

  RecoveryConfigResponseComposerV1beta1({
    required this.scheduledSnapshotsConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheduledSnapshotsConfig'] = scheduledSnapshotsConfig.toMap();
    return map;
  }

  factory RecoveryConfigResponseComposerV1beta1.fromMap(
      Map<String, dynamic> map) {
    return RecoveryConfigResponseComposerV1beta1(
      scheduledSnapshotsConfig:
          ScheduledSnapshotsConfigResponseComposerV1beta1.fromMap(
              (map['scheduledSnapshotsConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
