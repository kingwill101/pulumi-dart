// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class EnvironmentVariable {
  /// Type of the Environment Variable. Possible values are: local - For local variable
  final pulumi.Input<String>? type;
  /// Value of the Environment variable
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentVariable].
  /// [type] Type of the Environment Variable. Possible values are: local - For local variable
  /// [value] Value of the Environment variable
  const EnvironmentVariable({
    this.type,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'type': ?type,
      'value': ?value,
    };
  }

  factory EnvironmentVariable.fromMap(Map<String, dynamic> map) {
    return EnvironmentVariable(
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
