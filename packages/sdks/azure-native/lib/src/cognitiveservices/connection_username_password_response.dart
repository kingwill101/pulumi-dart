// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ConnectionUsernamePasswordResponse {
  final pulumi.Input<String?>? password;
  /// Optional, required by connections like SalesForce for extra security in addition to UsernamePassword
  final pulumi.Input<String?>? securityToken;
  final pulumi.Input<String?>? username;

  /// Creates a new [ConnectionUsernamePasswordResponse].
  /// [password] Optional.
  /// [securityToken] Optional, required by connections like SalesForce for extra security in addition to UsernamePassword
  /// [username] Optional.
  const ConnectionUsernamePasswordResponse({
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

  factory ConnectionUsernamePasswordResponse.fromMap(Map<String, dynamic> map) {
    return ConnectionUsernamePasswordResponse(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      securityToken: (() { final guardedValue = map['securityToken']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
