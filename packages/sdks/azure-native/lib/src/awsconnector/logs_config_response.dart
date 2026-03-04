// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_watch_logs_config_response.dart';
import 's3_logs_config_response.dart';

/// Definition of LogsConfig
class LogsConfigResponse {
  /// &lt;p&gt; Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. &lt;/p&gt;
  final pulumi.Input<CloudWatchLogsConfigResponse>? cloudWatchLogs;

  /// &lt;p&gt; Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. &lt;/p&gt;
  final pulumi.Input<S3LogsConfigResponse>? s3Logs;

  /// Creates a new [LogsConfigResponse].
  /// [cloudWatchLogs] &lt;p&gt; Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. &lt;/p&gt;
  /// [s3Logs] &lt;p&gt; Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. &lt;/p&gt;
  LogsConfigResponse({this.cloudWatchLogs, this.s3Logs});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogs':
          ?pulumi.Input.mapOptionalInputValue<
            CloudWatchLogsConfigResponse,
            Map<String, dynamic>
          >(cloudWatchLogs, (value) => value.toMap()),
      's3Logs':
          ?pulumi.Input.mapOptionalInputValue<
            S3LogsConfigResponse,
            Map<String, dynamic>
          >(s3Logs, (value) => value.toMap()),
    };
  }

  factory LogsConfigResponse.fromMap(Map<String, dynamic> map) {
    return LogsConfigResponse(
      cloudWatchLogs: (() {
        final guardedValue = map['cloudWatchLogs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          CloudWatchLogsConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
      s3Logs: (() {
        final guardedValue = map['s3Logs'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(
          S3LogsConfigResponse.fromMap(
            (guardedValue as Map).cast<String, dynamic>(),
          ),
        );
      })(),
    );
  }
}
