// ignore_for_file: unused_element, unnecessary_cast

/// The runtime logging config of the job.
class LoggingConfigResponse3 {
  /// The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'
  final Map<String, String> driverLogLevels;

  LoggingConfigResponse3({
    required this.driverLogLevels,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['driverLogLevels'] = driverLogLevels;
    return map;
  }

  factory LoggingConfigResponse3.fromMap(Map<String, dynamic> map) {
    return LoggingConfigResponse3(
      driverLogLevels: (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
