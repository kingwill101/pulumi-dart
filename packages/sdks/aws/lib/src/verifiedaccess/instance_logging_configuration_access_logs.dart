// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'instance_logging_configuration_access_logs_cloudwatch_logs.dart';
import 'instance_logging_configuration_access_logs_kinesis_data_firehose.dart';
import 'instance_logging_configuration_access_logs_s3.dart';

class InstanceLoggingConfigurationAccessLogs {
  /// A block that specifies configures sending Verified Access logs to CloudWatch Logs. Detailed below.
  final pulumi.Input<InstanceLoggingConfigurationAccessLogsCloudwatchLogs>? cloudwatchLogs;
  /// Include trust data sent by trust providers into the logs.
  final pulumi.Input<bool>? includeTrustContext;
  /// A block that specifies configures sending Verified Access logs to Kinesis. Detailed below.
  final pulumi.Input<InstanceLoggingConfigurationAccessLogsKinesisDataFirehose>? kinesisDataFirehose;
  /// The logging version to use. Refer to [VerifiedAccessLogOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VerifiedAccessLogOptions.html) for the allowed values.
  final pulumi.Input<String>? logVersion;
  /// A block that specifies configures sending Verified Access logs to S3. Detailed below.
  final pulumi.Input<InstanceLoggingConfigurationAccessLogsS3>? s3;

  /// Creates a new [InstanceLoggingConfigurationAccessLogs].
  /// [cloudwatchLogs] A block that specifies configures sending Verified Access logs to CloudWatch Logs. Detailed below.
  /// [includeTrustContext] Include trust data sent by trust providers into the logs.
  /// [kinesisDataFirehose] A block that specifies configures sending Verified Access logs to Kinesis. Detailed below.
  /// [logVersion] The logging version to use. Refer to [VerifiedAccessLogOptions](https://docs.aws.amazon.com/AWSEC2/latest/APIReference/API_VerifiedAccessLogOptions.html) for the allowed values.
  /// [s3] A block that specifies configures sending Verified Access logs to S3. Detailed below.
  InstanceLoggingConfigurationAccessLogs({
    this.cloudwatchLogs,
    this.includeTrustContext,
    this.kinesisDataFirehose,
    this.logVersion,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<InstanceLoggingConfigurationAccessLogsCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'includeTrustContext': ?includeTrustContext,
      'kinesisDataFirehose': ?pulumi.Input.mapOptionalInputValue<InstanceLoggingConfigurationAccessLogsKinesisDataFirehose, Map<String, dynamic>>(kinesisDataFirehose, (value) => value.toMap()),
      'logVersion': ?logVersion,
      's3': ?pulumi.Input.mapOptionalInputValue<InstanceLoggingConfigurationAccessLogsS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory InstanceLoggingConfigurationAccessLogs.fromMap(Map<String, dynamic> map) {
    return InstanceLoggingConfigurationAccessLogs(
      cloudwatchLogs: map['cloudwatchLogs'] == null ? null : ((InstanceLoggingConfigurationAccessLogsCloudwatchLogs.fromMap((map['cloudwatchLogs']! as Map).cast<String, dynamic>())).input()).input(),
      includeTrustContext: map['includeTrustContext'] == null ? null : ((map['includeTrustContext'] as bool).input()).input(),
      kinesisDataFirehose: map['kinesisDataFirehose'] == null ? null : ((InstanceLoggingConfigurationAccessLogsKinesisDataFirehose.fromMap((map['kinesisDataFirehose']! as Map).cast<String, dynamic>())).input()).input(),
      logVersion: map['logVersion'] == null ? null : ((map['logVersion'] as String).input()).input(),
      s3: map['s3'] == null ? null : ((InstanceLoggingConfigurationAccessLogsS3.fromMap((map['s3']! as Map).cast<String, dynamic>())).input()).input(),
    );
  }
}

