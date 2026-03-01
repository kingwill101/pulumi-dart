// ignore_for_file: unused_element, unnecessary_cast

class GetTargetGroupStickiness {
  final int cookieDuration;
  final String cookieName;
  final bool enabled;
  final String type;

  /// Creates a new [GetTargetGroupStickiness].
  /// [cookieDuration] Required.
  /// [cookieName] Required.
  /// [enabled] Required.
  /// [type] Required.
  GetTargetGroupStickiness({
    required this.cookieDuration,
    required this.cookieName,
    required this.enabled,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cookieDuration': cookieDuration,
      'cookieName': cookieName,
      'enabled': enabled,
      'type': type,
    };
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
