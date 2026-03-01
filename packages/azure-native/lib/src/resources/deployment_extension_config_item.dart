// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_parameter_reference.dart';

/// The value or how to get a value for an extension config property.
class DeploymentExtensionConfigItem {
  /// The key vault reference of the config item.
  final KeyVaultParameterReference? keyVaultReference;
  /// The value of the config item. The type is determined by the extension config schema.
  final dynamic value;

  /// Creates a new [DeploymentExtensionConfigItem].
  /// [keyVaultReference] The key vault reference of the config item.
  /// [value] The value of the config item. The type is determined by the extension config schema.
  DeploymentExtensionConfigItem({
    this.keyVaultReference,
    this.value,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultReference': ?keyVaultReference == null ? null : keyVaultReference!.toMap(),
      'value': ?value,
    };
  }

  factory DeploymentExtensionConfigItem.fromMap(Map<String, dynamic> map) {
    return DeploymentExtensionConfigItem(
      keyVaultReference: map['keyVaultReference'] == null ? null : KeyVaultParameterReference.fromMap((map['keyVaultReference'] as Map).cast<String, dynamic>()),
      value: map['value'] == null ? null : map['value'],
    );
  }
}

