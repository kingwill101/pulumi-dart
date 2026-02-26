// ignore_for_file: unused_element, unnecessary_cast

class WorkteamNotificationConfiguration {
  /// The ARN for the SNS topic to which notifications should be published.
  final String? notificationTopicArn;

  WorkteamNotificationConfiguration({
    this.notificationTopicArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final notificationTopicArnValue = notificationTopicArn;
    if (notificationTopicArnValue != null) {
      map['notificationTopicArn'] = notificationTopicArnValue;
    }
    return map;
  }

  factory WorkteamNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return WorkteamNotificationConfiguration(
      notificationTopicArn: map['notificationTopicArn'] == null
          ? null
          : map['notificationTopicArn'] as String,
    );
  }
}
