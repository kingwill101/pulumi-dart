// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardStickiness {
  final int duration;
  final bool enabled;

  /// Creates a new [GetListenerDefaultActionForwardStickiness].
  /// [duration] Required.
  /// [enabled] Required.
  GetListenerDefaultActionForwardStickiness({
    required this.duration,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'duration': duration, 'enabled': enabled};
  }

  factory GetListenerDefaultActionForwardStickiness.fromMap(
    Map<String, dynamic> map,
  ) {
    return GetListenerDefaultActionForwardStickiness(
      duration: map['duration'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}
