// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'key_vault_properties_response.dart';

/// OAuthClientCredentials for clientId clientSecret auth.
class OAuthClientCredentialsResponse {
  /// ClientId associated with the provider.
  final pulumi.Input<String> clientId;

  /// Properties of the key vault.
  final pulumi.Input<KeyVaultPropertiesResponse> clientSecret;

  /// Enum for different types of AuthCredentials supported.
  /// Expected value is 'OAuthClientCredentials'.
  final pulumi.Input<String> kind;

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
      'clientSecret':
          pulumi.Input.mapInputValue<
            KeyVaultPropertiesResponse,
            Map<String, dynamic>
          >(clientSecret, (value) => value.toMap()),
      'kind': kind,
    };
  }

  factory OAuthClientCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return OAuthClientCredentialsResponse(
      clientId: pulumi.Input.fromValue(map['clientId'] as String),
      clientSecret: pulumi.Input.fromValue(
        KeyVaultPropertiesResponse.fromMap(
          (map['clientSecret']! as Map).cast<String, dynamic>(),
        ),
      ),
      kind: pulumi.Input.fromValue(map['kind'] as String),
    );
  }
}
