// ignore_for_file: unused_element, unnecessary_cast


/// The credentials for authentication mode UsernamePassword.
class UsernamePasswordCredentials {
  /// The name of the secret containing the password.
  final String passwordSecretName;
  /// The name of the secret containing the username.
  final String usernameSecretName;

  /// Creates a new [UsernamePasswordCredentials].
  /// [passwordSecretName] The name of the secret containing the password.
  /// [usernameSecretName] The name of the secret containing the username.
  UsernamePasswordCredentials({
    required this.passwordSecretName,
    required this.usernameSecretName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'passwordSecretName': passwordSecretName,
      'usernameSecretName': usernameSecretName,
    };
  }

  factory UsernamePasswordCredentials.fromMap(Map<String, dynamic> map) {
    return UsernamePasswordCredentials(
      passwordSecretName: map['passwordSecretName'] as String,
      usernameSecretName: map['usernameSecretName'] as String,
    );
  }
}

