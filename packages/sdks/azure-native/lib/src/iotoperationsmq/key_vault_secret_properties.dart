// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_connection_properties.dart';
import 'key_vault_secret_object.dart';

/// KeyVault secret properties
class KeyVaultSecretProperties {
  /// KeyVault properties.
  final pulumi.Input<KeyVaultConnectionProperties> vault;
  /// KeyVault secret details.
  final pulumi.Input<KeyVaultSecretObject> vaultSecret;

  /// Creates a new [KeyVaultSecretProperties].
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  const KeyVaultSecretProperties({
    required this.vault,
    required this.vaultSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vault': pulumi.Input.mapInputValue<KeyVaultConnectionProperties, Map<String, dynamic>>(vault, (value) => value.toMap()),
      'vaultSecret': pulumi.Input.mapInputValue<KeyVaultSecretObject, Map<String, dynamic>>(vaultSecret, (value) => value.toMap()),
    };
  }

  factory KeyVaultSecretProperties.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretProperties(
      vault: pulumi.Input.fromValue(KeyVaultConnectionProperties.fromMap((map['vault']! as Map).cast<String, dynamic>())),
      vaultSecret: pulumi.Input.fromValue(KeyVaultSecretObject.fromMap((map['vaultSecret']! as Map).cast<String, dynamic>())),
    );
  }
}

