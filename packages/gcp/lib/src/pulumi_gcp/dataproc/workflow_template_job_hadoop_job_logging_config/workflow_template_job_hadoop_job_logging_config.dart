// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplateJobHadoopJobLoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String>? driverLogLevels;

  WorkflowTemplateJobHadoopJobLoggingConfig({
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

  factory WorkflowTemplateJobHadoopJobLoggingConfig.fromMap(
      Map<String, dynamic> map) {
    return WorkflowTemplateJobHadoopJobLoggingConfig(
      driverLogLevels: map['driverLogLevels'] == null
          ? null
          : (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
