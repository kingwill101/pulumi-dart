// ignore_for_file: unused_element, unnecessary_cast

import 'gcfs_config.dart';
import 'node_pool_logging_config.dart';

/// Subset of NodeConfig message that has defaults.
class NodeConfigDefaults {
  /// GCFS (Google Container File System, also known as Riptide) options.
  final GcfsConfig? gcfsConfig;

  /// Logging configuration for node pools.
  final NodePoolLoggingConfig? loggingConfig;

  NodeConfigDefaults({
    this.gcfsConfig,
    this.loggingConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gcfsConfigValue = gcfsConfig;
    if (gcfsConfigValue != null) {
      map['gcfsConfig'] = gcfsConfigValue.toMap();
    }
    final loggingConfigValue = loggingConfig;
    if (loggingConfigValue != null) {
      map['loggingConfig'] = loggingConfigValue.toMap();
    }
    return map;
  }

  factory NodeConfigDefaults.fromMap(Map<String, dynamic> map) {
    return NodeConfigDefaults(
      gcfsConfig: map['gcfsConfig'] == null
          ? null
          : GcfsConfig.fromMap(
              (map['gcfsConfig'] as Map).cast<String, dynamic>()),
      loggingConfig: map['loggingConfig'] == null
          ? null
          : NodePoolLoggingConfig.fromMap(
              (map['loggingConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
