// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_instance_persistence_config_aof_config/get_instance_persistence_config_aof_config.dart';
import '../get_instance_persistence_config_rdb_config/get_instance_persistence_config_rdb_config.dart';

class GetInstancePersistenceConfig {
  /// Configuration for AOF based persistence.
  final List<GetInstancePersistenceConfigAofConfig> aofConfigs;

  /// Optional. Current persistence mode.
  /// Possible values:
  /// DISABLED
  /// RDB
  /// AOF Possible values: ["DISABLED", "RDB", "AOF"]
  final String mode;

  /// Configuration for RDB based persistence.
  final List<GetInstancePersistenceConfigRdbConfig> rdbConfigs;

  GetInstancePersistenceConfig({
    required this.aofConfigs,
    required this.mode,
    required this.rdbConfigs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['aofConfigs'] = Input.encodeList<GetInstancePersistenceConfigAofConfig,
        Map<String, dynamic>>(aofConfigs, (value) => value.toMap());
    map['mode'] = mode;
    map['rdbConfigs'] = Input.encodeList<GetInstancePersistenceConfigRdbConfig,
        Map<String, dynamic>>(rdbConfigs, (value) => value.toMap());
    return map;
  }

  factory GetInstancePersistenceConfig.fromMap(Map<String, dynamic> map) {
    return GetInstancePersistenceConfig(
      aofConfigs: Input.decodeList<GetInstancePersistenceConfigAofConfig>(
          map['aofConfigs'],
          (value) => GetInstancePersistenceConfigAofConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
      mode: map['mode'] as String,
      rdbConfigs: Input.decodeList<GetInstancePersistenceConfigRdbConfig>(
          map['rdbConfigs'],
          (value) => GetInstancePersistenceConfigRdbConfig.fromMap(
              (value as Map).cast<String, dynamic>())),
    );
  }
}
