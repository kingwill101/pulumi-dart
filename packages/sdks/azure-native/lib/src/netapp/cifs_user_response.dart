// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The effective CIFS username when accessing the volume data.
class CifsUserResponse {
  /// The CIFS user's username
  final pulumi.Input<String>? username;

  /// Creates a new [CifsUserResponse].
  /// [username] The CIFS user's username
  CifsUserResponse({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory CifsUserResponse.fromMap(Map<String, dynamic> map) {
    return CifsUserResponse(
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

