// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../subscriber_notification_configuration/subscriber_notification_configuration.dart';

/// The set of arguments for SubscriberNotification.
class SubscriberNotificationArgs {
  /// Specify the configuration using which you want to create the subscriber notification..
  final Input<SubscriberNotificationConfiguration> configuration;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final Input<String>? region;

  /// The subscriber ID for the notification subscription.
  final Input<String> subscriberId;

  SubscriberNotificationArgs({
    required this.configuration,
    this.region,
    required this.subscriberId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['configuration'] = Input.mapInputValue<
        SubscriberNotificationConfiguration,
        Map<String, dynamic>>(configuration, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['subscriberId'] = subscriberId;
    return map;
  }

  factory SubscriberNotificationArgs.fromMap(Map<String, dynamic> map) {
    return SubscriberNotificationArgs(
      configuration: Input.asInput<SubscriberNotificationConfiguration>(
          map['configuration']),
      region: Input.asOptionalInput<String>(map['region']),
      subscriberId: Input.asInput<String>(map['subscriberId']),
    );
  }
}
