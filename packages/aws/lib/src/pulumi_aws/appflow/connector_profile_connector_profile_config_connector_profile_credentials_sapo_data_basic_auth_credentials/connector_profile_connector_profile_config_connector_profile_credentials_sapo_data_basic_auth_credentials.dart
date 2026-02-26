// ignore_for_file: unused_element, unnecessary_cast

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials {
  final String password;
  final String username;

  ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['password'] = password;
    map['username'] = username;
    return map;
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials.fromMap(
      Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsSapoDataBasicAuthCredentials(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
