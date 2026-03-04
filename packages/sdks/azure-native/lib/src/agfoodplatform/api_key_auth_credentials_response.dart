// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// ApiKeyAuthCredentials class for ApiKey based Auth.
class ApiKeyAuthCredentialsResponse {
  /// Properties of the key vault.
  final pulumi.Input<KeyVaultPropertiesResponse> apiKey;

  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'ApiKeyAuthCredentials'.
  final pulumi.Input<String> kind;

  /// Creates a new [ApiKeyAuthCredentialsResponse].
  /// [apiKey] Properties of the key vault.
  /// [kind] Enum for different types of AuthCredentials supported.
  ApiKeyAuthCredentialsResponse({required this.apiKey, required this.kind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey':
          pulumi.Input.mapInputValue<
            KeyVaultPropertiesResponse,
            Map<String, dynamic>
          >(apiKey, (value) => value.toMap()),
      'kind': kind,
    };
  }

  factory ApiKeyAuthCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthCredentialsResponse(
      apiKey: pulumi.Input.fromValue(
        KeyVaultPropertiesResponse.fromMap(
          (map['apiKey']! as Map).cast<String, dynamic>(),
        ),
      ),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
