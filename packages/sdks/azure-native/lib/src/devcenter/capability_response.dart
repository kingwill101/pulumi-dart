// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// A name/value pair to describe a capability.
class CapabilityResponse {
  /// Name of the capability.
  final pulumi.Input<String> name;
  /// Value of the capability.
  final pulumi.Input<String> value;

  /// Creates a new [CapabilityResponse].
  /// [name] Name of the capability.
  /// [value] Value of the capability.
  const CapabilityResponse({
    required this.name,
    required this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'value': value,
    };
  }

  factory CapabilityResponse.fromMap(Map<String, dynamic> map) {
    return CapabilityResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      value: pulumi.Input.fromValue(map['value'] as String),
    );
  }
}

