// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

/// The properties of a Azure Health Bot. The Health Bot Service is a cloud platform that empowers developers in Healthcare organizations to build and deploy their compliant, AI-powered virtual health assistants and health bots, that help them improve processes and reduce costs.
class HealthBotProperties {
  /// KeyVault properties for the resource encryption.
  final pulumi.Input<KeyVaultProperties>? keyVaultProperties;

  /// Creates a new [HealthBotProperties].
  /// [keyVaultProperties] KeyVault properties for the resource encryption.
  const HealthBotProperties({
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?pulumi.Input.mapOptionalInputValue<KeyVaultProperties, Map<String, dynamic>>(keyVaultProperties, (value) => value.toMap()),
    };
  }

  factory HealthBotProperties.fromMap(Map<String, dynamic> map) {
    return HealthBotProperties(
      keyVaultProperties: (() { final guardedValue = map['keyVaultProperties']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultProperties.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
