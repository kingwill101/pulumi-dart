// ignore_for_file: unused_element, unnecessary_cast


/// Configuration group schema properties.
class ConfigurationGroupSchemaPropertiesFormat {
  /// Description of what schema can contain.
  final String? description;
  /// Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  final String? schemaDefinition;

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

  factory ConfigurationGroupSchemaPropertiesFormat.fromMap(Map<String, dynamic> map) {
    return ConfigurationGroupSchemaPropertiesFormat(
      description: map['description'] == null ? null : map['description'] as String,
      schemaDefinition: map['schemaDefinition'] == null ? null : map['schemaDefinition'] as String,
    );
  }
}

