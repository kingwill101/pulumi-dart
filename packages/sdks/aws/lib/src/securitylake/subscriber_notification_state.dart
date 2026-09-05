// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_notification_configuration.dart';

/// Input properties used for looking up and filtering SubscriberNotification resources.
class SubscriberNotificationState {
  /// Specify the configuration using which you want to create the subscriber notification..
  final pulumi.Input<SubscriberNotificationConfiguration?>? configuration;
  /// (**Deprecated**) The subscriber endpoint to which exception messages are posted.
  final pulumi.Input<String?>? endpointId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The subscriber endpoint to which exception messages are posted.
  final pulumi.Input<String?>? subscriberEndpoint;
  /// The subscriber ID for the notification subscription.
  final pulumi.Input<String?>? subscriberId;

  /// Creates a new [SubscriberNotificationState].
  /// [configuration] Specify the configuration using which you want to create the subscriber notification..
  /// [endpointId] (**Deprecated**) The subscriber endpoint to which exception messages are posted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subscriberEndpoint] The subscriber endpoint to which exception messages are posted.
  /// [subscriberId] The subscriber ID for the notification subscription.
  const SubscriberNotificationState({
    this.configuration,
    this.endpointId,
    this.region,
    this.subscriberEndpoint,
    this.subscriberId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuration': ?pulumi.Input.mapOptionalInputValue<SubscriberNotificationConfiguration, Map<String, dynamic>>(configuration, (value) => value.toMap()),
      'endpointId': ?endpointId,
      'region': ?region,
      'subscriberEndpoint': ?subscriberEndpoint,
      'subscriberId': ?subscriberId,
    };
  }

  factory SubscriberNotificationState.fromMap(Map<String, dynamic> map) {
    return SubscriberNotificationState(
      configuration: (() { final guardedValue = map['configuration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(SubscriberNotificationConfiguration.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      endpointId: (() { final guardedValue = map['endpointId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriberEndpoint: (() { final guardedValue = map['subscriberEndpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      subscriberId: (() { final guardedValue = map['subscriberId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
