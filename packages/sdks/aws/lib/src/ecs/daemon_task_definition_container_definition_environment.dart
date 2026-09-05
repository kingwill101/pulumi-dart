// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DaemonTaskDefinitionContainerDefinitionEnvironment {
  /// Name of the environment variable.
  final pulumi.Input<String?>? name;
  /// Value of the environment variable.
  final pulumi.Input<String?>? value;

  /// Creates a new [DaemonTaskDefinitionContainerDefinitionEnvironment].
  /// [name] Name of the environment variable.
  /// [value] Value of the environment variable.
  const DaemonTaskDefinitionContainerDefinitionEnvironment({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory DaemonTaskDefinitionContainerDefinitionEnvironment.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionContainerDefinitionEnvironment(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
