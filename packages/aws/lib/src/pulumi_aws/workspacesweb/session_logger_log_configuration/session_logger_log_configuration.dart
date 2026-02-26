// ignore_for_file: unused_element, unnecessary_cast

import '../session_logger_log_configuration_s3/session_logger_log_configuration_s3.dart';

class SessionLoggerLogConfiguration {
  /// Configuration block for S3 log delivery. See S3 Configuration below.
  final SessionLoggerLogConfigurationS3? s3;

  SessionLoggerLogConfiguration({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory SessionLoggerLogConfiguration.fromMap(Map<String, dynamic> map) {
    return SessionLoggerLogConfiguration(
      s3: map['s3'] == null
          ? null
          : SessionLoggerLogConfigurationS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
