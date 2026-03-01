// ignore_for_file: unused_element, unnecessary_cast

import 'scheduled_query_notification_configuration_sns_configuration.dart';

class ScheduledQueryNotificationConfiguration {
  /// Configuration block for details about the Amazon Simple Notification Service (SNS) configuration. See below.
  final ScheduledQueryNotificationConfigurationSnsConfiguration snsConfiguration;

  /// Creates a new [ScheduledQueryNotificationConfiguration].
  /// [snsConfiguration] Configuration block for details about the Amazon Simple Notification Service (SNS) configuration. See below.
  ScheduledQueryNotificationConfiguration({
    required this.snsConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'snsConfiguration': snsConfiguration.toMap(),
    };
  }

  factory ScheduledQueryNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return ScheduledQueryNotificationConfiguration(
      snsConfiguration: ScheduledQueryNotificationConfigurationSnsConfiguration.fromMap((map['snsConfiguration'] as Map).cast<String, dynamic>()),
    );
  }
}

