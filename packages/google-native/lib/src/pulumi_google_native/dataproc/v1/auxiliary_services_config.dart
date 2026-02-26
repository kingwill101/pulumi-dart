// ignore_for_file: unused_element, unnecessary_cast

import 'metastore_config.dart';
import 'spark_history_server_config.dart';

/// Auxiliary services configuration for a Cluster.
class AuxiliaryServicesConfig {
  /// Optional. The Hive Metastore configuration for this workload.
  final MetastoreConfig? metastoreConfig;

  /// Optional. The Spark History Server configuration for the workload.
  final SparkHistoryServerConfig? sparkHistoryServerConfig;

  AuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metastoreConfigValue = metastoreConfig;
    if (metastoreConfigValue != null) {
      map['metastoreConfig'] = metastoreConfigValue.toMap();
    }
    final sparkHistoryServerConfigValue = sparkHistoryServerConfig;
    if (sparkHistoryServerConfigValue != null) {
      map['sparkHistoryServerConfig'] = sparkHistoryServerConfigValue.toMap();
    }
    return map;
  }

  factory AuxiliaryServicesConfig.fromMap(Map<String, dynamic> map) {
    return AuxiliaryServicesConfig(
      metastoreConfig: map['metastoreConfig'] == null
          ? null
          : MetastoreConfig.fromMap(
              (map['metastoreConfig'] as Map).cast<String, dynamic>()),
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : SparkHistoryServerConfig.fromMap(
              (map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
