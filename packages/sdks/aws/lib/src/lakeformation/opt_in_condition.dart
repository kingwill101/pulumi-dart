// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInCondition {
  /// Expression written based on the Cedar Policy Language used to match the principal attributes.
  final pulumi.Input<String>? expression;

  /// Creates a new [OptInCondition].
  /// [expression] Expression written based on the Cedar Policy Language used to match the principal attributes.
  const OptInCondition({
    this.expression,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'expression': ?expression,
    };
  }

  factory OptInCondition.fromMap(Map<String, dynamic> map) {
    return OptInCondition(
      expression: (() { final guardedValue = map['expression']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
