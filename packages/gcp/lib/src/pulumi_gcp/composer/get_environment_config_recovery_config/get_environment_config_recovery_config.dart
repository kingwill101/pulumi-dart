// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_environment_config_recovery_config_scheduled_snapshots_config/get_environment_config_recovery_config_scheduled_snapshots_config.dart';

class GetEnvironmentConfigRecoveryConfig {
  /// The configuration settings for scheduled snapshots.
  final List<GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig>
      scheduledSnapshotsConfigs;

  GetEnvironmentConfigRecoveryConfig({
    required this.scheduledSnapshotsConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['scheduledSnapshotsConfigs'] = Input.encodeList<
            GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig,
            Map<String, dynamic>>(
        scheduledSnapshotsConfigs, (value) => value.toMap());
    return map;
  }

  factory GetEnvironmentConfigRecoveryConfig.fromMap(Map<String, dynamic> map) {
    return GetEnvironmentConfigRecoveryConfig(
      scheduledSnapshotsConfigs: Input.decodeList<
              GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig>(
          map['scheduledSnapshotsConfigs'],
          (value) => GetEnvironmentConfigRecoveryConfigScheduledSnapshotsConfig
              .fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}
