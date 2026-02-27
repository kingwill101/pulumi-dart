// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionForwardStickinessLb {
  /// Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  ///
  /// The following arguments are optional:
  final int duration;

  /// Whether target group stickiness is enabled. Default is `false`.
  final bool? enabled;

  ListenerDefaultActionForwardStickinessLb({
    required this.duration,
    this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    final enabledValue = enabled;
    if (enabledValue != null) {
      map['enabled'] = enabledValue;
    }
    return map;
  }

  factory ListenerDefaultActionForwardStickinessLb.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionForwardStickinessLb(
      duration: map['duration'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
