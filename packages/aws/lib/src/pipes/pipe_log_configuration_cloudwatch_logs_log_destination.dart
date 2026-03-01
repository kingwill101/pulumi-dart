// ignore_for_file: unused_element, unnecessary_cast


class PipeLogConfigurationCloudwatchLogsLogDestination {
  /// Amazon Web Services Resource Name (ARN) for the CloudWatch log group to which EventBridge sends the log records.
  final String logGroupArn;

  /// Creates a new [PipeLogConfigurationCloudwatchLogsLogDestination].
  /// [logGroupArn] Amazon Web Services Resource Name (ARN) for the CloudWatch log group to which EventBridge sends the log records.
  PipeLogConfigurationCloudwatchLogsLogDestination({
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'logGroupArn': logGroupArn,
    };
  }

  factory PipeLogConfigurationCloudwatchLogsLogDestination.fromMap(Map<String, dynamic> map) {
    return PipeLogConfigurationCloudwatchLogsLogDestination(
      logGroupArn: map['logGroupArn'] as String,
    );
  }
}

