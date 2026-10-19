// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'channel_logging_info_cloudwatch_logs.dart';
import 'channel_logging_info_firehose.dart';
import 'channel_logging_info_s3.dart';

class ChannelLoggingInfo {
  /// CloudWatch Logs destination for channel logs. See `cloudwatchLogs` Block below.
  final pulumi.Input<ChannelLoggingInfoCloudwatchLogs?>? cloudwatchLogs;
  /// Kinesis Data Firehose delivery stream destination for channel logs. See `firehose` Block below.
  final pulumi.Input<ChannelLoggingInfoFirehose?>? firehose;
  /// Amazon S3 destination for channel logs. See `s3` Block below.
  final pulumi.Input<ChannelLoggingInfoS3?>? s3;

  /// Creates a new [ChannelLoggingInfo].
  /// [cloudwatchLogs] CloudWatch Logs destination for channel logs. See `cloudwatchLogs` Block below.
  /// [firehose] Kinesis Data Firehose delivery stream destination for channel logs. See `firehose` Block below.
  /// [s3] Amazon S3 destination for channel logs. See `s3` Block below.
  const ChannelLoggingInfo({
    this.cloudwatchLogs,
    this.firehose,
    this.s3,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudwatchLogs': ?pulumi.Input.mapOptionalInputValue<ChannelLoggingInfoCloudwatchLogs, Map<String, dynamic>>(cloudwatchLogs, (value) => value.toMap()),
      'firehose': ?pulumi.Input.mapOptionalInputValue<ChannelLoggingInfoFirehose, Map<String, dynamic>>(firehose, (value) => value.toMap()),
      's3': ?pulumi.Input.mapOptionalInputValue<ChannelLoggingInfoS3, Map<String, dynamic>>(s3, (value) => value.toMap()),
    };
  }

  factory ChannelLoggingInfo.fromMap(Map<String, dynamic> map) {
    return ChannelLoggingInfo(
      cloudwatchLogs: (() { final guardedValue = map['cloudwatchLogs']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelLoggingInfoCloudwatchLogs.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      firehose: (() { final guardedValue = map['firehose']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelLoggingInfoFirehose.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      s3: (() { final guardedValue = map['s3']; if (guardedValue == null) return null; return pulumi.Input.fromValue(ChannelLoggingInfoS3.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
