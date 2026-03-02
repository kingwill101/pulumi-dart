// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_deployment_resource_reference.dart';

/// The ConfigurationValue with secrets.
class ConfigurationValueWithSecrets {
  /// The configuration group schema resource reference.
  final pulumi.Input<OpenDeploymentResourceReference>? configurationGroupSchemaResourceReference;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Secret'.
  final pulumi.Input<String> configurationType;
  /// Name and value pairs that define the configuration value secrets. It can be a well formed escaped JSON string.
  final pulumi.Input<String>? secretConfigurationValue;

  /// Creates a new [ConfigurationValueWithSecrets].
  /// [configurationGroupSchemaResourceReference] The configuration group schema resource reference.
  /// [configurationType] The secret type which indicates if secret or not.
  /// [secretConfigurationValue] Name and value pairs that define the configuration value secrets. It can be a well formed escaped JSON string.
  ConfigurationValueWithSecrets({
    this.configurationGroupSchemaResourceReference,
    required this.configurationType,
    this.secretConfigurationValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaResourceReference': ?pulumi.Input.mapOptionalInputValue<OpenDeploymentResourceReference, Map<String, dynamic>>(configurationGroupSchemaResourceReference, (value) => value.toMap()),
      'configurationType': configurationType,
      'secretConfigurationValue': ?secretConfigurationValue,
    };
  }

  factory ConfigurationValueWithSecrets.fromMap(Map<String, dynamic> map) {
    return ConfigurationValueWithSecrets(
      configurationGroupSchemaResourceReference: map['configurationGroupSchemaResourceReference'] == null ? null : (OpenDeploymentResourceReference.fromMap((map['configurationGroupSchemaResourceReference'] as Map).cast<String, dynamic>())).input(),
      configurationType: (map['configurationType'] as String).input(),
      secretConfigurationValue: map['secretConfigurationValue'] == null ? null : (map['secretConfigurationValue'] as String).input(),
    );
  }
}

