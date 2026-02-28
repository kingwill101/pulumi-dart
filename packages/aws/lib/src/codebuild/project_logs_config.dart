// ignore_for_file: unused_element, unnecessary_cast

import 'project_logs_config_cloudwatch_logs.dart';
import 'project_logs_config_s3_logs.dart';

class ProjectLogsConfig {
  /// Configuration block. Detailed below.
  final ProjectLogsConfigCloudwatchLogs? cloudwatchLogs;

  /// Configuration block. Detailed below.
  final ProjectLogsConfigS3Logs? s3Logs;

  /// Creates a new [ProjectLogsConfig].
  /// [cloudwatchLogs] Configuration block. Detailed below.
  /// [s3Logs] Configuration block. Detailed below.
  ProjectLogsConfig({
    this.cloudwatchLogs,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogsValue = cloudwatchLogs;
    if (cloudwatchLogsValue != null) {
      map['cloudwatchLogs'] = cloudwatchLogsValue.toMap();
    }
    final s3LogsValue = s3Logs;
    if (s3LogsValue != null) {
      map['s3Logs'] = s3LogsValue.toMap();
    }
    return map;
  }

  factory ProjectLogsConfig.fromMap(Map<String, dynamic> map) {
    return ProjectLogsConfig(
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : ProjectLogsConfigCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      s3Logs: map['s3Logs'] == null
          ? null
          : ProjectLogsConfigS3Logs.fromMap(
              (map['s3Logs'] as Map).cast<String, dynamic>()),
    );
  }
}
