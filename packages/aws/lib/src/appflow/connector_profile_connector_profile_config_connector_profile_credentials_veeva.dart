// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva {
  final String password;
  final String username;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva].
  /// [password] Required.
  /// [username] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
