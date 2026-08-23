// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The effective CIFS username when accessing the volume data.
class CifsUserResponse {
  /// The CIFS user's username
  final pulumi.Input<String>? username;

  /// Creates a new [CifsUserResponse].
  /// [username] The CIFS user's username
  const CifsUserResponse({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory CifsUserResponse.fromMap(Map<String, dynamic> map) {
    return CifsUserResponse(
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
