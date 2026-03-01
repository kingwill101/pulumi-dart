// ignore_for_file: unused_element, unnecessary_cast

import 'open_deployment_resource_reference.dart';

/// The ConfigurationValue with no secrets.
class ConfigurationValueWithoutSecrets {
  /// The configuration group schema resource reference.
  final OpenDeploymentResourceReference? configurationGroupSchemaResourceReference;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Open'.
  final String configurationType;
  /// Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  final String? configurationValue;

  /// Creates a new [ConfigurationValueWithoutSecrets].
  /// [configurationGroupSchemaResourceReference] The configuration group schema resource reference.
  /// [configurationType] The secret type which indicates if secret or not.
  /// [configurationValue] Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  ConfigurationValueWithoutSecrets({
    this.configurationGroupSchemaResourceReference,
    required this.configurationType,
    this.configurationValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaResourceReference': ?configurationGroupSchemaResourceReference == null ? null : configurationGroupSchemaResourceReference!.toMap(),
      'configurationType': configurationType,
      'configurationValue': ?configurationValue,
    };
  }

  factory ConfigurationValueWithoutSecrets.fromMap(Map<String, dynamic> map) {
    return ConfigurationValueWithoutSecrets(
      configurationGroupSchemaResourceReference: map['configurationGroupSchemaResourceReference'] == null ? null : OpenDeploymentResourceReference.fromMap((map['configurationGroupSchemaResourceReference'] as Map).cast<String, dynamic>()),
      configurationType: map['configurationType'] as String,
      configurationValue: map['configurationValue'] == null ? null : map['configurationValue'] as String,
    );
  }
}

