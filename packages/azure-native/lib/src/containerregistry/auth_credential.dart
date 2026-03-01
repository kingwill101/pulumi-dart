// ignore_for_file: unused_element, unnecessary_cast


/// Authentication credential stored for an upstream.
class AuthCredential {
  /// The name of the credential.
  final String? name;
  /// KeyVault Secret URI for accessing the password.
  final String? passwordSecretIdentifier;
  /// KeyVault Secret URI for accessing the username.
  final String? usernameSecretIdentifier;

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
      name: map['name'] == null ? null : map['name'] as String,
      passwordSecretIdentifier: map['passwordSecretIdentifier'] == null ? null : map['passwordSecretIdentifier'] as String,
      usernameSecretIdentifier: map['usernameSecretIdentifier'] == null ? null : map['usernameSecretIdentifier'] as String,
    );
  }
}

