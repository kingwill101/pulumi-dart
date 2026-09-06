// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to guest.
class GuestCredentialResponse {
  /// Gets or sets username to connect with the guest.
  final pulumi.Input<String?>? username;

  /// Creates a new [GuestCredentialResponse].
  /// [username] Gets or sets username to connect with the guest.
  const GuestCredentialResponse({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory GuestCredentialResponse.fromMap(Map<String, dynamic> map) {
    return GuestCredentialResponse(
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
