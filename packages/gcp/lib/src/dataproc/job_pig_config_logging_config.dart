// ignore_for_file: unused_element, unnecessary_cast

class JobPigConfigLoggingConfig {
  /// Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
  final Map<String, String> driverLogLevels;

  /// Creates a new [JobPigConfigLoggingConfig].
  /// [driverLogLevels] Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
  JobPigConfigLoggingConfig({required this.driverLogLevels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'driverLogLevels': driverLogLevels};
  }

  factory JobPigConfigLoggingConfig.fromMap(Map<String, dynamic> map) {
    return JobPigConfigLoggingConfig(
      driverLogLevels: (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
