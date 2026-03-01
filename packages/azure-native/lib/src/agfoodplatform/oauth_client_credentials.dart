// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties.dart';

/// OAuthClientCredentials for clientId clientSecret auth.
class OAuthClientCredentials {
  /// ClientId associated with the provider.
  final String clientId;
  /// Properties of the key vault.
  final KeyVaultProperties clientSecret;
  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'OAuthClientCredentials'.
  final String kind;

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
      'clientSecret': clientSecret.toMap(),
      'kind': kind,
    };
  }

  factory OAuthClientCredentials.fromMap(Map<String, dynamic> map) {
    return OAuthClientCredentials(
      clientId: map['clientId'] as String,
      clientSecret: KeyVaultProperties.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
    );
  }
}

