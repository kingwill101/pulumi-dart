// ignore_for_file: unused_element, unnecessary_cast

import 'spark_history_server_config.dart';

/// Auxiliary services configuration for a workload.
class PeripheralsConfig {
  /// Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]
  final String? metastoreService;

  /// Optional. The Spark History Server configuration for the workload.
  final SparkHistoryServerConfig? sparkHistoryServerConfig;

  PeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final metastoreServiceValue = metastoreService;
    if (metastoreServiceValue != null) {
      map['metastoreService'] = metastoreServiceValue;
    }
    final sparkHistoryServerConfigValue = sparkHistoryServerConfig;
    if (sparkHistoryServerConfigValue != null) {
      map['sparkHistoryServerConfig'] = sparkHistoryServerConfigValue.toMap();
    }
    return map;
  }

  factory PeripheralsConfig.fromMap(Map<String, dynamic> map) {
    return PeripheralsConfig(
      metastoreService: map['metastoreService'] == null
          ? null
          : map['metastoreService'] as String,
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : SparkHistoryServerConfig.fromMap(
              (map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
