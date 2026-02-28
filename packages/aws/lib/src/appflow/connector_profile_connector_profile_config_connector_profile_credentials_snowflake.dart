// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake {
  final String password;
  final String username;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake].
  /// [password] Required.
  /// [username] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSnowflake(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
