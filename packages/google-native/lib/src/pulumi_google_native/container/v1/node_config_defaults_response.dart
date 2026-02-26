// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config_response.dart';
import 'node_pool_logging_config_response.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaultsResponse {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfigResponse gcfsConfig;

  /// Logging configuration for node pools.
  final NodePoolLoggingConfigResponse loggingConfig;

  NodeConfigDefaultsResponse({
    required this.gcfsConfig,
    required this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['gcfsConfig'] = gcfsConfig.toMap();
    map['loggingConfig'] = loggingConfig.toMap();
    return map;
  }

  factory NodeConfigDefaultsResponse.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaultsResponse(
      gcfsConfig: GcfsConfigResponse.fromMap(
          (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      loggingConfig: NodePoolLoggingConfigResponse.fromMap(
          (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
