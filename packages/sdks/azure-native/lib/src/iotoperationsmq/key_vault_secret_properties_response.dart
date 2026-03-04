// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_connection_properties_response.dart';
import 'key_vault_secret_object_response.dart';

/// KeyVault secret properties
class KeyVaultSecretPropertiesResponse {
  /// KeyVault properties.
  final pulumi.Input<KeyVaultConnectionPropertiesResponse> vault;

  /// KeyVault secret details.
  final pulumi.Input<KeyVaultSecretObjectResponse> vaultSecret;

  /// Creates a new [KeyVaultSecretPropertiesResponse].
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  KeyVaultSecretPropertiesResponse({
    required this.vault,
    required this.vaultSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'vault':
          pulumi.Input.mapInputValue<
            KeyVaultConnectionPropertiesResponse,
            Map<String, dynamic>
          >(vault, (value) => value.toMap()),
      'vaultSecret':
          pulumi.Input.mapInputValue<
            KeyVaultSecretObjectResponse,
            Map<String, dynamic>
          >(vaultSecret, (value) => value.toMap()),
    };
  }

  factory KeyVaultSecretPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KeyVaultSecretPropertiesResponse(
      vault: pulumi.Input.fromValue(
        KeyVaultConnectionPropertiesResponse.fromMap(
          (map['vault']! as Map).cast<String, dynamic>(),
        ),
      ),
      vaultSecret: pulumi.Input.fromValue(
        KeyVaultSecretObjectResponse.fromMap(
          (map['vaultSecret']! as Map).cast<String, dynamic>(),
        ),
      ),
    );
  }
}
