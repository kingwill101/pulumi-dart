// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to vcenter.
class VICredential {
  /// Gets or sets the password to connect with the vCenter.
  final pulumi.Input<String>? password;
  /// Gets or sets username to connect with the vCenter.
  final pulumi.Input<String>? username;

  /// Creates a new [VICredential].
  /// [password] Gets or sets the password to connect with the vCenter.
  /// [username] Gets or sets username to connect with the vCenter.
  const VICredential({
    this.password,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'username': ?username,
    };
  }

  factory VICredential.fromMap(Map<String, dynamic> map) {
    return VICredential(
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
