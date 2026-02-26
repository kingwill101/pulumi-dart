// ignore_for_file: unused_element, unnecessary_cast

class DocumentParameter {
  /// If specified, the default values for the parameters. Parameters without a default value are required. Parameters with a default value are optional.
  final String? defaultValue;

  /// A description of what the parameter does, how to use it, the default value, and whether or not the parameter is optional.
  final String? description;

  /// The name of the document.
  final String? name;

  /// The type of parameter. Valid values: `String`, `StringList`.
  final String? type;

  DocumentParameter({
    this.defaultValue,
    this.description,
    this.name,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final defaultValueValue = defaultValue;
    if (defaultValueValue != null) {
      map['defaultValue'] = defaultValueValue;
    }
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory DocumentParameter.fromMap(Map<String, dynamic> map) {
    return DocumentParameter(
      defaultValue:
          map['defaultValue'] == null ? null : map['defaultValue'] as String,
      description:
          map['description'] == null ? null : map['description'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
