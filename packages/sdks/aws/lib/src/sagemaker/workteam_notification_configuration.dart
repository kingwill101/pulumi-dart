// ignore_for_file: unused_element, unnecessary_cast


class WorkteamNotificationConfiguration {
  /// The ARN for the SNS topic to which notifications should be published.
  final String? notificationTopicArn;

  /// Creates a new [WorkteamNotificationConfiguration].
  /// [notificationTopicArn] The ARN for the SNS topic to which notifications should be published.
  WorkteamNotificationConfiguration({
    this.notificationTopicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'notificationTopicArn': ?notificationTopicArn,
    };
  }

  factory WorkteamNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkteamNotificationConfiguration(
      notificationTopicArn: map['notificationTopicArn'] == null ? null : map['notificationTopicArn'] as String,
    );
  }
}

