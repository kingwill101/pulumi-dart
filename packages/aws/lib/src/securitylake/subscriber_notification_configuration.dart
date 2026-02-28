// ignore_for_file: unused_element, unnecessary_cast

import 'subscriber_notification_configuration_https_notification_configuration.dart';

class SubscriberNotificationConfiguration {
  /// The configurations for HTTPS subscriber notification.
  final SubscriberNotificationConfigurationHttpsNotificationConfiguration?
      httpsNotificationConfiguration;

  /// The configurations for SQS subscriber notification.
  /// There are no parameters within `sqs_notification_configuration`.
  final Map<String, dynamic>? sqsNotificationConfiguration;

  /// Creates a new [SubscriberNotificationConfiguration].
  /// [httpsNotificationConfiguration] The configurations for HTTPS subscriber notification.
  /// [sqsNotificationConfiguration] The configurations for SQS subscriber notification.
  SubscriberNotificationConfiguration({
    this.httpsNotificationConfiguration,
    this.sqsNotificationConfiguration,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final httpsNotificationConfigurationValue = httpsNotificationConfiguration;
    if (httpsNotificationConfigurationValue != null) {
      map['httpsNotificationConfiguration'] =
          httpsNotificationConfigurationValue.toMap();
    }
    final sqsNotificationConfigurationValue = sqsNotificationConfiguration;
    if (sqsNotificationConfigurationValue != null) {
      map['sqsNotificationConfiguration'] = sqsNotificationConfigurationValue;
    }
    return map;
  }

  factory SubscriberNotificationConfiguration.fromMap(
      Map<String, dynamic> map) {
    return SubscriberNotificationConfiguration(
      httpsNotificationConfiguration: map['httpsNotificationConfiguration'] ==
              null
          ? null
          : SubscriberNotificationConfigurationHttpsNotificationConfiguration
              .fromMap((map['httpsNotificationConfiguration'] as Map)
                  .cast<String, dynamic>()),
      sqsNotificationConfiguration: map['sqsNotificationConfiguration'] == null
          ? null
          : (map['sqsNotificationConfiguration'] as Map)
              .cast<String, dynamic>(),
    );
  }
}
