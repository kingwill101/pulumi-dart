// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionUsernamePassword {
  final pulumi.Input<String>? password;
  /// Optional, required by connections like SalesForce for extra security in addition to UsernamePassword
  final pulumi.Input<String>? securityToken;
  final pulumi.Input<String>? username;

  /// Creates a new [ConnectionUsernamePassword].
  /// [password] Optional.
  /// [securityToken] Optional, required by connections like SalesForce for extra security in addition to UsernamePassword
  /// [username] Optional.
  ConnectionUsernamePassword({
    this.password,
    this.securityToken,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'securityToken': ?securityToken,
      'username': ?username,
    };
  }

  factory ConnectionUsernamePassword.fromMap(Map<String, dynamic> map) {
    return ConnectionUsernamePassword(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      securityToken: map['securityToken'] == null ? null : (map['securityToken']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

