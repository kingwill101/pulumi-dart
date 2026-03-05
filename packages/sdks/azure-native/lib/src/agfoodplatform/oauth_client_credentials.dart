// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

/// OAuthClientCredentials for clientId clientSecret auth.
class OAuthClientCredentials {
  /// ClientId associated with the provider.
  final pulumi.Input<String> clientId;
  /// Properties of the key vault.
  final pulumi.Input<KeyVaultProperties> clientSecret;
  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'OAuthClientCredentials'.
  final pulumi.Input<String> kind;

  /// Creates a new [OAuthClientCredentials].
  /// [clientId] ClientId associated with the provider.
  /// [clientSecret] Properties of the key vault.
  /// [kind] Enum for different types of AuthCredentials supported.
  OAuthClientCredentials({
    required this.clientId,
    required this.clientSecret,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'clientId': clientId,
      'clientSecret': pulumi.Input.mapInputValue<KeyVaultProperties, Map<String, dynamic>>(clientSecret, (value) => value.toMap()),
      'kind': kind,
    };
  }

  factory OAuthClientCredentials.fromMap(Map<String, dynamic> map) {
    return OAuthClientCredentials(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(KeyVaultProperties.fromMap((map['clientSecret']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

