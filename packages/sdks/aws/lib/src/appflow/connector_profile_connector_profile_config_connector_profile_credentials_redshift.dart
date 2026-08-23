// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift {
  /// Password that corresponds to the user name.
  final pulumi.Input<String> password;
  /// Name of the user.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift].
  /// [password] Password that corresponds to the user name.
  /// [username] Name of the user.
  const ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift.fromMap(Map<String, dynamic> map) {
    return ConnectorProfileConnectorProfileConfigConnectorProfileCredentialsRedshift(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
