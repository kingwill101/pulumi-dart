// ignore_for_file: unused_element, unnecessary_cast

/// The runtime logging config of the job.
class LoggingConfig3 {
  /// The per-package log levels for the driver. This can include "root" package name to configure rootLogger. Examples: - 'com.google = FATAL' - 'root = INFO' - 'org.apache = DEBUG'
  final Map<String, String>? driverLogLevels;

  LoggingConfig3({
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

  factory LoggingConfig3.fromMap(Map<String, dynamic> map) {
    return LoggingConfig3(
      driverLogLevels: map['driverLogLevels'] == null
          ? null
          : (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
