// ignore_for_file: unused_element, unnecessary_cast

import 'key_vault_properties.dart';

/// ApiKeyAuthCredentials class for ApiKey based Auth.
class ApiKeyAuthCredentials {
  /// Properties of the key vault.
  final KeyVaultProperties apiKey;
  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'ApiKeyAuthCredentials'.
  final String kind;

  /// Creates a new [ApiKeyAuthCredentials].
  /// [apiKey] Properties of the key vault.
  /// [kind] Enum for different types of AuthCredentials supported.
  ApiKeyAuthCredentials({
    required this.apiKey,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': apiKey.toMap(),
      'kind': kind,
    };
  }

  factory ApiKeyAuthCredentials.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthCredentials(
      apiKey: KeyVaultProperties.fromMap((map['apiKey'] as Map).cast<String, dynamic>()),
      kind: map['kind'] as String,
    );
  }
}

