// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_notification_configuration.dart';

/// {@template pulumi_securitylake_subscriber_notification_subscriber_notification_args_doc}
/// The set of arguments for SubscriberNotification.
/// {@endtemplate}
/// {@macro pulumi_securitylake_subscriber_notification_subscriber_notification_args_doc}
class SubscriberNotificationArgs {
  /// Specify the configuration using which you want to create the subscriber notification..
  final pulumi.Input<SubscriberNotificationConfiguration> configuration;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The subscriber ID for the notification subscription.
  final pulumi.Input<String> subscriberId;

  /// Creates a new [SubscriberNotificationArgs].
  /// [configuration] Specify the configuration using which you want to create the subscriber notification..
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subscriberId] The subscriber ID for the notification subscription.
  SubscriberNotificationArgs({
    required this.configuration,
    this.region,
    required this.subscriberId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': pulumi.Input.mapInputValue<SubscriberNotificationConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'region': ?region,
      'subscriberId': subscriberId,
    };
  }

  factory SubscriberNotificationArgs.fromMap(Map<String, dynamic> map) {
    return SubscriberNotificationArgs(
      configuration: (SubscriberNotificationConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      subscriberId: (map['subscriberId'] as String).input(),
    );
  }
}

