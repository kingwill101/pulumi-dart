// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_connection_properties_response.dart';
import 'key_vault_secret_object_response.dart';

/// KeyVault certificate properties
class KeyVaultCertificatePropertiesResponse {
  /// KeyVault properties.
  final KeyVaultConnectionPropertiesResponse vault;
  /// KeyVault CA chain secret details.
  final KeyVaultSecretObjectResponse? vaultCaChainSecret;
  /// KeyVault Cert secret details.
  final KeyVaultSecretObjectResponse vaultCert;

  /// Creates a new [KeyVaultCertificatePropertiesResponse].
  /// [vault] KeyVault properties.
  /// [vaultCaChainSecret] KeyVault CA chain secret details.
  /// [vaultCert] KeyVault Cert secret details.
  KeyVaultCertificatePropertiesResponse({
    required this.vault,
    this.vaultCaChainSecret,
    required this.vaultCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vault': vault.toMap(),
      'vaultCaChainSecret': ?vaultCaChainSecret == null ? null : vaultCaChainSecret!.toMap(),
      'vaultCert': vaultCert.toMap(),
    };
  }

  factory KeyVaultCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificatePropertiesResponse(
      vault: KeyVaultConnectionPropertiesResponse.fromMap((map['vault'] as Map).cast<String, dynamic>()),
      vaultCaChainSecret: map['vaultCaChainSecret'] == null ? null : KeyVaultSecretObjectResponse.fromMap((map['vaultCaChainSecret'] as Map).cast<String, dynamic>()),
      vaultCert: KeyVaultSecretObjectResponse.fromMap((map['vaultCert'] as Map).cast<String, dynamic>()),
    );
  }
}

