// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'infrastructure_configuration_logging_s3_logs.dart';

class InfrastructureConfigurationLogging {
  /// Configuration block with S3 logging settings. Detailed below.
  final pulumi.Input<InfrastructureConfigurationLoggingS3Logs> s3Logs;

  /// Creates a new [InfrastructureConfigurationLogging].
  /// [s3Logs] Configuration block with S3 logging settings. Detailed below.
  InfrastructureConfigurationLogging({
    required this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Logs': pulumi.Input.mapInputValue<InfrastructureConfigurationLoggingS3Logs, Map<String, dynamic>>(s3Logs, (value) => value.toMap()),
    };
  }

  factory InfrastructureConfigurationLogging.fromMap(Map<String, dynamic> map) {
    return InfrastructureConfigurationLogging(
      s3Logs: pulumi.Input.fromValue(InfrastructureConfigurationLoggingS3Logs.fromMap((map['s3Logs']! as Map).cast<String, dynamic>())),
    );
  }
}

