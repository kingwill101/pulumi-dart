// ignore_for_file: unused_element, unnecessary_cast


class GetRealtimeLogConfigEndpointKinesisStreamConfig {
  /// (Required) ARN of an IAM role that CloudFront can use to send real-time log data to the Kinesis data stream.
  /// See the [AWS documentation](https://docs.aws.amazon.com/AmazonCloudFront/latest/DeveloperGuide/real-time-logs.html#understand-real-time-log-config-iam-role) for more information.
  final String roleArn;
  /// (Required) ARN of the Kinesis data stream.
  final String streamArn;

  /// Creates a new [GetRealtimeLogConfigEndpointKinesisStreamConfig].
  /// [roleArn] (Required) ARN of an IAM role that CloudFront can use to send real-time log data to the Kinesis data stream.
  /// [streamArn] (Required) ARN of the Kinesis data stream.
  GetRealtimeLogConfigEndpointKinesisStreamConfig({
    required this.roleArn,
    required this.streamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'roleArn': roleArn,
      'streamArn': streamArn,
    };
  }

  factory GetRealtimeLogConfigEndpointKinesisStreamConfig.fromMap(Map<String, dynamic> map) {
    return GetRealtimeLogConfigEndpointKinesisStreamConfig(
      roleArn: map['roleArn'] as String,
      streamArn: map['streamArn'] as String,
    );
  }
}

