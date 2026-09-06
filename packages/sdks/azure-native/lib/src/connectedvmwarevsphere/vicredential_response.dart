// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to vcenter.
class VICredentialResponse {
  /// Gets or sets username to connect with the vCenter.
  final pulumi.Input<String?>? username;

  /// Creates a new [VICredentialResponse].
  /// [username] Gets or sets username to connect with the vCenter.
  const VICredentialResponse({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory VICredentialResponse.fromMap(Map<String, dynamic> map) {
    return VICredentialResponse(
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
