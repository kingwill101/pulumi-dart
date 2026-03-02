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
  VICredential({
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
      password: map['password'] == null ? null : (map['password']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

