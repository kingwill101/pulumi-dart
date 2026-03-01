// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_secret_properties_response.dart';

/// BrokerAuthenticatorMethodX509Attributes properties. NOTE - Enum only type supported at a time.
class BrokerAuthenticatorMethodX509AttributesResponse {
  /// Keyvault x509 attributes secret properties.
  final KeyVaultSecretPropertiesResponse? keyVault;
  /// Secret where x509 attributes are stored.
  final String? secretName;

  /// Creates a new [BrokerAuthenticatorMethodX509AttributesResponse].
  /// [keyVault] Keyvault x509 attributes secret properties.
  /// [secretName] Secret where x509 attributes are stored.
  BrokerAuthenticatorMethodX509AttributesResponse({
    this.keyVault,
    this.secretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'keyVault': ?keyVault == null ? null : keyVault!.toMap(),
      'secretName': ?secretName,
    };
  }

  factory BrokerAuthenticatorMethodX509AttributesResponse.fromMap(Map<String, dynamic> map) {
    return BrokerAuthenticatorMethodX509AttributesResponse(
      keyVault: map['keyVault'] == null ? null : KeyVaultSecretPropertiesResponse.fromMap((map['keyVault'] as Map).cast<String, dynamic>()),
      secretName: map['secretName'] == null ? null : map['secretName'] as String,
    );
  }
}

