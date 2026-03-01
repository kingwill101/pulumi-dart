// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_connection_properties_response.dart';
import 'key_vault_secret_object_response.dart';

/// Kafka Token KeyVault properties.
class KafkaTokenKeyVaultPropertiesResponse {
  /// Username to connect with.
  final String? username;
  /// KeyVault properties.
  final KeyVaultConnectionPropertiesResponse vault;
  /// KeyVault secret details.
  final KeyVaultSecretObjectResponse vaultSecret;

  /// Creates a new [KafkaTokenKeyVaultPropertiesResponse].
  /// [username] Username to connect with.
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  KafkaTokenKeyVaultPropertiesResponse({
    this.username,
    required this.vault,
    required this.vaultSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
      'vault': vault.toMap(),
      'vaultSecret': vaultSecret.toMap(),
    };
  }

  factory KafkaTokenKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaTokenKeyVaultPropertiesResponse(
      username: map['username'] == null ? null : map['username'] as String,
      vault: KeyVaultConnectionPropertiesResponse.fromMap((map['vault'] as Map).cast<String, dynamic>()),
      vaultSecret: KeyVaultSecretObjectResponse.fromMap((map['vaultSecret'] as Map).cast<String, dynamic>()),
    );
  }
}

