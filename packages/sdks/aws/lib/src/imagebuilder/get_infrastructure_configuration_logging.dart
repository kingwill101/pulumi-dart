// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_infrastructure_configuration_logging_s3_log.dart';

class GetInfrastructureConfigurationLogging {
  /// Nested list of S3 logs settings.
  final pulumi.Input<List<GetInfrastructureConfigurationLoggingS3Log>> s3Logs;

  /// Creates a new [GetInfrastructureConfigurationLogging].
  /// [s3Logs] Nested list of S3 logs settings.
  GetInfrastructureConfigurationLogging({
    required this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      's3Logs': pulumi.Input.mapInputValue<List<GetInfrastructureConfigurationLoggingS3Log>, List<Map<String, dynamic>>>(s3Logs, (value) => pulumi.Input.encodeList<GetInfrastructureConfigurationLoggingS3Log, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetInfrastructureConfigurationLogging.fromMap(Map<String, dynamic> map) {
    return GetInfrastructureConfigurationLogging(
      s3Logs: (pulumi.Input.decodeList<GetInfrastructureConfigurationLoggingS3Log>(map['s3Logs']!, (value) => GetInfrastructureConfigurationLoggingS3Log.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

