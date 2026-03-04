// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to guest.
class GuestCredential {
  /// The password to connect with the guest.
  final pulumi.Input<String>? password;

  /// The username to connect with the guest.
  final pulumi.Input<String>? username;

  /// Creates a new [GuestCredential].
  /// [password] The password to connect with the guest.
  /// [username] The username to connect with the guest.
  GuestCredential({this.password, this.username});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': ?password, 'username': ?username};
  }

  factory GuestCredential.fromMap(Map<String, dynamic> map) {
    return GuestCredential(
      password: (() {
        final guardedValue = map['password'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      username: (() {
        final guardedValue = map['username'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
