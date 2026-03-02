// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File share
class SqlFileShare {
  /// Password for username to access file share location.
  final pulumi.Input<String>? password;
  /// Location as SMB share or local drive where backups are placed.
  final pulumi.Input<String>? path;
  /// Username to access the file share location for backups.
  final pulumi.Input<String>? username;

  /// Creates a new [SqlFileShare].
  /// [password] Password for username to access file share location.
  /// [path] Location as SMB share or local drive where backups are placed.
  /// [username] Username to access the file share location for backups.
  SqlFileShare({
    this.password,
    this.path,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'password': ?password,
      'path': ?path,
      'username': ?username,
    };
  }

  factory SqlFileShare.fromMap(Map<String, dynamic> map) {
    return SqlFileShare(
      password: map['password'] == null ? null : (map['password']! as String).input(),
      path: map['path'] == null ? null : (map['path']! as String).input(),
      username: map['username'] == null ? null : (map['username']! as String).input(),
    );
  }
}

