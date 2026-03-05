// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DeploymentLocalVariable {
  /// Job variable name
  final pulumi.Input<String>? name;
  /// Job variable value
  final pulumi.Input<String>? value;

  /// Creates a new [DeploymentLocalVariable].
  /// [name] Job variable name
  /// [value] Job variable value
  DeploymentLocalVariable({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DeploymentLocalVariable.fromMap(Map<String, dynamic> map) {
    return DeploymentLocalVariable(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

