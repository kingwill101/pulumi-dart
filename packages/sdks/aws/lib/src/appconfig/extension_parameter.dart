// ignore_for_file: unused_element, unnecessary_cast


class ExtensionParameter {
  /// Information about the parameter.
  final String? description;
  /// The parameter name.
  final String name;
  /// Determines if a parameter value must be specified in the extension association.
  final bool? required;

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
      description: map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}

