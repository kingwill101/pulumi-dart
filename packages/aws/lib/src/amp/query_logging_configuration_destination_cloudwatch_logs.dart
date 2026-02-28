// ignore_for_file: unused_element, unnecessary_cast

class QueryLoggingConfigurationDestinationCloudwatchLogs {
  /// The ARN of the CloudWatch log group to which query logs will be sent. The ARN must end with `:*`
  final String logGroupArn;

  /// Creates a new [QueryLoggingConfigurationDestinationCloudwatchLogs].
  /// [logGroupArn] The ARN of the CloudWatch log group to which query logs will be sent. The ARN must end with `:*`
  QueryLoggingConfigurationDestinationCloudwatchLogs({
    required this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['logGroupArn'] = logGroupArn;
    return map;
  }

  factory QueryLoggingConfigurationDestinationCloudwatchLogs.fromMap(
      Map<String, dynamic> map) {
    return QueryLoggingConfigurationDestinationCloudwatchLogs(
      logGroupArn: map['logGroupArn'] as String,
    );
  }
}
