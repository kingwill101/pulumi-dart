// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration group schema properties.
class ConfigurationGroupSchemaPropertiesFormat {
  /// Description of what schema can contain.
  final pulumi.Input<String>? description;

  /// Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  final pulumi.Input<String>? schemaDefinition;

  /// Creates a new [ConfigurationGroupSchemaPropertiesFormat].
  /// [description] Description of what schema can contain.
  /// [schemaDefinition] Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  ConfigurationGroupSchemaPropertiesFormat({
    this.description,
    this.schemaDefinition,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'schemaDefinition': ?schemaDefinition,
    };
  }

  factory ConfigurationGroupSchemaPropertiesFormat.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConfigurationGroupSchemaPropertiesFormat(
      description: (() {
        final guardedValue = map['description'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      schemaDefinition: (() {
        final guardedValue = map['schemaDefinition'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
