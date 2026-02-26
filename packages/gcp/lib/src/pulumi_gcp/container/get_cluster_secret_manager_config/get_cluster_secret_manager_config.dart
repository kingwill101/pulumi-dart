// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_secret_manager_config_rotation_config/get_cluster_secret_manager_config_rotation_config.dart';

class GetClusterSecretManagerConfig {
  /// Enable the Secret manager csi component.
  final bool enabled;

  /// Configuration for Secret Manager auto rotation.
  final List<GetClusterSecretManagerConfigRotationConfig> rotationConfigs;

  GetClusterSecretManagerConfig({
    required this.enabled,
    required this.rotationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['rotationConfigs'] = Input.encodeList<
        GetClusterSecretManagerConfigRotationConfig,
        Map<String, dynamic>>(rotationConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterSecretManagerConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecretManagerConfig(
      enabled: map['enabled'] as bool,
      rotationConfigs:
          Input.decodeList<GetClusterSecretManagerConfigRotationConfig>(
              map['rotationConfigs'],
              (value) => GetClusterSecretManagerConfigRotationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
