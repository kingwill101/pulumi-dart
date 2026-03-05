// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'project_logs_config_cloudwatch_logs.dart';
import 'project_logs_config_s3_logs.dart';

class ProjectLogsConfig {
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectLogsConfigCloudwatchLogs>? cloudwatchLogs;
  /// Configuration block. Detailed below.
  final pulumi.Input<ProjectLogsConfigS3Logs>? s3Logs;

  /// Creates a new [ProjectLogsConfig].
  /// [cloudwatchLogs] Configuration block. Detailed below.
  /// [s3Logs] Configuration block. Detailed below.
  ProjectLogsConfig({
    this.cloudwatchLogs,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<ProjectLogsConfigCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      's3Logs': ?pulumi.Input.mapOptionalInputValue<ProjectLogsConfigS3Logs, Map<String, dynamic>>(s3Logs, (value) => value.toMap()),
    };
  }

  factory ProjectLogsConfig.fromMap(Map<String, dynamic> map) {
    return ProjectLogsConfig(
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectLogsConfigCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Logs: (() { final guardedValue = map['s3Logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ProjectLogsConfigS3Logs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

