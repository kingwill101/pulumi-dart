// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// OAuthClientCredentials for clientId clientSecret auth.
class OAuthClientCredentialsResponse {
  /// ClientId associated with the provider.
  final String clientId;
  /// Properties of the key vault.
  final KeyVaultPropertiesResponse clientSecret;
  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'OAuthClientCredentials'.
  final String kind;

  /// Creates a new [OAuthClientCredentialsResponse].
  /// [clientId] ClientId associated with the provider.
  /// [clientSecret] Properties of the key vault.
  /// [kind] Enum for different types of AuthCredentials supported.
  OAuthClientCredentialsResponse({
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

  factory OAuthClientCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return OAuthClientCredentialsResponse(
      clientId: map['clientId'] as String,
      clientSecret: KeyVaultPropertiesResponse.fromMap((map['clientSecret'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
    );
  }
}

