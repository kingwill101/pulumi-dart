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
  BasicLoginInformation({
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
      password: map['password'] == null ? null : (map['password']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

