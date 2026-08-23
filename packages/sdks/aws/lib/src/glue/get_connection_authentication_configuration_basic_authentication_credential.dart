// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetConnectionAuthenticationConfigurationBasicAuthenticationCredential {
  /// Password used for basic authentication.
  final pulumi.Input<String> password;
  /// Username used for basic authentication.
  final pulumi.Input<String> username;

  /// Creates a new [GetConnectionAuthenticationConfigurationBasicAuthenticationCredential].
  /// [password] Password used for basic authentication.
  /// [username] Username used for basic authentication.
  const GetConnectionAuthenticationConfigurationBasicAuthenticationCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': password,
      'username': username,
    };
  }

  factory GetConnectionAuthenticationConfigurationBasicAuthenticationCredential.fromMap(Map<String, dynamic> map) {
    return GetConnectionAuthenticationConfigurationBasicAuthenticationCredential(
      password: pulumi.Input.fromValue(map['password'] as String),
      username: pulumi.Input.fromValue(map['username'] as String),
    );
  }
}
