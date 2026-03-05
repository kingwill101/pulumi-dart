// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Authentication credential stored for an upstream.
class AuthCredential {
  /// The name of the credential.
  final pulumi.Input<String>? name;
  /// KeyVault Secret URI for accessing the password.
  final pulumi.Input<String>? passwordSecretIdentifier;
  /// KeyVault Secret URI for accessing the username.
  final pulumi.Input<String>? usernameSecretIdentifier;

  /// Creates a new [AuthCredential].
  /// [name] The name of the credential.
  /// [passwordSecretIdentifier] KeyVault Secret URI for accessing the password.
  /// [usernameSecretIdentifier] KeyVault Secret URI for accessing the username.
  AuthCredential({
    this.name,
    this.passwordSecretIdentifier,
    this.usernameSecretIdentifier,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': ?name,
      'passwordSecretIdentifier': ?passwordSecretIdentifier,
      'usernameSecretIdentifier': ?usernameSecretIdentifier,
    };
  }

  factory AuthCredential.fromMap(Map<String, dynamic> map) {
    return AuthCredential(
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      passwordSecretIdentifier: (() { final guardedValue = map['passwordSecretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      usernameSecretIdentifier: (() { final guardedValue = map['usernameSecretIdentifier']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

