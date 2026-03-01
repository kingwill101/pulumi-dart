// ignore_for_file: unused_element, unnecessary_cast


class GetListenerRuleActionForwardStickiness {
  /// The time period, in seconds, during which requests from a client should be routed to the same target group.
  final int duration;
  /// Indicates whether target group stickiness is enabled.
  final bool enabled;

  /// Creates a new [GetListenerRuleActionForwardStickiness].
  /// [duration] The time period, in seconds, during which requests from a client should be routed to the same target group.
  /// [enabled] Indicates whether target group stickiness is enabled.
  GetListenerRuleActionForwardStickiness({
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
      duration: map['duration'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}

