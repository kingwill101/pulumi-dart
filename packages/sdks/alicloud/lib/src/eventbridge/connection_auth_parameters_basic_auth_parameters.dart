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
  const ConnectionAuthParametersBasicAuthParameters({
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
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

