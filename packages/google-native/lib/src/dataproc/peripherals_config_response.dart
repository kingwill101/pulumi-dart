// ignore_for_file: unused_element, unnecessary_cast

import 'spark_history_server_config_response.dart';

/// Auxiliary services configuration for a workload.
class PeripheralsConfigResponse {
  /// Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]
  final String metastoreService;

  /// Optional. The Spark History Server configuration for the workload.
  final SparkHistoryServerConfigResponse sparkHistoryServerConfig;

  /// Creates a new [PeripheralsConfigResponse].
  /// [metastoreService] Optional. Resource name of an existing Dataproc Metastore service.Example: projects/[project_id]/locations/[region]/services/[service_id]
  /// [sparkHistoryServerConfig] Optional. The Spark History Server configuration for the workload.
  PeripheralsConfigResponse({
    required this.metastoreService,
    required this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['metastoreService'] = metastoreService;
    map['sparkHistoryServerConfig'] = sparkHistoryServerConfig.toMap();
    return map;
  }

  factory PeripheralsConfigResponse.fromMap(Map<String, dynamic> map) {
    return PeripheralsConfigResponse(
      metastoreService: map['metastoreService'] as String,
      sparkHistoryServerConfig: SparkHistoryServerConfigResponse.fromMap(
          (map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>()),
    );
  }
}
