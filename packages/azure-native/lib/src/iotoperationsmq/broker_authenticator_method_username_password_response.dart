// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_properties_response.dart';

/// UsernamePassword for BrokerAuthentication
class BrokerAuthenticatorMethodUsernamePasswordResponse {
  /// Keyvault username password secret properties.
  final KeyVaultSecretPropertiesResponse? keyVault;
  /// Secret where username and password are stored.
  final String? secretName;

  /// Creates a new [BrokerAuthenticatorMethodUsernamePasswordResponse].
  /// [keyVault] Keyvault username password secret properties.
  /// [secretName] Secret where username and password are stored.
  BrokerAuthenticatorMethodUsernamePasswordResponse({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorMethodUsernamePasswordResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodUsernamePasswordResponse(
      keyVault: map['keyVault'] == null ? null : KeyVaultSecretPropertiesResponse.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

