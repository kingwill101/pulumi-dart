// ignore_for_file: unused_element, unnecessary_cast

class ExtensionParameter {
  /// Information about the parameter.
  final String? description;

  /// The parameter name.
  final String name;

  /// Determines if a parameter value must be specified in the extension association.
  final bool? required;

  ExtensionParameter({
    this.description,
    required this.name,
    this.required,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['name'] = name;
    final requiredValue = required;
    if (requiredValue != null) {
      map['required'] = requiredValue;
    }
    return map;
  }

  factory ExtensionParameter.fromMap(Map<String, dynamic> map) {
    return ExtensionParameter(
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] as String,
      required: map['required'] == null ? null : map['required'] as bool,
    );
  }
}
