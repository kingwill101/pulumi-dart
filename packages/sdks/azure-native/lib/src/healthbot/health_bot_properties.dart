// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties.dart';

/// The properties of a Azure Health Bot. The Health Bot Service is a cloud platform that empowers developers in Healthcare organizations to build and deploy their compliant, AI-powered virtual health assistants and health bots, that help them improve processes and reduce costs.
class HealthBotProperties {
  /// KeyVault properties for the resource encryption.
  final KeyVaultProperties? keyVaultProperties;

  /// Creates a new [HealthBotProperties].
  /// [keyVaultProperties] KeyVault properties for the resource encryption.
  HealthBotProperties({
    this.keyVaultProperties,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVaultProperties': ?keyVaultProperties == null ? null : keyVaultProperties!.toMap(),
    };
  }

  factory HealthBotProperties.fromMap(Map<String, dynamic> map) {
    return HealthBotProperties(
      keyVaultProperties: map['keyVaultProperties'] == null ? null : KeyVaultProperties.fromMap((map['keyVaultProperties'] as Map).cast<String, dynamic>()),
    );
  }
}

