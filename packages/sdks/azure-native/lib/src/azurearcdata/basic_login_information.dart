// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username and password for basic login authentication.
class BasicLoginInformation {
  /// Login password.
  final pulumi.Input<String>? password;
  /// Login username.
  final pulumi.Input<String>? username;

  /// Creates a new [BasicLoginInformation].
  /// [password] Login password.
  /// [username] Login username.
  const BasicLoginInformation({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory BasicLoginInformation.fromMap(Map<String, dynamic> map) {
    return BasicLoginInformation(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
