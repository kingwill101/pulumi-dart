// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties.dart';

/// ApiKeyAuthCredentials class for ApiKey based Auth.
class ApiKeyAuthCredentials {
  /// Properties of the key vault.
  final pulumi.Input<KeyVaultProperties> apiKey;
  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'ApiKeyAuthCredentials'.
  final pulumi.Input<String> kind;

  /// Creates a new [ApiKeyAuthCredentials].
  /// [apiKey] Properties of the key vault.
  /// [kind] Enum for different types of AuthCredentials supported.
  ApiKeyAuthCredentials({
    required this.apiKey,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiKey': pulumi.Input.mapInputValue<KeyVaultProperties, Map<String, dynamic>>(apiKey, (value) => value.toMap()),
      'kind': kind,
    };
  }

  factory ApiKeyAuthCredentials.fromMap(Map<String, dynamic> map) {
    return ApiKeyAuthCredentials(
      apiKey: pulumi.Input.fromValue(KeyVaultProperties.fromMap((map['apiKey']! as Map).cast<String, dynamic>())),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}

