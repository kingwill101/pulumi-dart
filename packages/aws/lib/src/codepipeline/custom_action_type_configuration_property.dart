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

  /// Creates a new [CustomActionTypeConfigurationProperty].
  /// [description] The description of the action configuration property.
  /// [key] Whether the configuration property is a key.
  /// [name] The name of the action configuration property.
  /// [queryable] Indicates that the property will be used in conjunction with PollForJobs.
  /// [required] Whether the configuration property is a required value.
  /// [secret] Whether the configuration property is secret.
  /// [type] The type of the configuration property. Valid values: `String`, `Number`, `Boolean`
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
    return <String, dynamic>{
      'description': ?description,
      'key': key,
      'name': name,
      'queryable': ?queryable,
      'required': required,
      'secret': secret,
      'type': ?type,
    };
  }

  factory CustomActionTypeConfigurationProperty.fromMap(
    Map<String, dynamic> map,
  ) {
    return CustomActionTypeConfigurationProperty(
      description: map['description'] == null
          ? null
          : map['description'] as String,
      key: map['key'] as bool,
      name: map['name'] as String,
      queryable: map['queryable'] == null ? null : map['queryable'] as bool,
      required: map['required'] as bool,
      secret: map['secret'] as bool,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}
