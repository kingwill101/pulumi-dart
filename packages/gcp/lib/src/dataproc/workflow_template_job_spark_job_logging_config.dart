// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplateJobSparkJobLoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String>? driverLogLevels;

  /// Creates a new [WorkflowTemplateJobSparkJobLoggingConfig].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  WorkflowTemplateJobSparkJobLoggingConfig({
    this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final driverLogLevelsValue = driverLogLevels;
    if (driverLogLevelsValue != null) {
      map['driverLogLevels'] = driverLogLevelsValue;
    }
    return map;
  }

  factory WorkflowTemplateJobSparkJobLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplateJobSparkJobLoggingConfig(
      driverLogLevels: map['driverLogLevels'] == null
          ? null
          : (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
