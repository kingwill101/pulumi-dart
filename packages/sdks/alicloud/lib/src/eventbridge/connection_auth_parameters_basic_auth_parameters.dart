// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionAuthParametersBasicAuthParameters {
  /// The password for basic authentication.
  final pulumi.Input<String>? password;
  /// The username for basic authentication.
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionAuthParametersBasicAuthParameters].
  /// [password] The password for basic authentication.
  /// [username] The username for basic authentication.
  ConnectionAuthParametersBasicAuthParameters({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory ConnectionAuthParametersBasicAuthParameters.fromMap(Map<String, dynamic> map) {
    return ConnectionAuthParametersBasicAuthParameters(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

