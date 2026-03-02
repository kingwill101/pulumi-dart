// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'open_deployment_resource_reference.dart';

/// The ConfigurationValue with no secrets.
class ConfigurationValueWithoutSecrets {
  /// The configuration group schema resource reference.
  final pulumi.Input<OpenDeploymentResourceReference>? configurationGroupSchemaResourceReference;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Open'.
  final pulumi.Input<String> configurationType;
  /// Name and value pairs that define the configuration value. It can be a well formed escaped JSON string.
  final pulumi.Input<String>? configurationValue;

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
      'configurationGroupSchemaResourceReference': ?pulumi.Input.mapOptionalInputValue<OpenDeploymentResourceReference, Map<String, dynamic>>(configurationGroupSchemaResourceReference, (value) => value.toMap()),
      'configurationType': configurationType,
      'configurationValue': ?configurationValue,
    };
  }

  factory ConfigurationValueWithoutSecrets.fromMap(Map<String, dynamic> map) {
    return ConfigurationValueWithoutSecrets(
      configurationGroupSchemaResourceReference: map['configurationGroupSchemaResourceReference'] == null ? null : (OpenDeploymentResourceReference.fromMap((map['configurationGroupSchemaResourceReference']! as Map).cast<String, dynamic>())).input(),
      configurationType: (map['configurationType'] as String).input(),
      configurationValue: map['configurationValue'] == null ? null : (map['configurationValue']! as String).input(),
    );
  }
}

