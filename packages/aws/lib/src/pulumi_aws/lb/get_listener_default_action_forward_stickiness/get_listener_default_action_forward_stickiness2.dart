// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardStickiness2 {
  final int duration;
  final bool enabled;

  GetListenerDefaultActionForwardStickiness2({
    required this.duration,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['enabled'] = enabled;
    return map;
  }

  factory GetListenerDefaultActionForwardStickiness2.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardStickiness2(
      duration: map['duration'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}
