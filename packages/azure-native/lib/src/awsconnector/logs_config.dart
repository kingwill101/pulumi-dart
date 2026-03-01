// ignore_for_file: unused_element, unnecessary_cast

import 'cloud_watch_logs_config.dart';
import 's3_logs_config.dart';

/// Definition of LogsConfig
class LogsConfig {
  /// <p> Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. </p>
  final CloudWatchLogsConfig? cloudWatchLogs;
  /// <p> Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. </p>
  final S3LogsConfig? s3Logs;

  /// Creates a new [LogsConfig].
  /// [cloudWatchLogs] <p> Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. </p>
  /// [s3Logs] <p> Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. </p>
  LogsConfig({
    this.cloudWatchLogs,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogs': ?cloudWatchLogs == null ? null : cloudWatchLogs!.toMap(),
      's3Logs': ?s3Logs == null ? null : s3Logs!.toMap(),
    };
  }

  factory LogsConfig.fromMap(Map<String, dynamic> map) {
    return LogsConfig(
      cloudWatchLogs: map['cloudWatchLogs'] == null ? null : CloudWatchLogsConfig.fromMap((map['cloudWatchLogs'] as Map).cast<String, dynamic>()),
      s3Logs: map['s3Logs'] == null ? null : S3LogsConfig.fromMap((map['s3Logs'] as Map).cast<String, dynamic>()),
    );
  }
}

