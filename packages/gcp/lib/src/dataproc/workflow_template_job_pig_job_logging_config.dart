// ignore_for_file: unused_element, unnecessary_cast

class WorkflowTemplateJobPigJobLoggingConfig {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String>? driverLogLevels;

  /// Creates a new [WorkflowTemplateJobPigJobLoggingConfig].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  WorkflowTemplateJobPigJobLoggingConfig({this.driverLogLevels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'driverLogLevels': ?driverLogLevels};
  }

  factory WorkflowTemplateJobPigJobLoggingConfig.fromMap(
    Map<String, dynamic> map,
  ) {
    return WorkflowTemplateJobPigJobLoggingConfig(
      driverLogLevels: map['driverLogLevels'] == null
          ? null
          : (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
