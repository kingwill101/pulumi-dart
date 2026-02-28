// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_secret_sync_config_rotation_config.dart';

class ClusterSecretSyncConfig {
  /// Enable the Sync as K8s secret feature for this cluster.
  final bool enabled;

  /// config for secret sync auto rotation. Structure is docuemented below
  final ClusterSecretSyncConfigRotationConfig? rotationConfig;

  /// Creates a new [ClusterSecretSyncConfig].
  /// [enabled] Enable the Sync as K8s secret feature for this cluster.
  /// [rotationConfig] config for secret sync auto rotation. Structure is docuemented below
  ClusterSecretSyncConfig({
    required this.enabled,
    this.rotationConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    final rotationConfigValue = rotationConfig;
    if (rotationConfigValue != null) {
      map['rotationConfig'] = rotationConfigValue.toMap();
    }
    return map;
  }

  factory ClusterSecretSyncConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecretSyncConfig(
      enabled: map['enabled'] as bool,
      rotationConfig: map['rotationConfig'] == null
          ? null
          : ClusterSecretSyncConfigRotationConfig.fromMap(
              (map['rotationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
