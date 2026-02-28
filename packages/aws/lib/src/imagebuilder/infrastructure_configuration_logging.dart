// ignore_for_file: unused_element, unnecessary_cast

import 'infrastructure_configuration_logging_s3_logs.dart';

class InfrastructureConfigurationLogging {
  /// Configuration block with S3 logging settings. Detailed below.
  final InfrastructureConfigurationLoggingS3Logs s3Logs;

  /// Creates a new [InfrastructureConfigurationLogging].
  /// [s3Logs] Configuration block with S3 logging settings. Detailed below.
  InfrastructureConfigurationLogging({
    required this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Logs'] = s3Logs.toMap();
    return map;
  }

  factory InfrastructureConfigurationLogging.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationLogging(
      s3Logs: InfrastructureConfigurationLoggingS3Logs.fromMap(
          (map['s3Logs'] as Map).cast<String, dynamic>()),
    );
  }
}
