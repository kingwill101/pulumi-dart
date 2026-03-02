// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_connection_properties.dart';
import 'key_vault_secret_object.dart';

/// KeyVault certificate properties
class KeyVaultCertificateProperties {
  /// KeyVault properties.
  final pulumi.Input<KeyVaultConnectionProperties> vault;
  /// KeyVault CA chain secret details.
  final pulumi.Input<KeyVaultSecretObject>? vaultCaChainSecret;
  /// KeyVault Cert secret details.
  final pulumi.Input<KeyVaultSecretObject> vaultCert;

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
      'vault': pulumi.Input.mapInputValue<KeyVaultConnectionProperties, Map<String, dynamic>>(vault, (value) => value.toMap()),
      'vaultCaChainSecret': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretObject, Map<String, dynamic>>(vaultCaChainSecret, (value) => value.toMap()),
      'vaultCert': pulumi.Input.mapInputValue<KeyVaultSecretObject, Map<String, dynamic>>(vaultCert, (value) => value.toMap()),
    };
  }

  factory KeyVaultCertificateProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificateProperties(
      vault: (KeyVaultConnectionProperties.fromMap((map['vault'] as Map).cast<String, dynamic>())).input(),
      vaultCaChainSecret: map['vaultCaChainSecret'] == null ? null : (KeyVaultSecretObject.fromMap((map['vaultCaChainSecret'] as Map).cast<String, dynamic>())).input(),
      vaultCert: (KeyVaultSecretObject.fromMap((map['vaultCert'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

