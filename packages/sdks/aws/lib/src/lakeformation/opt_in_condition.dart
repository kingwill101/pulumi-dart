// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class OptInCondition {
  /// List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  final pulumi.Input<String>? expression;

  /// Creates a new [OptInCondition].
  /// [expression] List of LF-tag conditions or a saved expression that apply to the resource's LF-Tag policy.
  OptInCondition({
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

