// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ScheduledQueryNotificationConfigurationSnsConfiguration {
  /// SNS topic ARN that the scheduled query status notifications will be sent to.
  final pulumi.Input<String> topicArn;

  /// Creates a new [ScheduledQueryNotificationConfigurationSnsConfiguration].
  /// [topicArn] SNS topic ARN that the scheduled query status notifications will be sent to.
  ScheduledQueryNotificationConfigurationSnsConfiguration({
    required this.topicArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'topicArn': topicArn,
    };
  }

  factory ScheduledQueryNotificationConfigurationSnsConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryNotificationConfigurationSnsConfiguration(
      topicArn: (map['topicArn'] as String).input(),
    );
  }
}

