// ignore_for_file: unused_element, unnecessary_cast


class ListenerRuleActionForwardStickiness {
  /// The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  final int duration;
  /// Indicates whether target group stickiness is enabled.
  final bool? enabled;

  /// Creates a new [ListenerRuleActionForwardStickiness].
  /// [duration] The time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  /// [enabled] Indicates whether target group stickiness is enabled.
  ListenerRuleActionForwardStickiness({
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
      duration: map['duration'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

