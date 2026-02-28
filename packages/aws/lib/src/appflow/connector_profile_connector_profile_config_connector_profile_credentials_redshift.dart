// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift {
  final String password;
  final String username;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift].
  /// [password] Required.
  /// [username] Required.
  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
