// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_connection_properties.dart';
import 'key_vault_secret_object.dart';

/// Kafka Token KeyVault properties.
class KafkaTokenKeyVaultProperties {
  /// Username to connect with.
  final String? username;
  /// KeyVault properties.
  final KeyVaultConnectionProperties vault;
  /// KeyVault secret details.
  final KeyVaultSecretObject vaultSecret;

  /// Creates a new [KafkaTokenKeyVaultProperties].
  /// [username] Username to connect with.
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  KafkaTokenKeyVaultProperties({
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

  factory KafkaTokenKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KafkaTokenKeyVaultProperties(
      username: map['username'] == null ? null : map['username'] as String,
      vault: KeyVaultConnectionProperties.fromMap((map['vault'] as Map).cast<String, dynamic>()),
      vaultSecret: KeyVaultSecretObject.fromMap((map['vaultSecret'] as Map).cast<String, dynamic>()),
    );
  }
}

