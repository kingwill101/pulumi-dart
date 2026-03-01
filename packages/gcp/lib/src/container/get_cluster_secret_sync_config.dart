// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_cluster_secret_sync_config_rotation_config.dart';

class GetClusterSecretSyncConfig {
  /// Enable the Sync as k8s secret add-on.
  final bool enabled;
  /// Configuration for Secret Sync auto rotation.
  final List<GetClusterSecretSyncConfigRotationConfig> rotationConfigs;

  /// Creates a new [GetClusterSecretSyncConfig].
  /// [enabled] Enable the Sync as k8s secret add-on.
  /// [rotationConfigs] Configuration for Secret Sync auto rotation.
  GetClusterSecretSyncConfig({
    required this.enabled,
    required this.rotationConfigs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': enabled,
      'rotationConfigs': pulumi.Input.encodeList<GetClusterSecretSyncConfigRotationConfig, Map<String, dynamic>>(rotationConfigs, (value) => value.toMap()),
    };
  }

  factory GetClusterSecretSyncConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterSecretSyncConfig(
      enabled: map['enabled'] as bool,
      rotationConfigs: pulumi.Input.decodeList<GetClusterSecretSyncConfigRotationConfig>(map['rotationConfigs'], (value) => GetClusterSecretSyncConfigRotationConfig.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

