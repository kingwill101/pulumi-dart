// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class JobLocalVariable {
  /// Local variables name
  final pulumi.Input<String>? name;

  /// Local variables value
  final pulumi.Input<String>? value;

  /// Creates a new [JobLocalVariable].
  /// [name] Local variables name
  /// [value] Local variables value
  JobLocalVariable({this.name, this.value});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'name': ?name, 'value': ?value};
  }

  factory JobLocalVariable.fromMap(Map<String, dynamic> map) {
    return JobLocalVariable(
      name: (() {
        final guardedValue = map['name'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      value: (() {
        final guardedValue = map['value'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
