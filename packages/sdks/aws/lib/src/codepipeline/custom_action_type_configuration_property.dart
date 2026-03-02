// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class CustomActionTypeConfigurationProperty {
  /// The description of the action configuration property.
  final pulumi.Input<String>? description;
  /// Whether the configuration property is a key.
  final pulumi.Input<bool> key;
  /// The name of the action configuration property.
  final pulumi.Input<String> name;
  /// Indicates that the property will be used in conjunction with PollForJobs.
  final pulumi.Input<bool>? queryable;
  /// Whether the configuration property is a required value.
  final pulumi.Input<bool> required;
  /// Whether the configuration property is secret.
  final pulumi.Input<bool> secret;
  /// The type of the configuration property. Valid values: `String`, `Number`, `Boolean`
  final pulumi.Input<String>? type;

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

  factory CustomActionTypeConfigurationProperty.fromMap(Map<String, dynamic> map) {
    return CustomActionTypeConfigurationProperty(
      description: map['description'] == null ? null : (map['description'] as String).input(),
      key: (map['key'] as bool).input(),
      name: (map['name'] as String).input(),
      queryable: map['queryable'] == null ? null : (map['queryable'] as bool).input(),
      required: (map['required'] as bool).input(),
      secret: (map['secret'] as bool).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

