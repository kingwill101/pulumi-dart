// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The login password for the container registry.
class RegistryPasswordResponse {
  /// The password name.
  final pulumi.Input<String>? name;
  /// The password value.
  final pulumi.Input<String>? value;

  /// Creates a new [RegistryPasswordResponse].
  /// [name] The password name.
  /// [value] The password value.
  const RegistryPasswordResponse({
    this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'value': ?value,
    };
  }

  factory RegistryPasswordResponse.fromMap(Map<String, dynamic> map) {
    return RegistryPasswordResponse(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

