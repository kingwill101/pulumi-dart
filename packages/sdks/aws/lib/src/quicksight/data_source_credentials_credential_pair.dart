// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class DataSourceCredentialsCredentialPair {
  /// Password, maximum length of 1024 characters.
  final pulumi.Input<String> password;
  /// User name, maximum length of 64 characters.
  final pulumi.Input<String> username;

  /// Creates a new [DataSourceCredentialsCredentialPair].
  /// [password] Password, maximum length of 1024 characters.
  /// [username] User name, maximum length of 64 characters.
  const DataSourceCredentialsCredentialPair({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory DataSourceCredentialsCredentialPair.fromMap(Map<String, dynamic> map) {
    return DataSourceCredentialsCredentialPair(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
