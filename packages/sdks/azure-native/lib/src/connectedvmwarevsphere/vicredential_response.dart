// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Username / Password Credentials to connect to vcenter.
class VICredentialResponse {
  /// Gets or sets username to connect with the vCenter.
  final pulumi.Input<String>? username;

  /// Creates a new [VICredentialResponse].
  /// [username] Gets or sets username to connect with the vCenter.
  VICredentialResponse({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory VICredentialResponse.fromMap(Map<String, dynamic> map) {
    return VICredentialResponse(
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

