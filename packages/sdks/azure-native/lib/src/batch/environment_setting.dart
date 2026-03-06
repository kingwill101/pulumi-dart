// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// An environment variable to be set on a task process.
class EnvironmentSetting {
  /// The name of the environment variable.
  final pulumi.Input<String> name;
  /// The value of the environment variable.
  final pulumi.Input<String>? value;

  /// Creates a new [EnvironmentSetting].
  /// [name] The name of the environment variable.
  /// [value] The value of the environment variable.
  const EnvironmentSetting({
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': ?value,
    };
  }

  factory EnvironmentSetting.fromMap(Map<String, dynamic> map) {
    return EnvironmentSetting(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

