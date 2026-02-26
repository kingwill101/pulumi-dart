// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_cluster_persistence_config_aof_config/get_cluster_persistence_config_aof_config.dart';
import '../get_cluster_persistence_config_rdb_config/get_cluster_persistence_config_rdb_config.dart';

class GetClusterPersistenceConfig {
  /// AOF configuration. This field will be ignored if mode is not AOF.
  final List<GetClusterPersistenceConfigAofConfig> aofConfigs;

  /// Optional. Controls whether Persistence features are enabled. If not provided, the existing value will be used.
  ///
  /// - DISABLED: 	Persistence (both backup and restore) is disabled for the cluster.
  /// - RDB: RDB based Persistence is enabled.
  /// - AOF: AOF based Persistence is enabled. Possible values: ["PERSISTENCE_MODE_UNSPECIFIED", "DISABLED", "RDB", "AOF"]
  final String mode;

  /// RDB configuration. This field will be ignored if mode is not RDB.
  final List<GetClusterPersistenceConfigRdbConfig> rdbConfigs;

  GetClusterPersistenceConfig({
    required this.aofConfigs,
    required this.mode,
    required this.rdbConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aofConfigs'] = Input.encodeList<GetClusterPersistenceConfigAofConfig,
        Map<String, dynamic>>(aofConfigs, (value) => value.toMap());
    map['mode'] = mode;
    map['rdbConfigs'] = Input.encodeList<GetClusterPersistenceConfigRdbConfig,
        Map<String, dynamic>>(rdbConfigs, (value) => value.toMap());
    return map;
  }

  factory GetClusterPersistenceConfig.fromMap(Map<String, dynamic> map) {
    return GetClusterPersistenceConfig(
      aofConfigs: Input.decodeList<GetClusterPersistenceConfigAofConfig>(
          map['aofConfigs'],
          (value) => GetClusterPersistenceConfigAofConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      rdbConfigs: Input.decodeList<GetClusterPersistenceConfigRdbConfig>(
          map['rdbConfigs'],
          (value) => GetClusterPersistenceConfigRdbConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
