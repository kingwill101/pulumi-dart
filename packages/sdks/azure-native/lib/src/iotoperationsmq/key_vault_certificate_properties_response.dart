// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_connection_properties_response.dart';
import 'key_vault_secret_object_response.dart';

/// KeyVault certificate properties
class KeyVaultCertificatePropertiesResponse {
  /// KeyVault properties.
  final pulumi.Input<KeyVaultConnectionPropertiesResponse> vault;
  /// KeyVault CA chain secret details.
  final pulumi.Input<KeyVaultSecretObjectResponse>? vaultCaChainSecret;
  /// KeyVault Cert secret details.
  final pulumi.Input<KeyVaultSecretObjectResponse> vaultCert;

  /// Creates a new [KeyVaultCertificatePropertiesResponse].
  /// [vault] KeyVault properties.
  /// [vaultCaChainSecret] KeyVault CA chain secret details.
  /// [vaultCert] KeyVault Cert secret details.
  const KeyVaultCertificatePropertiesResponse({
    required this.vault,
    this.vaultCaChainSecret,
    required this.vaultCert,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vault': pulumi.Input.mapInputValue<KeyVaultConnectionPropertiesResponse, Map<String, dynamic>>(vault, (value) => value.toMap()),
      'vaultCaChainSecret': ?pulumi.Input.mapOptionalInputValue<KeyVaultSecretObjectResponse, Map<String, dynamic>>(vaultCaChainSecret, (value) => value.toMap()),
      'vaultCert': pulumi.Input.mapInputValue<KeyVaultSecretObjectResponse, Map<String, dynamic>>(vaultCert, (value) => value.toMap()),
    };
  }

  factory KeyVaultCertificatePropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultCertificatePropertiesResponse(
      vault: pulumi.Input.fromValue(KeyVaultConnectionPropertiesResponse.fromMap((map['vault']! as Map).cast<String, dynamic>())),
      vaultCaChainSecret: (() { final guardedValue = map['vaultCaChainSecret']; if (guardedValue == null) return null; return pulumi.Input.fromValue(KeyVaultSecretObjectResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      vaultCert: pulumi.Input.fromValue(KeyVaultSecretObjectResponse.fromMap((map['vaultCert']! as Map).cast<String, dynamic>())),
    );
  }
}

