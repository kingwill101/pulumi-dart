// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthenticationConfigurationBasicAuthenticationCredentials {
  /// Password for authentication.
  final pulumi.Input<String> password;
  /// Username for authentication.
  final pulumi.Input<String> username;

  /// Creates a new [ConnectionAuthenticationConfigurationBasicAuthenticationCredentials].
  /// [password] Password for authentication.
  /// [username] Username for authentication.
  const ConnectionAuthenticationConfigurationBasicAuthenticationCredentials({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory ConnectionAuthenticationConfigurationBasicAuthenticationCredentials.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthenticationConfigurationBasicAuthenticationCredentials(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
