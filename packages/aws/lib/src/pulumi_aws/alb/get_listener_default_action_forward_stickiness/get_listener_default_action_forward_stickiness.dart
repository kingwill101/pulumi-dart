// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardStickiness {
  final int duration;
  final bool enabled;

  GetListenerDefaultActionForwardStickiness({
    required this.duration,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['enabled'] = enabled;
    return map;
  }

  factory GetListenerDefaultActionForwardStickiness.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardStickiness(
      duration: map['duration'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}
