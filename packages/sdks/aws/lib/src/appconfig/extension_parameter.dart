// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ExtensionParameter {
  /// Information about the parameter.
  final pulumi.Input<String>? description;
  /// The parameter name.
  final pulumi.Input<String> name;
  /// Determines if a parameter value must be specified in the extension association.
  final pulumi.Input<bool>? required;

  /// Creates a new [ExtensionParameter].
  /// [description] Information about the parameter.
  /// [name] The parameter name.
  /// [required] Determines if a parameter value must be specified in the extension association.
  ExtensionParameter({
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
      description: map['description'] == null ? null : (map['description'] as String).input(),
      name: (map['name'] as String).input(),
      required: map['required'] == null ? null : (map['required'] as bool).input(),
    );
  }
}

