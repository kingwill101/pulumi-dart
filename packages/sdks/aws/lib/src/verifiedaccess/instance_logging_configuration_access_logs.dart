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
  const InstanceLoggingConfigurationAccessLogs({
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
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceLoggingConfigurationAccessLogsCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      includeTrustContext: (() { final guardedValue = map['includeTrustContext']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      kinesisDataFirehose: (() { final guardedValue = map['kinesisDataFirehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceLoggingConfigurationAccessLogsKinesisDataFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      logVersion: (() { final guardedValue = map['logVersion']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(InstanceLoggingConfigurationAccessLogsS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}

