// ignore_for_file: unused_element, unnecessary_cast

import 'metastore_config.dart';
import 'spark_history_server_config.dart';

/// Auxiliary services configuration for a Cluster.
class AuxiliaryServicesConfig {
  /// Optional. The Hive Metastore configuration for this workload.
  final MetastoreConfig? metastoreConfig;

  /// Optional. The Spark History Server configuration for the workload.
  final SparkHistoryServerConfig? sparkHistoryServerConfig;

  /// Creates a new [AuxiliaryServicesConfig].
  /// [metastoreConfig] Optional. The Hive Metastore configuration for this workload.
  /// [sparkHistoryServerConfig] Optional. The Spark History Server configuration for the workload.
  AuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreConfig': ?metastoreConfig == null
          ? null
          : metastoreConfig!.toMap(),
      'sparkHistoryServerConfig': ?sparkHistoryServerConfig == null
          ? null
          : sparkHistoryServerConfig!.toMap(),
    };
  }

  factory AuxiliaryServicesConfig.fromMap(Map<String, dynamic> map) {
    return AuxiliaryServicesConfig(
      metastoreConfig: map['metastoreConfig'] == null
          ? null
          : MetastoreConfig.fromMap(
              (map['metastoreConfig'] as Map).cast<String, dynamic>(),
            ),
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : SparkHistoryServerConfig.fromMap(
              (map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
