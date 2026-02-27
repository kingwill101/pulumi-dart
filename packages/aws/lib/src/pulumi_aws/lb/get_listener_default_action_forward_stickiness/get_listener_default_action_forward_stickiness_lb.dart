// ignore_for_file: unused_element, unnecessary_cast

class GetListenerDefaultActionForwardStickinessLb {
  final int duration;
  final bool enabled;

  GetListenerDefaultActionForwardStickinessLb({
    required this.duration,
    required this.enabled,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['duration'] = duration;
    map['enabled'] = enabled;
    return map;
  }

  factory GetListenerDefaultActionForwardStickinessLb.fromMap(
      Map<String, dynamic> map) {
    return GetListenerDefaultActionForwardStickinessLb(
      duration: map['duration'] as int,
      enabled: map['enabled'] as bool,
    );
  }
}
