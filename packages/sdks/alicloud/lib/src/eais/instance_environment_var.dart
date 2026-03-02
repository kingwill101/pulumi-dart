// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class InstanceEnvironmentVar {
  /// Keys for environment variables
  final pulumi.Input<String>? key;
  /// Values of environment variables
  final pulumi.Input<String>? value;

  /// Creates a new [InstanceEnvironmentVar].
  /// [key] Keys for environment variables
  /// [value] Values of environment variables
  InstanceEnvironmentVar({
    this.key,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'key': ?key,
      'value': ?value,
    };
  }

  factory InstanceEnvironmentVar.fromMap(Map<String, dynamic> map) {
    return InstanceEnvironmentVar(
      key: map['key'] == null ? null : (map['key']! as String).input(),
      value: map['value'] == null ? null : (map['value']! as String).input(),
    );
  }
}

