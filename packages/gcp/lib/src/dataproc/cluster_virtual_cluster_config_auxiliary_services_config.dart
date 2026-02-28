// ignore_for_file: unused_element, unnecessary_cast

import 'cluster_virtual_cluster_config_auxiliary_services_config_metastore_config.dart';
import 'cluster_virtual_cluster_config_auxiliary_services_config_spark_history_server_config.dart';

class ClusterVirtualClusterConfigAuxiliaryServicesConfig {
  /// The Hive Metastore configuration for this workload.
  final ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig? metastoreConfig;
  /// The Spark History Server configuration for the workload.
  final ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig? sparkHistoryServerConfig;

  /// Creates a new [ClusterVirtualClusterConfigAuxiliaryServicesConfig].
  /// [metastoreConfig] The Hive Metastore configuration for this workload.
  /// [sparkHistoryServerConfig] The Spark History Server configuration for the workload.
  ClusterVirtualClusterConfigAuxiliaryServicesConfig({
    this.metastoreConfig,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreConfig': ?metastoreConfig == null ? null : metastoreConfig!.toMap(),
      'sparkHistoryServerConfig': ?sparkHistoryServerConfig == null ? null : sparkHistoryServerConfig!.toMap(),
    };
  }

  factory ClusterVirtualClusterConfigAuxiliaryServicesConfig.fromMap(Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigAuxiliaryServicesConfig(
      metastoreConfig: map['metastoreConfig'] == null ? null : ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig.fromMap((map['metastoreConfig'] as Map).cast<String, dynamic>()),
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null ? null : ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig.fromMap((map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}

