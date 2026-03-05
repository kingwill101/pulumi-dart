// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_watch_logs_config.dart';
import 's3_logs_config.dart';

/// Definition of LogsConfig
class LogsConfig {
  /// &lt;p&gt; Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. &lt;/p&gt;
  final pulumi.Input<CloudWatchLogsConfig>? cloudWatchLogs;
  /// &lt;p&gt; Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. &lt;/p&gt;
  final pulumi.Input<S3LogsConfig>? s3Logs;

  /// Creates a new [LogsConfig].
  /// [cloudWatchLogs] &lt;p&gt; Information about CloudWatch Logs for a build project. CloudWatch Logs are enabled by default. &lt;/p&gt;
  /// [s3Logs] &lt;p&gt; Information about logs built to an S3 bucket for a build project. S3 logs are not enabled by default. &lt;/p&gt;
  LogsConfig({
    this.cloudWatchLogs,
    this.s3Logs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudWatchLogs': ?pulumi.Input.mapOptionalInputValue<CloudWatchLogsConfig, Map<String, dynamic>>(cloudWatchLogs, (value) => value.toMap()),
      's3Logs': ?pulumi.Input.mapOptionalInputValue<S3LogsConfig, Map<String, dynamic>>(s3Logs, (value) => value.toMap()),
    };
  }

  factory LogsConfig.fromMap(Map<String, dynamic> map) {
    return LogsConfig(
      cloudWatchLogs: (() { final guardedValue = map['cloudWatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CloudWatchLogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3Logs: (() { final guardedValue = map['s3Logs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(S3LogsConfig.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

