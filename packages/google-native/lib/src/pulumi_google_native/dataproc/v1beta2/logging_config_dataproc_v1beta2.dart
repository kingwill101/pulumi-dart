// ignore_for_file: unused_element, unnecessary_cast

/// The runtime logging config of the job.
class LoggingConfigDataprocV1beta2 {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String>? driverLogLevels;

  LoggingConfigDataprocV1beta2({
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

  factory LoggingConfigDataprocV1beta2.fromMap(Map<String, dynamic> map) {
    return LoggingConfigDataprocV1beta2(
      driverLogLevels: map['driverLogLevels'] == null
          ? null
          : (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
