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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      key: pulumi.Input.fromValue(map['key'] as bool),
      name: pulumi.Input.fromValue(map['name'] as String),
      queryable: (() { final guardedValue = map['queryable']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      required: pulumi.Input.fromValue(map['required'] as bool),
      secret: pulumi.Input.fromValue(map['secret'] as bool),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

