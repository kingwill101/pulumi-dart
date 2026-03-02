// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_watch_logs_config_response.dart';
import 's3_logs_config_response.dart';

/// Definition of LogsConfig
class LogsConfigResponse {
  /// <p> Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. </p>
  final pulumi.Input<CloudWatchLogsConfigResponse>? cloudWatchLogs;
  /// <p> Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. </p>
  final pulumi.Input<S3LogsConfigResponse>? s3Logs;

  /// Creates a new [LogsConfigResponse].
  /// [cloudWatchLogs] <p> Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. </p>
  /// [s3Logs] <p> Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. </p>
  LogsConfigResponse({
    this.cloudWatchLogs,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogs': ?pulumi.Input.mapOptionalInputValue<CloudWatchLogsConfigResponse, Map<String, dynamic>>(cloudWatchLogs, (value) => value.toMap()),
      's3Logs': ?pulumi.Input.mapOptionalInputValue<S3LogsConfigResponse, Map<String, dynamic>>(s3Logs, (value) => value.toMap()),
    };
  }

  factory LogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogsConfigResponse(
      cloudWatchLogs: map['cloudWatchLogs'] == null ? null : (CloudWatchLogsConfigResponse.fromMap((map['cloudWatchLogs']! as Map).cast<String, dynamic>())).input(),
      s3Logs: map['s3Logs'] == null ? null : (S3LogsConfigResponse.fromMap((map['s3Logs']! as Map).cast<String, dynamic>())).input(),
    );
  }
}

