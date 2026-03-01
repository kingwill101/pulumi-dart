// ignore_for_file: unused_element, unnecessary_cast

import 'network_config_response.dart';
import 'worker_config_response.dart';

/// Configuration for a V1 `PrivatePool`.
class PrivatePoolV1ConfigResponse {
  /// Network configuration for the pool.
  final NetworkConfigResponse networkConfig;

  /// Machine configuration for the workers in the pool.
  final WorkerConfigResponse workerConfig;

  /// Creates a new [PrivatePoolV1ConfigResponse].
  /// [networkConfig] Network configuration for the pool.
  /// [workerConfig] Machine configuration for the workers in the pool.
  PrivatePoolV1ConfigResponse({
    required this.networkConfig,
    required this.workerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'networkConfig': networkConfig.toMap(),
      'workerConfig': workerConfig.toMap(),
    };
  }

  factory PrivatePoolV1ConfigResponse.fromMap(Map<String, dynamic> map) {
    return PrivatePoolV1ConfigResponse(
      networkConfig: NetworkConfigResponse.fromMap(
        (map['networkConfig'] as Map).cast<String, dynamic>(),
      ),
      workerConfig: WorkerConfigResponse.fromMap(
        (map['workerConfig'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
