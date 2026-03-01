// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering EventBusPolicy resources.
class EventBusPolicyState {
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  final pulumi.Input<String>? eventBusName;
  /// The text of the policy.
  final pulumi.Input<String>? policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventBusPolicyState].
  /// [eventBusName] The name of the event bus to set the permissions on.
  /// [policy] The text of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventBusPolicyState({
    pulumi.Output<String>? eventBusName,
    pulumi.Output<String>? policy,
    pulumi.Output<String>? region,
  }) :
      eventBusName = pulumi.Input.asOptionalInput<String>(eventBusName),
      policy = pulumi.Input.asOptionalInput<String>(policy),
      region = pulumi.Input.asOptionalInput<String>(region);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusName': ?eventBusName,
      'policy': ?policy,
      'region': ?region,
    };
  }

  factory EventBusPolicyState.fromMap(Map<String, dynamic> map) {
    return EventBusPolicyState(
      eventBusName: map['eventBusName'] == null ? null : pulumi.Output.create<String>(map['eventBusName'] as String),
      policy: map['policy'] == null ? null : pulumi.Output.create<String>(map['policy'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
    );
  }
}

