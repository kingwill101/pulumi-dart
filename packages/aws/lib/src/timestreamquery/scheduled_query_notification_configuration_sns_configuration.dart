// ignore_for_file: unused_element, unnecessary_cast

class ScheduledQueryNotificationConfigurationSnsConfiguration {
  /// SNS topic ARN that the scheduled query status notifications will be sent to.
  final String topicArn;

  /// Creates a new [ScheduledQueryNotificationConfigurationSnsConfiguration].
  /// [topicArn] SNS topic ARN that the scheduled query status notifications will be sent to.
  ScheduledQueryNotificationConfigurationSnsConfiguration({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['topicArn'] = topicArn;
    return map;
  }

  factory ScheduledQueryNotificationConfigurationSnsConfiguration.fromMap(
      Map<String, dynamic> map) {
    return ScheduledQueryNotificationConfigurationSnsConfiguration(
      topicArn: map['topicArn'] as String,
    );
  }
}
