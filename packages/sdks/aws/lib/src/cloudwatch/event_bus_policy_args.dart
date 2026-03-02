// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cloudwatch_event_bus_policy_event_bus_policy_args_doc}
/// The set of arguments for EventBusPolicy.
/// {@endtemplate}
/// {@macro pulumi_cloudwatch_event_bus_policy_event_bus_policy_args_doc}
class EventBusPolicyArgs {
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  final pulumi.Input<String>? eventBusName;
  /// The text of the policy.
  final pulumi.Input<String> policy;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Creates a new [EventBusPolicyArgs].
  /// [eventBusName] The name of the event bus to set the permissions on.
  /// [policy] The text of the policy.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  EventBusPolicyArgs({
    this.eventBusName,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'eventBusName': ?eventBusName,
      'policy': policy,
      'region': ?region,
    };
  }

  factory EventBusPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EventBusPolicyArgs(
      eventBusName: map['eventBusName'] == null ? null : ((map['eventBusName'] as String).input()).input(),
      policy: (map['policy'] as String).input(),
      region: map['region'] == null ? null : ((map['region'] as String).input()).input(),
    );
  }
}

