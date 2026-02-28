// ignore_for_file: unused_element, unnecessary_cast

class ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration {
  /// Describes whether to use the default CloudWatch logging configuration for an application. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `log_level` or `metrics_level` attribute values to be effective.
  final String configurationType;

  /// Describes the verbosity of the CloudWatch Logs for an application. Valid values: `DEBUG`, `ERROR`, `INFO`, `WARN`.
  final String? logLevel;

  /// Describes the granularity of the CloudWatch Logs for an application. Valid values: `APPLICATION`, `OPERATOR`, `PARALLELISM`, `TASK`.
  final String? metricsLevel;

  /// Creates a new [ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration].
  /// [configurationType] Describes whether to use the default CloudWatch logging configuration for an application. Valid values: `CUSTOM`, `DEFAULT`. Set this attribute to `CUSTOM` in order for any specified `log_level` or `metrics_level` attribute values to be effective.
  /// [logLevel] Describes the verbosity of the CloudWatch Logs for an application. Valid values: `DEBUG`, `ERROR`, `INFO`, `WARN`.
  /// [metricsLevel] Describes the granularity of the CloudWatch Logs for an application. Valid values: `APPLICATION`, `OPERATOR`, `PARALLELISM`, `TASK`.
  ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration({
    required this.configurationType,
    this.logLevel,
    this.metricsLevel,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configurationType'] = configurationType;
    final logLevelValue = logLevel;
    if (logLevelValue != null) {
      map['logLevel'] = logLevelValue;
    }
    final metricsLevelValue = metricsLevel;
    if (metricsLevelValue != null) {
      map['metricsLevel'] = metricsLevelValue;
    }
    return map;
  }

  factory ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ApplicationApplicationConfigurationFlinkApplicationConfigurationMonitoringConfiguration(
      configurationType: map['configurationType'] as String,
      logLevel: map['logLevel'] == null ? null : map['logLevel'] as String,
      metricsLevel:
          map['metricsLevel'] == null ? null : map['metricsLevel'] as String,
    );
  }
}
