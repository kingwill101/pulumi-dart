// ignore_for_file: unused_element, unnecessary_cast


class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow {
  final String password;
  final String username;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow].
  /// [password] Required.
  /// [username] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}

