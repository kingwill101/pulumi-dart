// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_cloudbuild_v1.dart';
import 'worker_config.dart';

/// Configuration for a V1 `PrivatePool`.
class PrivatePoolV1Config {
  /// Network configuration for the pool.
  final NetworkConfigCloudbuildV1? networkConfig;

  /// Machine configuration for the workers in the pool.
  final WorkerConfig? workerConfig;

  PrivatePoolV1Config({
    this.networkConfig,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final networkConfigValue = networkConfig;
    if (networkConfigValue != null) {
      map['networkConfig'] = networkConfigValue.toMap();
    }
    final workerConfigValue = workerConfig;
    if (workerConfigValue != null) {
      map['workerConfig'] = workerConfigValue.toMap();
    }
    return map;
  }

  factory PrivatePoolV1Config.fromMap(Map<String, dynamic> map) {
    return PrivatePoolV1Config(
      networkConfig: map['networkConfig'] == null
          ? null
          : NetworkConfigCloudbuildV1.fromMap(
              (map['networkConfig'] as Map).cast<String, dynamic>()),
      workerConfig: map['workerConfig'] == null
          ? null
          : WorkerConfig.fromMap(
              (map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
