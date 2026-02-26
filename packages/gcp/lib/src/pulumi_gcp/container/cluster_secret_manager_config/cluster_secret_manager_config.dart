// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_secret_manager_config_rotation_config/cluster_secret_manager_config_rotation_config.dart';

class ClusterSecretManagerConfig {
  /// Enable the Secret Manager add-on for this cluster.
  final bool enabled;

  /// config for secret manager auto rotation. Structure is docuemented below
  final ClusterSecretManagerConfigRotationConfig? rotationConfig;

  ClusterSecretManagerConfig({
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

  factory ClusterSecretManagerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecretManagerConfig(
      enabled: map['enabled'] as bool,
      rotationConfig: map['rotationConfig'] == null
          ? null
          : ClusterSecretManagerConfigRotationConfig.fromMap(
              (map['rotationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
