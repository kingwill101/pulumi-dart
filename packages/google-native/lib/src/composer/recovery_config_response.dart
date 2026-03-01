// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_snapshots_config_response.dart';

/// The Recovery settings of an environment.
class RecoveryConfigResponse {
  /// Optional. The configuration for scheduled snapshot creation mechanism.
  final ScheduledSnapshotsConfigResponse scheduledSnapshotsConfig;

  /// Creates a new [RecoveryConfigResponse].
  /// [scheduledSnapshotsConfig] Optional. The configuration for scheduled snapshot creation mechanism.
  RecoveryConfigResponse({required this.scheduledSnapshotsConfig});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'scheduledSnapshotsConfig': scheduledSnapshotsConfig.toMap(),
    };
  }

  factory RecoveryConfigResponse.fromMap(Map<String, dynamic> map) {
    return RecoveryConfigResponse(
      scheduledSnapshotsConfig: ScheduledSnapshotsConfigResponse.fromMap(
        (map['scheduledSnapshotsConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
