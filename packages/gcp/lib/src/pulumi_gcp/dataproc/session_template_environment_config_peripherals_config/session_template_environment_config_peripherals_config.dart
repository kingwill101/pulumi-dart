// ignore_for_file: unused_element, unnecessary_cast

import '../session_template_environment_config_peripherals_config_spark_history_server_config/session_template_environment_config_peripherals_config_spark_history_server_config.dart';

class SessionTemplateEnvironmentConfigPeripheralsConfig {
  /// Resource name of an existing Dataproc Metastore service.
  final String? metastoreService;

  /// The Spark History Server configuration for the workload.
  /// Structure is documented below.
  final SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig?
      sparkHistoryServerConfig;

  SessionTemplateEnvironmentConfigPeripheralsConfig({
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

  factory SessionTemplateEnvironmentConfigPeripheralsConfig.fromMap(
      Map<String, dynamic> map) {
    return SessionTemplateEnvironmentConfigPeripheralsConfig(
      metastoreService: map['metastoreService'] == null
          ? null
          : map['metastoreService'] as String,
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig
              .fromMap((map['sparkHistoryServerConfig'] as Map)
                  .cast<String, dynamic>()),
    );
  }
}
