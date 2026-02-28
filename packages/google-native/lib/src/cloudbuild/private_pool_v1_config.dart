// ignore_for_file: unused_element, unnecessary_cast

import 'network_config.dart';
import 'worker_config.dart';

/// Configuration for a V1 `PrivatePool`.
class PrivatePoolV1Config {
  /// Network configuration for the pool.
  final NetworkConfig? networkConfig;
  /// Machine configuration for the workers in the pool.
  final WorkerConfig? workerConfig;

  /// Creates a new [PrivatePoolV1Config].
  /// [networkConfig] Network configuration for the pool.
  /// [workerConfig] Machine configuration for the workers in the pool.
  PrivatePoolV1Config({
    this.networkConfig,
    this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkConfig': ?networkConfig == null ? null : networkConfig!.toMap(),
      'workerConfig': ?workerConfig == null ? null : workerConfig!.toMap(),
    };
  }

  factory PrivatePoolV1Config.fromMap(Map<String, dynamic> map) {
    return PrivatePoolV1Config(
      networkConfig: map['networkConfig'] == null ? null : NetworkConfig.fromMap((map['networkConfig'] as Map).cast<String, dynamic>()),
      workerConfig: map['workerConfig'] == null ? null : WorkerConfig.fromMap((map['workerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

