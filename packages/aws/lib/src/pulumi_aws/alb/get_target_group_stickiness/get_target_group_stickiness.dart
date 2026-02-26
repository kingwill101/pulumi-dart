// ignore_for_file: unused_element, unnecessary_cast

class GetTargetGroupStickiness {
  final int cookieDuration;
  final String cookieName;
  final bool enabled;
  final String type;

  GetTargetGroupStickiness({
    required this.cookieDuration,
    required this.cookieName,
    required this.enabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cookieDuration'] = cookieDuration;
    map['cookieName'] = cookieName;
    map['enabled'] = enabled;
    map['type'] = type;
    return map;
  }

  factory GetTargetGroupStickiness.fromMap(Map<String, dynamic> map) {
    return GetTargetGroupStickiness(
      cookieDuration: map['cookieDuration'] as int,
      cookieName: map['cookieName'] as String,
      enabled: map['enabled'] as bool,
      type: map['type'] as String,
    );
  }
}
