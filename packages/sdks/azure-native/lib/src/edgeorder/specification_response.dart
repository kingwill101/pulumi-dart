// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Specification of the configurations.
class SpecificationResponse {
  /// Name of the specification.
  final pulumi.Input<String> name;
  /// Value of the specification.
  final pulumi.Input<String> value;

  /// Creates a new [SpecificationResponse].
  /// [name] Name of the specification.
  /// [value] Value of the specification.
  const SpecificationResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory SpecificationResponse.fromMap(Map<String, dynamic> map) {
    return SpecificationResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}
