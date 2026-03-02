// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'subscriber_notification_configuration.dart';

/// Input properties used for looking up and filtering SubscriberNotification resources.
class SubscriberNotificationState {
  /// Specify the configuration using which you want to create the subscriber notification..
  final pulumi.Input<SubscriberNotificationConfiguration>? configuration;
  /// (**Deprecated**) The subscriber endpoint to which exception messages are posted.
  final pulumi.Input<String>? endpointId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The subscriber endpoint to which exception messages are posted.
  final pulumi.Input<String>? subscriberEndpoint;
  /// The subscriber ID for the notification subscription.
  final pulumi.Input<String>? subscriberId;

  /// Creates a new [SubscriberNotificationState].
  /// [configuration] Specify the configuration using which you want to create the subscriber notification..
  /// [endpointId] (**Deprecated**) The subscriber endpoint to which exception messages are posted.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [subscriberEndpoint] The subscriber endpoint to which exception messages are posted.
  /// [subscriberId] The subscriber ID for the notification subscription.
  SubscriberNotificationState({
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
      configuration: map['configuration'] == null ? null : ((SubscriberNotificationConfiguration.fromMap((map['configuration']! as Map).cast<String, dynamic>())).input()).input(),
      endpointId: map['endpointId'] == null ? null : ((map['endpointId'] as String).input()).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
      subscriberEndpoint: map['subscriberEndpoint'] == null ? null : ((map['subscriberEndpoint'] as String).input()).input(),
      subscriberId: map['subscriberId'] == null ? null : ((map['subscriberId'] as String).input()).input(),
    );
  }
}

