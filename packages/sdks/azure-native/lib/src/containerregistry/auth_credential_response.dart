// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'credential_health_response.dart';

/// Authentication credential stored for an upstream.
class AuthCredentialResponse {
  /// This provides data pertaining to the health of the auth credential.
  final pulumi.Input<CredentialHealthResponse> credentialHealth;
  /// The name of the credential.
  final pulumi.Input<String>? name;
  /// KeyVault Secret URI for accessing the password.
  final pulumi.Input<String>? passwordSecretIdentifier;
  /// KeyVault Secret URI for accessing the username.
  final pulumi.Input<String>? usernameSecretIdentifier;

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
      'credentialHealth': pulumi.Input.mapInputValue<CredentialHealthResponse, Map<String, dynamic>>(credentialHealth, (value) => value.toMap()),
      'name': ?name,
      'passwordSecretIdentifier': ?passwordSecretIdentifier,
      'usernameSecretIdentifier': ?usernameSecretIdentifier,
    };
  }

  factory AuthCredentialResponse.fromMap(Map<String, dynamic> map) {
    return AuthCredentialResponse(
      credentialHealth: pulumi.Input.fromValue(CredentialHealthResponse.fromMap((map['credentialHealth']! as Map).cast<String, dynamic>())),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretIdentifier: (() { final guardedValue = map['passwordSecretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernameSecretIdentifier: (() { final guardedValue = map['usernameSecretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

