// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtensionParameter {
  /// Information about the parameter.
  final pulumi.Input<String?>? description;
  /// Parameter name.
  final pulumi.Input<String> name;
  /// Whether a parameter value must be specified in the extension association.
  final pulumi.Input<bool?>? required;

  /// Creates a new [ExtensionParameter].
  /// [description] Information about the parameter.
  /// [name] Parameter name.
  /// [required] Whether a parameter value must be specified in the extension association.
  const ExtensionParameter({
    this.description,
    required this.name,
    this.required,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'name': name,
      'required': ?required,
    };
  }

  factory ExtensionParameter.fromMap(Map<String, dynamic> map) {
    return ExtensionParameter(
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: pulumi.Input.fromValue(map['name'] as String),
      required: (() { final guardedValue = map['required']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
    );
  }
}
