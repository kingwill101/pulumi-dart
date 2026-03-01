// ignore_for_file: unused_element, unnecessary_cast


class RealtimeLogConfigEndpointKinesisStreamConfig {
  /// The ARN of an IAM role that CloudFront can use to send real-time log data to the Kinesis data stream.
  /// See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role) for more information.
  final String roleArn;
  /// The ARN of the Kinesis data stream.
  final String streamArn;

  /// Creates a new [RealtimeLogConfigEndpointKinesisStreamConfig].
  /// [roleArn] The ARN of an IAM role that CloudFront can use to send real-time log data to the Kinesis data stream.
  /// [streamArn] The ARN of the Kinesis data stream.
  RealtimeLogConfigEndpointKinesisStreamConfig({
    required this.roleArn,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'streamArn': streamArn,
    };
  }

  factory RealtimeLogConfigEndpointKinesisStreamConfig.fromMap(Map<String, dynamic> map) {
    return RealtimeLogConfigEndpointKinesisStreamConfig(
      roleArn: map['roleArn'] as String,
      streamArn: map['streamArn'] as String,
    );
  }
}

