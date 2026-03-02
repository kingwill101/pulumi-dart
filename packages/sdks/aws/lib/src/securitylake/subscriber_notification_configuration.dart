// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_notification_configuration_https_notification_configuration.dart';

class SubscriberNotificationConfiguration {
  /// The configurations for HTTPS subscriber notification.
  final pulumi.Input<SubscriberNotificationConfigurationHttpsNotificationConfiguration>? httpsNotificationConfiguration;
  /// The configurations for SQS subscriber notification.
  /// There are no parameters within `sqs_notification_configuration`.
  final pulumi.Input<Map<String, dynamic>>? sqsNotificationConfiguration;

  /// Creates a new [SubscriberNotificationConfiguration].
  /// [httpsNotificationConfiguration] The configurations for HTTPS subscriber notification.
  /// [sqsNotificationConfiguration] The configurations for SQS subscriber notification.
  SubscriberNotificationConfiguration({
    this.httpsNotificationConfiguration,
    this.sqsNotificationConfiguration,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'httpsNotificationConfiguration': ?pulumi.Input.mapOptionalInputValue<SubscriberNotificationConfigurationHttpsNotificationConfiguration, Map<String, dynamic>>(httpsNotificationConfiguration, (value) => value.toMap()),
      'sqsNotificationConfiguration': ?sqsNotificationConfiguration,
    };
  }

  factory SubscriberNotificationConfiguration.fromMap(Map<String, dynamic> map) {
    return SubscriberNotificationConfiguration(
      httpsNotificationConfiguration: map['httpsNotificationConfiguration'] == null ? null : (SubscriberNotificationConfigurationHttpsNotificationConfiguration.fromMap((map['httpsNotificationConfiguration'] as Map).cast<String, dynamic>())).input(),
      sqsNotificationConfiguration: map['sqsNotificationConfiguration'] == null ? null : ((map['sqsNotificationConfiguration'] as Map).cast<String, dynamic>()).input(),
    );
  }
}

