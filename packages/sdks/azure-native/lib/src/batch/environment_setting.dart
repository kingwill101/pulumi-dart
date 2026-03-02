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
  EnvironmentSetting({
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
      name: (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

