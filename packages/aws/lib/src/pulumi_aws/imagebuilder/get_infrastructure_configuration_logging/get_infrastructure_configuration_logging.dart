// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_infrastructure_configuration_logging_s3_log/get_infrastructure_configuration_logging_s3_log.dart';

class GetInfrastructureConfigurationLogging {
  /// Nested list of S3 logs settings.
  final List<GetInfrastructureConfigurationLoggingS3Log> s3Logs;

  GetInfrastructureConfigurationLogging({
    required this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['s3Logs'] = pulumi.Input.encodeList<
        GetInfrastructureConfigurationLoggingS3Log,
        Map<String, dynamic>>(s3Logs, (value) => value.toMap());
    return map;
  }

  factory GetInfrastructureConfigurationLogging.fromMap(
      Map<String, dynamic> map) {
    return GetInfrastructureConfigurationLogging(
      s3Logs:
          pulumi.Input.decodeList<GetInfrastructureConfigurationLoggingS3Log>(
              map['s3Logs'],
              (value) => GetInfrastructureConfigurationLoggingS3Log.fromMap(
                  (value as Map).cast<String, dynamic>())),
    );
  }
}
