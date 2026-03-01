// ignore_for_file: unused_element, unnecessary_cast

/// The runtime logging config of the job.
class LoggingConfigResponseDataprocV1beta2 {
  /// The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  final Map<String, String> driverLogLevels;

  /// Creates a new [LoggingConfigResponseDataprocV1beta2].
  /// [driverLogLevels] The per-package log levels for the driver. This may include "root" package name to configure rootLogger. Examples: 'com.google = FATAL', 'root = INFO', 'org.apache = DEBUG'
  LoggingConfigResponseDataprocV1beta2({required this.driverLogLevels});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'driverLogLevels': driverLogLevels};
  }

  factory LoggingConfigResponseDataprocV1beta2.fromMap(
    Map<String, dynamic> map,
  ) {
    return LoggingConfigResponseDataprocV1beta2(
      driverLogLevels: (map['driverLogLevels'] as Map).cast<String, String>(),
    );
  }
}
