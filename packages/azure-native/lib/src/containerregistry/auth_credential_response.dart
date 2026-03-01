// ignore_for_file: unused_element, unnecessary_cast

import 'credential_health_response.dart';

/// Authentication credential stored for an upstream.
class AuthCredentialResponse {
  /// This provides data pertaining to the health of the auth credential.
  final CredentialHealthResponse credentialHealth;
  /// The name of the credential.
  final String? name;
  /// KeyVault Secret URI for accessing the password.
  final String? passwordSecretIdentifier;
  /// KeyVault Secret URI for accessing the username.
  final String? usernameSecretIdentifier;

  /// Creates a new [AuthCredentialResponse].
  /// [credentialHealth] This provides data pertaining to the health of the auth credential.
  /// [name] The name of the credential.
  /// [passwordSecretIdentifier] KeyVault Secret URI for accessing the password.
  /// [usernameSecretIdentifier] KeyVault Secret URI for accessing the username.
  AuthCredentialResponse({
    required this.credentialHealth,
    this.name,
    this.passwordSecretIdentifier,
    this.usernameSecretIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'credentialHealth': credentialHealth.toMap(),
      'name': ?name,
      'passwordSecretIdentifier': ?passwordSecretIdentifier,
      'usernameSecretIdentifier': ?usernameSecretIdentifier,
    };
  }

  factory AuthCredentialResponse.fromMap(Map<String, dynamic> map) {
    return AuthCredentialResponse(
      credentialHealth: CredentialHealthResponse.fromMap((map['credentialHealth'] as Map).cast<String, dynamic>()),
      name: map['name'] == null ? null : map['name'] as String,
      passwordSecretIdentifier: map['passwordSecretIdentifier'] == null ? null : map['passwordSecretIdentifier'] as String,
      usernameSecretIdentifier: map['usernameSecretIdentifier'] == null ? null : map['usernameSecretIdentifier'] as String,
    );
  }
}

