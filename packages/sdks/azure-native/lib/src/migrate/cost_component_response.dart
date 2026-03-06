// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Class to represent the component of the cost.
class CostComponentResponse {
  /// The textual description of the component.
  final pulumi.Input<String>? description;
  /// Gets the name of the component.
  final pulumi.Input<String> name;
  /// The value of the component.
  final pulumi.Input<double>? value;

  /// Creates a new [CostComponentResponse].
  /// [description] The textual description of the component.
  /// [name] Gets the name of the component.
  /// [value] The value of the component.
  const CostComponentResponse({
    this.description,
    required this.name,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'value': ?value,
    };
  }

  factory CostComponentResponse.fromMap(Map<String, dynamic> map) {
    return CostComponentResponse(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      value: (() { final guardedValue = map['value']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as double); })(),
    );
  }
}

