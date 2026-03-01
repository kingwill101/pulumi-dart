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
    pulumi.Output<SubscriberNotificationConfiguration>? configuration,
    pulumi.Output<String>? endpointId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? subscriberEndpoint,
    pulumi.Output<String>? subscriberId,
  }) :
      configuration = pulumi.Input.asOptionalInput<SubscriberNotificationConfiguration>(configuration),
      endpointId = pulumi.Input.asOptionalInput<String>(endpointId),
      region = pulumi.Input.asOptionalInput<String>(region),
      subscriberEndpoint = pulumi.Input.asOptionalInput<String>(subscriberEndpoint),
      subscriberId = pulumi.Input.asOptionalInput<String>(subscriberId);

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
      configuration: map['configuration'] == null ? null : pulumi.Output.create<SubscriberNotificationConfiguration>(SubscriberNotificationConfiguration.fromMap((map['configuration'] as Map).cast<String, dynamic>())),
      endpointId: map['endpointId'] == null ? null : pulumi.Output.create<String>(map['endpointId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      subscriberEndpoint: map['subscriberEndpoint'] == null ? null : pulumi.Output.create<String>(map['subscriberEndpoint'] as String),
      subscriberId: map['subscriberId'] == null ? null : pulumi.Output.create<String>(map['subscriberId'] as String),
    );
  }
}

