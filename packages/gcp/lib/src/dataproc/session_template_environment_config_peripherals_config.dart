// ignore_for_file: unused_element, unnecessary_cast

import 'session_template_environment_config_peripherals_config_spark_history_server_config.dart';

class SessionTemplateEnvironmentConfigPeripheralsConfig {
  /// Resource name of an existing Dataproc Metastore service.
  final String? metastoreService;

  /// The Spark History Server configuration for the workload.
  /// Structure is documented below.
  final SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig?
  sparkHistoryServerConfig;

  /// Creates a new [SessionTemplateEnvironmentConfigPeripheralsConfig].
  /// [metastoreService] Resource name of an existing Dataproc Metastore service.
  /// [sparkHistoryServerConfig] The Spark History Server configuration for the workload.
  SessionTemplateEnvironmentConfigPeripheralsConfig({
    this.metastoreService,
    this.sparkHistoryServerConfig,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metastoreService': ?metastoreService,
      'sparkHistoryServerConfig': ?sparkHistoryServerConfig == null
          ? null
          : sparkHistoryServerConfig!.toMap(),
    };
  }

  factory SessionTemplateEnvironmentConfigPeripheralsConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return SessionTemplateEnvironmentConfigPeripheralsConfig(
      metastoreService: map['metastoreService'] == null
          ? null
          : map['metastoreService'] as String,
      sparkHistoryServerConfig: map['sparkHistoryServerConfig'] == null
          ? null
          : SessionTemplateEnvironmentConfigPeripheralsConfigSparkHistoryServerConfig.fromMap(
              (map['sparkHistoryServerConfig'] as Map).cast<String, dynamic>(),
            ),
    );
  }
}
