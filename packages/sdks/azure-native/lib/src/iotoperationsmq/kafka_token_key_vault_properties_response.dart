// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_connection_properties_response.dart';
import 'key_vault_secret_object_response.dart';

/// Kafka Token KeyVault properties.
class KafkaTokenKeyVaultPropertiesResponse {
  /// Username to connect with.
  final pulumi.Input<String>? username;
  /// KeyVault properties.
  final pulumi.Input<KeyVaultConnectionPropertiesResponse> vault;
  /// KeyVault secret details.
  final pulumi.Input<KeyVaultSecretObjectResponse> vaultSecret;

  /// Creates a new [KafkaTokenKeyVaultPropertiesResponse].
  /// [username] Username to connect with.
  /// [vault] KeyVault properties.
  /// [vaultSecret] KeyVault secret details.
  const KafkaTokenKeyVaultPropertiesResponse({
    this.username,
    required this.vault,
    required this.vaultSecret,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
      'vault': pulumi.Input.mapInputValue<KeyVaultConnectionPropertiesResponse, Map<String, dynamic>>(vault, (value) => value.toMap()),
      'vaultSecret': pulumi.Input.mapInputValue<KeyVaultSecretObjectResponse, Map<String, dynamic>>(vaultSecret, (value) => value.toMap()),
    };
  }

  factory KafkaTokenKeyVaultPropertiesResponse.fromMap(Map<String, dynamic> map) {
    return KafkaTokenKeyVaultPropertiesResponse(
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      vault: pulumi.Input.fromValue(KeyVaultConnectionPropertiesResponse.fromMap((map['vault']! as Map).cast<String, dynamic>())),
      vaultSecret: pulumi.Input.fromValue(KeyVaultSecretObjectResponse.fromMap((map['vaultSecret']! as Map).cast<String, dynamic>())),
    );
  }
}
