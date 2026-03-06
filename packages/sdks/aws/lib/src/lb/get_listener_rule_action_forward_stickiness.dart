// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetListenerRuleActionForwardStickiness {
  /// The time period, in seconds, during which requests from a client should be routed to the same target group.
  final pulumi.Input<int> duration;
  /// Indicates whether target group stickiness is enabled.
  final pulumi.Input<bool> enabled;

  /// Creates a new [GetListenerRuleActionForwardStickiness].
  /// [duration] The time period, in seconds, during which requests from a client should be routed to the same target group.
  /// [enabled] Indicates whether target group stickiness is enabled.
  const GetListenerRuleActionForwardStickiness({
    required this.duration,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enabled': enabled,
    };
  }

  factory GetListenerRuleActionForwardStickiness.fromMap(Map<String, dynamic> map) {
    return GetListenerRuleActionForwardStickiness(
      duration: pulumi.Input.fromValue(map['duration'] as int),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
    );
  }
}

