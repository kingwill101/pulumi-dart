// ignore_for_file: unused_element, unnecessary_cast


/// Configuration group schema properties.
class ConfigurationGroupSchemaPropertiesFormatResponse {
  /// Description of what schema can contain.
  final String? description;
  /// The provisioning state of the Configuration group schema resource.
  final String provisioningState;
  /// Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  final String? schemaDefinition;
  /// The configuration group schema version state.
  final String versionState;

  /// Creates a new [ConfigurationGroupSchemaPropertiesFormatResponse].
  /// [description] Description of what schema can contain.
  /// [provisioningState] The provisioning state of the Configuration group schema resource.
  /// [schemaDefinition] Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  /// [versionState] The configuration group schema version state.
  ConfigurationGroupSchemaPropertiesFormatResponse({
    this.description,
    required this.provisioningState,
    this.schemaDefinition,
    required this.versionState,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': ?description,
      'provisioningState': provisioningState,
      'schemaDefinition': ?schemaDefinition,
      'versionState': versionState,
    };
  }

  factory ConfigurationGroupSchemaPropertiesFormatResponse.fromMap(Map<String, dynamic> map) {
    return ConfigurationGroupSchemaPropertiesFormatResponse(
      description: map['description'] == null ? null : map['description'] as String,
      provisioningState: map['provisioningState'] as String,
      schemaDefinition: map['schemaDefinition'] == null ? null : map['schemaDefinition'] as String,
      versionState: map['versionState'] as String,
    );
  }
}

