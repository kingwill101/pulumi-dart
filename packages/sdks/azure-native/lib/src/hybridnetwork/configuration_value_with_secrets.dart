// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The ConfigurationValue with secrets.
class ConfigurationValueWithSecrets {
  /// The configuration group schema resource reference.
  final pulumi.Input<dynamic>? configurationGroupSchemaResourceReference;
  /// The secret type which indicates if secret or not.
  /// Expected value is 'Secret'.
  final pulumi.Input<String> configurationType;
  /// Name and value pairs that define the configuration value secrets. It can be a well formed escaped JSON string.
  final pulumi.Input<String?>? secretConfigurationValue;

  /// Creates a new [ConfigurationValueWithSecrets].
  /// [configurationGroupSchemaResourceReference] The configuration group schema resource reference.
  /// [configurationType] The secret type which indicates if secret or not.
  /// [secretConfigurationValue] Name and value pairs that define the configuration value secrets. It can be a well formed escaped JSON string.
  const ConfigurationValueWithSecrets({
    this.configurationGroupSchemaResourceReference,
    required this.configurationType,
    this.secretConfigurationValue,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configurationGroupSchemaResourceReference': ?configurationGroupSchemaResourceReference,
      'configurationType': configurationType,
      'secretConfigurationValue': ?secretConfigurationValue,
    };
  }

  factory ConfigurationValueWithSecrets.fromMap(Map<String, dynamic> map) {
    return ConfigurationValueWithSecrets(
      configurationGroupSchemaResourceReference: (() { final guardedValue = map['configurationGroupSchemaResourceReference']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      configurationType: pulumi.Input.fromValue(map['configurationType'] as String),
      secretConfigurationValue: (() { final guardedValue = map['secretConfigurationValue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
