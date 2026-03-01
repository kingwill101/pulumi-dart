// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_connection_properties.dart';
import 'key_vault_secret_object.dart';

/// KeyVault certificate properties
class KeyVaultCertificateProperties {
  /// KeyVault properties.
  final KeyVaultConnectionProperties vault;
  /// KeyVault CA chain secret details.
  final KeyVaultSecretObject? vaultCaChainSecret;
  /// KeyVault Cert secret details.
  final KeyVaultSecretObject vaultCert;

  /// Creates a new [KeyVaultCertificateProperties].
  /// [vault] KeyVault properties.
  /// [vaultCaChainSecret] KeyVault CA chain secret details.
  /// [vaultCert] KeyVault Cert secret details.
  KeyVaultCertificateProperties({
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

  factory KeyVaultCertificateProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificateProperties(
      vault: KeyVaultConnectionProperties.fromMap((map['vault'] as Map).cast<String, dynamic>()),
      vaultCaChainSecret: map['vaultCaChainSecret'] == null ? null : KeyVaultSecretObject.fromMap((map['vaultCaChainSecret'] as Map).cast<String, dynamic>()),
      vaultCert: KeyVaultSecretObject.fromMap((map['vaultCert'] as Map).cast<String, dynamic>()),
    );
  }
}

