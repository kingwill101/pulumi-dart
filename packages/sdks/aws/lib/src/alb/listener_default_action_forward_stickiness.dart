// ignore_for_file: unused_element, unnecessary_cast


class ListenerDefaultActionForwardStickiness {
  /// Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  ///
  /// The following arguments are optional:
  final int duration;
  /// Whether target group stickiness is enabled. Default is `false`.
  final bool? enabled;

  /// Creates a new [ListenerDefaultActionForwardStickiness].
  /// [duration] Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  /// [enabled] Whether target group stickiness is enabled. Default is `false`.
  ListenerDefaultActionForwardStickiness({
    required this.duration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'duration': duration,
      'enabled': ?enabled,
    };
  }

  factory ListenerDefaultActionForwardStickiness.fromMap(Map<String, dynamic> map) {
    return ListenerDefaultActionForwardStickiness(
      duration: map['duration'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}

