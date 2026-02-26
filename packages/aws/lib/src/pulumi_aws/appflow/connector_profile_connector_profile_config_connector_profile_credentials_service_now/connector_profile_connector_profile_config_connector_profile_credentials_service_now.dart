// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow {
  final String password;
  final String username;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsServiceNow(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
