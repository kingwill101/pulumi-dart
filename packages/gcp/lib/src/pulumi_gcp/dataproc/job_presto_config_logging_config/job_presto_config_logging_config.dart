// ignore_for_file: unused_element, unnecessary_cast

class JobPrestoConfigLoggingConfig {
  /// Optional. The per-package log levels for the driver. This may include 'root' package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'.
  final Map<String, String> driverLogLevels;

  JobPrestoConfigLoggingConfig({
    required this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['driverLogLevels'] = driverLogLevels;
    return map;
  }

  factory JobPrestoConfigLoggingConfig.fromMap(Map<String, dynamic> map) {
    return JobPrestoConfigLoggingConfig(
      driverLogLevels: (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
