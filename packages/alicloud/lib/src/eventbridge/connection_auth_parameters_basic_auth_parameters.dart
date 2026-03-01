// ignore_for_file: unused_element, unnecessary_cast


class ConnectionAuthParametersBasicAuthParameters {
  /// The password for basic authentication.
  final String? password;
  /// The username for basic authentication.
  final String? username;

  /// Creates a new [ConnectionAuthParametersBasicAuthParameters].
  /// [password] The password for basic authentication.
  /// [username] The username for basic authentication.
  ConnectionAuthParametersBasicAuthParameters({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory ConnectionAuthParametersBasicAuthParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersBasicAuthParameters(
      password: map['password'] == null ? null : map['password'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

