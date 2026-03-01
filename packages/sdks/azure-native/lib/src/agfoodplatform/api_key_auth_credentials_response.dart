// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties_response.dart';

/// ApiKeyAuthCredentials class for ApiKey based Auth.
class ApiKeyAuthCredentialsResponse {
  /// Properties of the key vault.
  final KeyVaultPropertiesResponse apiKey;
  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'ApiKeyAuthCredentials'.
  final String kind;

  /// Creates a new [ApiKeyAuthCredentialsResponse].
  /// [apiKey] Properties of the key vault.
  /// [kind] Enum for different types of AuthCredentials supported.
  ApiKeyAuthCredentialsResponse({
    required this.apiKey,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey.toMap(),
      'kind': kind,
    };
  }

  factory ApiKeyAuthCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthCredentialsResponse(
      apiKey: KeyVaultPropertiesResponse.fromMap((map['apiKey'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
    );
  }
}

