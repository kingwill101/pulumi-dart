// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_logger_log_configuration_s3.dart';

class SessionLoggerLogConfiguration {
  /// Configuration block for S3 log delivery. See S3 Configuration below.
  final pulumi.Input<SessionLoggerLogConfigurationS3>? s3;

  /// Creates a new [SessionLoggerLogConfiguration].
  /// [s3] Configuration block for S3 log delivery. See S3 Configuration below.
  const SessionLoggerLogConfiguration({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': ?pulumi.Input.mapOptionalInputValue<SessionLoggerLogConfigurationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory SessionLoggerLogConfiguration.fromMap(Map<String, dynamic> map) {
    return SessionLoggerLogConfiguration(
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SessionLoggerLogConfigurationS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

