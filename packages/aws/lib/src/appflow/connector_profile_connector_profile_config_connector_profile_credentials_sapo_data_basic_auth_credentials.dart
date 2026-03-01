// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials {
  final String password;
  final String username;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials].
  /// [password] Required.
  /// [username] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials.fromMap(
    Map<String, dynamic> map,
  ) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
