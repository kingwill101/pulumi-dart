// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ListenerRuleActionForwardStickiness {
  /// The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  final pulumi.Input<int> duration;
  /// Indicates whether target group stickiness is enabled.
  final pulumi.Input<bool?>? enabled;

  /// Creates a new [ListenerRuleActionForwardStickiness].
  /// [duration] The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  /// [enabled] Indicates whether target group stickiness is enabled.
  const ListenerRuleActionForwardStickiness({
    required this.duration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enabled': ?enabled,
    };
  }

  factory ListenerRuleActionForwardStickiness.fromMap(Map<String, dynamic> map) {
    return ListenerRuleActionForwardStickiness(
      duration: pulumi.Input.fromValue((map['duration'] as num).toInt()),
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
