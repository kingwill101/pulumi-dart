// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTargetGroupStickiness {
  final pulumi.Input<int> cookieDuration;
  final pulumi.Input<String> cookieName;
  final pulumi.Input<bool> enabled;
  final pulumi.Input<String> type;

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
      cookieDuration: pulumi.Input.fromValue(map['cookieDuration'] as int),
      cookieName: pulumi.Input.fromValue(map['cookieName'] as String),
      enabled: pulumi.Input.fromValue(map['enabled'] as bool),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
