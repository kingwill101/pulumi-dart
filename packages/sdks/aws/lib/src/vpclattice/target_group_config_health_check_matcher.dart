// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class TargetGroupConfigHealthCheckMatcher {
  /// HTTP codes to use when checking for a successful response from a target.
  final pulumi.Input<String>? value;

  /// Creates a new [TargetGroupConfigHealthCheckMatcher].
  /// [value] HTTP codes to use when checking for a successful response from a target.
  const TargetGroupConfigHealthCheckMatcher({
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'value': ?value,
    };
  }

  factory TargetGroupConfigHealthCheckMatcher.fromMap(Map<String, dynamic> map) {
    return TargetGroupConfigHealthCheckMatcher(
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
