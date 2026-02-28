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
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsVeeva(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
