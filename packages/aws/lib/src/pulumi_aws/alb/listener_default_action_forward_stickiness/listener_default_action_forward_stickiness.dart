// ignore_for_file: unused_element, unnecessary_cast

class ListenerDefaultActionForwardStickiness {
  /// Time period, in seconds, during which requests from a client should be routed to the same target group. The range is 1-604800 seconds (7 days).
  ///
  /// The following arguments are optional:
  final int duration;

  /// Whether target group stickiness is enabled. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  final bool? enabled;

  ListenerDefaultActionForwardStickiness({
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

  factory ListenerDefaultActionForwardStickiness.fromMap(
      Map<String, dynamic> map) {
    return ListenerDefaultActionForwardStickiness(
      duration: map['duration'] as int,
      enabled: map['enabled'] == null ? null : map['enabled'] as bool,
    );
  }
}
