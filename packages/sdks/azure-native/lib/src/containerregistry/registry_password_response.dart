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
  RegistryPasswordResponse({
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
      name: map['name'] == null ? null : (map['name'] as String).input(),
      value: map['value'] == null ? null : (map['value'] as String).input(),
    );
  }
}

