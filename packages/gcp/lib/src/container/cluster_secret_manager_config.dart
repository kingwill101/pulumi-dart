// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_secret_manager_config_rotation_config.dart';

class ClusterSecretManagerConfig {
  /// Enable the Secret Manager add-on for this cluster.
  final bool enabled;
  /// config for secret manager auto rotation. Structure is docuemented below
  final ClusterSecretManagerConfigRotationConfig? rotationConfig;

  /// Creates a new [ClusterSecretManagerConfig].
  /// [enabled] Enable the Secret Manager add-on for this cluster.
  /// [rotationConfig] config for secret manager auto rotation. Structure is docuemented below
  ClusterSecretManagerConfig({
    required this.enabled,
    this.rotationConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationConfig': ?rotationConfig == null ? null : rotationConfig!.toMap(),
    };
  }

  factory ClusterSecretManagerConfig.fromMap(Map<String, dynamic> map) {
    return ClusterSecretManagerConfig(
      enabled: map['enabled'] as bool,
      rotationConfig: map['rotationConfig'] == null ? null : ClusterSecretManagerConfigRotationConfig.fromMap((map['rotationConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

