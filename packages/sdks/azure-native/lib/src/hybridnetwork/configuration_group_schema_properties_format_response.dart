// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Configuration group schema properties.
class ConfigurationGroupSchemaPropertiesFormatResponse {
  /// Description of what schema can contain.
  final pulumi.Input<String>? description;
  /// The provisioning state of the Configuration group schema resource.
  final pulumi.Input<String> provisioningState;
  /// Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  final pulumi.Input<String>? schemaDefinition;
  /// The configuration group schema version state.
  final pulumi.Input<String> versionState;

  /// Creates a new [ConfigurationGroupSchemaPropertiesFormatResponse].
  /// [description] Description of what schema can contain.
  /// [provisioningState] The provisioning state of the Configuration group schema resource.
  /// [schemaDefinition] Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  /// [versionState] The configuration group schema version state.
  const ConfigurationGroupSchemaPropertiesFormatResponse({
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
      description: (() { final guardedValue = map['description']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      provisioningState: pulumi.Input.fromValue(map['provisioningState'] as String),
      schemaDefinition: (() { final guardedValue = map['schemaDefinition']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      versionState: pulumi.Input.fromValue(map['versionState'] as String),
    );
  }
}
