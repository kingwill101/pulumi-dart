// ignore_for_file: unused_element, unnecessary_cast


/// The credentials for authentication mode UsernamePassword.
class UsernamePasswordCredentialsResponse {
  /// The name of the secret containing the password.
  final String passwordSecretName;
  /// The name of the secret containing the username.
  final String usernameSecretName;

  /// Creates a new [UsernamePasswordCredentialsResponse].
  /// [passwordSecretName] The name of the secret containing the password.
  /// [usernameSecretName] The name of the secret containing the username.
  UsernamePasswordCredentialsResponse({
    required this.passwordSecretName,
    required this.usernameSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretName': passwordSecretName,
      'usernameSecretName': usernameSecretName,
    };
  }

  factory UsernamePasswordCredentialsResponse.fromMap(Map<String, dynamic> map) {
    return UsernamePasswordCredentialsResponse(
      passwordSecretName: map['passwordSecretName'] as String,
      usernameSecretName: map['usernameSecretName'] as String,
    );
  }
}

