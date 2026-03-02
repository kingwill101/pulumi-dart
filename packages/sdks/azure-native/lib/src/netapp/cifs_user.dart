// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The effective CIFS username when accessing the volume data.
class CifsUser {
  /// The CIFS user's username
  final pulumi.Input<String>? username;

  /// Creates a new [CifsUser].
  /// [username] The CIFS user's username
  CifsUser({
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'username': ?username,
    };
  }

  factory CifsUser.fromMap(Map<String, dynamic> map) {
    return CifsUser(
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

