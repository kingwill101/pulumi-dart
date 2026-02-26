// ignore_for_file: unused_element, unnecessary_cast

import '../instance_logging_configuration_access_logs_cloudwatch_logs/instance_logging_configuration_access_logs_cloudwatch_logs.dart';
import '../instance_logging_configuration_access_logs_kinesis_data_firehose/instance_logging_configuration_access_logs_kinesis_data_firehose.dart';
import '../instance_logging_configuration_access_logs_s3/instance_logging_configuration_access_logs_s3.dart';

class InstanceLoggingConfigurationAccessLogs {
  /// A block that specifies configures sending Verified Access logs to CloudWatch Logs. Detailed below.
  final InstanceLoggingConfigurationAccessLogsCloudwatchLogs? cloudwatchLogs;

  /// Include trust data sent by trust providers into the logs.
  final bool? includeTrustContext;

  /// A block that specifies configures sending Verified Access logs to Kinesis. Detailed below.
  final InstanceLoggingConfigurationAccessLogsKinesisDataFirehose?
      kinesisDataFirehose;

  /// The logging version to use. Refer to [VerifiedAccessLogOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VerifiedAccessLogOptions.html) for the allowed values.
  final String? logVersion;

  /// A block that specifies configures sending Verified Access logs to S3. Detailed below.
  final InstanceLoggingConfigurationAccessLogsS3? s3;

  InstanceLoggingConfigurationAccessLogs({
    this.cloudwatchLogs,
    this.includeTrustContext,
    this.kinesisDataFirehose,
    this.logVersion,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudwatchLogsValue = cloudwatchLogs;
    if (cloudwatchLogsValue != null) {
      map['cloudwatchLogs'] = cloudwatchLogsValue.toMap();
    }
    final includeTrustContextValue = includeTrustContext;
    if (includeTrustContextValue != null) {
      map['includeTrustContext'] = includeTrustContextValue;
    }
    final kinesisDataFirehoseValue = kinesisDataFirehose;
    if (kinesisDataFirehoseValue != null) {
      map['kinesisDataFirehose'] = kinesisDataFirehoseValue.toMap();
    }
    final logVersionValue = logVersion;
    if (logVersionValue != null) {
      map['logVersion'] = logVersionValue;
    }
    final s3Value = s3;
    if (s3Value != null) {
      map['s3'] = s3Value.toMap();
    }
    return map;
  }

  factory InstanceLoggingConfigurationAccessLogs.fromMap(
      Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogs(
      cloudwatchLogs: map['cloudwatchLogs'] == null
          ? null
          : InstanceLoggingConfigurationAccessLogsCloudwatchLogs.fromMap(
              (map['cloudwatchLogs'] as Map).cast<String, dynamic>()),
      includeTrustContext: map['includeTrustContext'] == null
          ? null
          : map['includeTrustContext'] as bool,
      kinesisDataFirehose: map['kinesisDataFirehose'] == null
          ? null
          : InstanceLoggingConfigurationAccessLogsKinesisDataFirehose.fromMap(
              (map['kinesisDataFirehose'] as Map).cast<String, dynamic>()),
      logVersion:
          map['logVersion'] == null ? null : map['logVersion'] as String,
      s3: map['s3'] == null
          ? null
          : InstanceLoggingConfigurationAccessLogsS3.fromMap(
              (map['s3'] as Map).cast<String, dynamic>()),
    );
  }
}
