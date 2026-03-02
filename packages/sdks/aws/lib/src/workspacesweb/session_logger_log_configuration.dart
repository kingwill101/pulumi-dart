// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'session_logger_log_configuration_s3.dart';

class SessionLoggerLogConfiguration {
  /// Configuration block for S3 log delivery. See S3 Configuration below.
  final pulumi.Input<SessionLoggerLogConfigurationS3>? s3;

  /// Creates a new [SessionLoggerLogConfiguration].
  /// [s3] Configuration block for S3 log delivery. See S3 Configuration below.
  SessionLoggerLogConfiguration({
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3': ?pulumi.Input.mapOptionalInputValue<SessionLoggerLogConfigurationS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory SessionLoggerLogConfiguration.fromMap(Map<String, dynamic> map) {
    return SessionLoggerLogConfiguration(
      s3: map['s3'] == null ? null : ((SessionLoggerLogConfigurationS3.fromMap((map['s3']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

