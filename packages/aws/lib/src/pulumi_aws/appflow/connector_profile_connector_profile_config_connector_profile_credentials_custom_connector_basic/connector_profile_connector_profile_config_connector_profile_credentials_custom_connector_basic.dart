// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic {
  final String password;
  final String username;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsCustomConnectorBasic(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
