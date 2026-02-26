// ignore_for_file: unused_element, unnecessary_cast

class CustomActionTypeConfigurationProperty {
  /// The description of the action configuration property.
  final String? description;

  /// Whether the configuration property is a key.
  final bool key;

  /// The name of the action configuration property.
  final String name;

  /// Indicates that the property will be used in conjunction with PollForJobs.
  final bool? queryable;

  /// Whether the configuration property is a required value.
  final bool required;

  /// Whether the configuration property is secret.
  final bool secret;

  /// The type of the configuration property. Valid values: `String`, `Number`, `Boolean`
  final String? type;

  CustomActionTypeConfigurationProperty({
    this.description,
    required this.key,
    required this.name,
    this.queryable,
    required this.required,
    required this.secret,
    this.type,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    map['key'] = key;
    map['name'] = name;
    final queryableValue = queryable;
    if (queryableValue != null) {
      map['queryable'] = queryableValue;
    }
    map['required'] = required;
    map['secret'] = secret;
    final typeValue = type;
    if (typeValue != null) {
      map['type'] = typeValue;
    }
    return map;
  }

  factory CustomActionTypeConfigurationProperty.fromMap(
      Map<String, dynamic> map) {
    return CustomActionTypeConfigurationProperty(
      description:
          map['description'] == null ? null : map['description'] as String,
      key: map['key'] as bool,
      name: map['name'] as String,
      queryable: map['queryable'] == null ? null : map['queryable'] as bool,
      required: map['required'] as bool,
      secret: map['secret'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
