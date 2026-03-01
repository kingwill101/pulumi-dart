// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_connection_properties.dart';
import 'key_vault_secret_object.dart';

/// KeyVault secret properties
class KeyVaultSecretProperties {
  /// KeyVault properties.
  final KeyVaultConnectionProperties vault;
  /// KeyVault secret details.
  final KeyVaultSecretObject vaultSecret;

  /// Creates a new [KeyVaultSecretProperties].
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  KeyVaultSecretProperties({
    required this.vault,
    required this.vaultSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vault': vault.toMap(),
      'vaultSecret': vaultSecret.toMap(),
    };
  }

  factory KeyVaultSecretProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretProperties(
      vault: KeyVaultConnectionProperties.fromMap((map['vault'] as Map).cast<String, dynamic>()),
      vaultSecret: KeyVaultSecretObject.fromMap((map['vaultSecret'] as Map).cast<String, dynamic>()),
    );
  }
}

