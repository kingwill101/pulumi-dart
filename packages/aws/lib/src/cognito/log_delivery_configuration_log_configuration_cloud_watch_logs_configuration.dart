// ignore_for_file: unused_element, unnecessary_cast

class LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration {
  /// The ARN of the CloudWatch Logs log group to which the logs should be delivered.
  final String? logGroupArn;

  /// Creates a new [LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration].
  /// [logGroupArn] The ARN of the CloudWatch Logs log group to which the logs should be delivered.
  LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration({
    this.logGroupArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final logGroupArnValue = logGroupArn;
    if (logGroupArnValue != null) {
      map['logGroupArn'] = logGroupArnValue;
    }
    return map;
  }

  factory LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return LogDeliveryConfigurationLogConfigurationCloudWatchLogsConfiguration(
      logGroupArn:
          map['logGroupArn'] == null ? null : map['logGroupArn'] as String,
    );
  }
}
