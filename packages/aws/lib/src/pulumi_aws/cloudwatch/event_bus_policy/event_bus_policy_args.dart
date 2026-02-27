// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for EventBusPolicy.
class EventBusPolicyArgs {
  /// The name of the event bus to set the permissions on.
  /// If you omit this, the permissions are set on the `default` event bus.
  final pulumi.Input<String>? eventBusName;

  /// The text of the policy.
  final pulumi.Input<String> policy;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  EventBusPolicyArgs({
    this.eventBusName,
    required this.policy,
    this.region,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final eventBusNameValue = eventBusName;
    if (eventBusNameValue != null) {
      map['eventBusName'] = eventBusNameValue;
    }
    map['policy'] = policy;
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    return map;
  }

  factory EventBusPolicyArgs.fromMap(Map<String, dynamic> map) {
    return EventBusPolicyArgs(
      eventBusName: pulumi.Input.asOptionalInput<String>(map['eventBusName']),
      policy: pulumi.Input.asInput<String>(map['policy']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
    );
  }
}
