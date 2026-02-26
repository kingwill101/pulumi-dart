// ignore_for_file: unused_element, unnecessary_cast

import '../cluster_virtual_cluster_config_auxiliary_services_config_metastore_config/cluster_virtual_cluster_config_auxiliary_services_config_metastore_config.dart';
import '../cluster_virtual_cluster_config_auxiliary_services_config_spark_history_server_config/cluster_virtual_cluster_config_auxiliary_services_config_spark_history_server_config.dart';

class ClusterVirtualClusterConfigAuxiliaryServicesConfig {
  /// The Hive Metastore configuration for this workload.
  final ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig?
      metastoreConfig;

  /// The Spark History Server configuration for the workload.
  final ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig?
      sparkHistoryServerConfig;

  ClusterVirtualClusterConfigAuxiliaryServicesConfig({
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

  factory ClusterVirtualClusterConfigAuxiliaryServicesConfig.fromMap(
      Map<String, dynamic> map) {
    return ClusterVirtualClusterConfigAuxiliaryServicesConfig(
      metastoreConfig: map['metastoreConfig'] == null
          ? null
          : ClusterVirtualClusterConfigAuxiliaryServicesConfigMetastoreConfig
              .fromMap((map['metastoreConfig'] as Map).cast<String, dynamic>()),
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : ClusterVirtualClusterConfigAuxiliaryServicesConfigSparkHistoryServerConfig
              .fromMap((map['sparkHistoryServerConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
