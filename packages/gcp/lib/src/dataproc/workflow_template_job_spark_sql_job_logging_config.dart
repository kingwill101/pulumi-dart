// ignore_for_file: unused_element, unnecessary_cast


class WorkflowTemplateJobSparkSqlJobLoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String>? driverLogLevels;

  /// Creates a new [WorkflowTemplateJobSparkSqlJobLoggingConfig].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  WorkflowTemplateJobSparkSqlJobLoggingConfig({
    this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driverLogLevels': ?driverLogLevels,
    };
  }

  factory WorkflowTemplateJobSparkSqlJobLoggingConfig.fromMap(Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkSqlJobLoggingConfig(
      driverLogLevels: map['driverLogLevels'] == null ? null : (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}

