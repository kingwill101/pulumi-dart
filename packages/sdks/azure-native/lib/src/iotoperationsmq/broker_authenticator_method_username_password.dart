// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_properties.dart';

/// UsernamePassword for BrokerAuthentication
class BrokerAuthenticatorMethodUsernamePassword {
  /// Keyvault username password secret properties.
  final KeyVaultSecretProperties? keyVault;
  /// Secret where username and password are stored.
  final String? secretName;

  /// Creates a new [BrokerAuthenticatorMethodUsernamePassword].
  /// [keyVault] Keyvault username password secret properties.
  /// [secretName] Secret where username and password are stored.
  BrokerAuthenticatorMethodUsernamePassword({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorMethodUsernamePassword.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodUsernamePassword(
      keyVault: map['keyVault'] == null ? null : KeyVaultSecretProperties.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

