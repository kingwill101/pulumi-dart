// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_connection_properties.dart';
import 'key_vault_secret_object.dart';

/// Kafka Token KeyVault properties.
class KafkaTokenKeyVaultProperties {
  /// Username to connect with.
  final pulumi.Input<String>? username;
  /// KeyVault properties.
  final pulumi.Input<KeyVaultConnectionProperties> vault;
  /// KeyVault secret details.
  final pulumi.Input<KeyVaultSecretObject> vaultSecret;

  /// Creates a new [KafkaTokenKeyVaultProperties].
  /// [username] Username to connect with.
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  const KafkaTokenKeyVaultProperties({
    this.username,
    required this.vault,
    required this.vaultSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
      'vault': pulumi.Input.mapInputValue<KeyVaultConnectionProperties, Map<String, dynamic>>(vault, (value) => value.toMap()),
      'vaultSecret': pulumi.Input.mapInputValue<KeyVaultSecretObject, Map<String, dynamic>>(vaultSecret, (value) => value.toMap()),
    };
  }

  factory KafkaTokenKeyVaultProperties.fromMap(Map<String, dynamic> map) {
    return KafkaTokenKeyVaultProperties(
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vault: pulumi.Input.fromValue(KeyVaultConnectionProperties.fromMap((map['vault']! as Map).cast<String, dynamic>())),
      vaultSecret: pulumi.Input.fromValue(KeyVaultSecretObject.fromMap((map['vaultSecret']! as Map).cast<String, dynamic>())),
    );
  }
}

