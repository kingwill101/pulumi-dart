// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_persistence_config_aof_config.dart';
import 'cluster_persistence_config_rdb_config.dart';

class ClusterPersistenceConfig {
  /// AOF configuration. This field will be ignored if mode is not AOF.
  /// Structure is documented below.
  final ClusterPersistenceConfigAofConfig? aofConfig;

  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// - DISABLED: 	Persistence (both backup and restore) is disabled for the cluster.
  /// - RDB: RDB based Persistence is enabled.
  /// - AOF: AOF based Persistence is enabled.
  /// Possible values are: `PERSISTENCE_MODE_UNSPECIFIED`, `DISABLED`, `RDB`, `AOF`.
  final String? mode;

  /// RDB configuration. This field will be ignored if mode is not RDB.
  /// Structure is documented below.
  final ClusterPersistenceConfigRdbConfig? rdbConfig;

  /// Creates a new [ClusterPersistenceConfig].
  /// [aofConfig] AOF configuration. This field will be ignored if mode is not AOF.
  /// [mode] Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  /// [rdbConfig] RDB configuration. This field will be ignored if mode is not RDB.
  ClusterPersistenceConfig({
    this.aofConfig,
    this.mode,
    this.rdbConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final aofConfigValue = aofConfig;
    if (aofConfigValue != null) {
      map['aofConfig'] = aofConfigValue.toMap();
    }
    final modeValue = mode;
    if (modeValue != null) {
      map['mode'] = modeValue;
    }
    final rdbConfigValue = rdbConfig;
    if (rdbConfigValue != null) {
      map['rdbConfig'] = rdbConfigValue.toMap();
    }
    return map;
  }

  factory ClusterPersistenceConfig.fromMap(Map<String, dynamic> map) {
    return ClusterPersistenceConfig(
      aofConfig: map['aofConfig'] == null
          ? null
          : ClusterPersistenceConfigAofConfig.fromMap(
              (map['aofConfig'] as Map).cast<String, dynamic>()),
      mode: map['mode'] == null ? null : map['mode'] as String,
      rdbConfig: map['rdbConfig'] == null
          ? null
          : ClusterPersistenceConfigRdbConfig.fromMap(
              (map['rdbConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
