// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_properties.dart';

/// BrokerAuthenticatorMethodX509Attributes properties. NOTE - Enum only type supported at a time.
class BrokerAuthenticatorMethodX509Attributes {
  /// Keyvault x509 attributes secret properties.
  final KeyVaultSecretProperties? keyVault;
  /// Secret where x509 attributes are stored.
  final String? secretName;

  /// Creates a new [BrokerAuthenticatorMethodX509Attributes].
  /// [keyVault] Keyvault x509 attributes secret properties.
  /// [secretName] Secret where x509 attributes are stored.
  BrokerAuthenticatorMethodX509Attributes({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorMethodX509Attributes.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509Attributes(
      keyVault: map['keyVault'] == null ? null : KeyVaultSecretProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

