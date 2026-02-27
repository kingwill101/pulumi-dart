// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_cluster_secret_sync_config_rotation_config/get_cluster_secret_sync_config_rotation_config.dart';

class GetClusterSecretSyncConfig {
  /// Enable the Sync as k8s secret add-on.
  final bool enabled;

  /// Configuration for Secret Sync auto rotation.
  final List<GetClusterSecretSyncConfigRotationConfig> rotationConfigs;

  GetClusterSecretSyncConfig({
    required this.enabled,
    required this.rotationConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enabled'] = enabled;
    map['rotationConfigs'] = pulumi.Input.encodeList<
        GetClusterSecretSyncConfigRotationConfig,
        Map<String, dynamic>>(rotationConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterSecretSyncConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecretSyncConfig(
      enabled: map['enabled'] as bool,
      rotationConfigs:
          pulumi.Input.decodeList<GetClusterSecretSyncConfigRotationConfig>(
              map['rotationConfigs'],
              (value) => GetClusterSecretSyncConfigRotationConfig.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
