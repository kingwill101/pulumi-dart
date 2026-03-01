// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic {
  final String password;
  final String username;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic].
  /// [password] Required.
  /// [username] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
