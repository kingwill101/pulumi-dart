// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_connection_properties_response.dart';
import 'key_vault_secret_object_response.dart';

/// KeyVault secret properties
class KeyVaultSecretPropertiesResponse {
  /// KeyVault properties.
  final KeyVaultConnectionPropertiesResponse vault;
  /// KeyVault secret details.
  final KeyVaultSecretObjectResponse vaultSecret;

  /// Creates a new [KeyVaultSecretPropertiesResponse].
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  KeyVaultSecretPropertiesResponse({
    required this.vault,
    required this.vaultSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vault': vault.toMap(),
      'vaultSecret': vaultSecret.toMap(),
    };
  }

  factory KeyVaultSecretPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretPropertiesResponse(
      vault: KeyVaultConnectionPropertiesResponse.fromMap((map['vault'] as Map).cast<String, dynamic>()),
      vaultSecret: KeyVaultSecretObjectResponse.fromMap((map['vaultSecret'] as Map).cast<String, dynamic>()),
    );
  }
}

