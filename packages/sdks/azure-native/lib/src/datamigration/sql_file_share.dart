// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File share
class SqlFileShare {
  /// Password for username to access file share location.
  final pulumi.Input<String?>? password;
  /// Location as SMB share or local drive where backups are placed.
  final pulumi.Input<String?>? path;
  /// Username to access the file share location for backups.
  final pulumi.Input<String?>? username;

  /// Creates a new [SqlFileShare].
  /// [password] Password for username to access file share location.
  /// [path] Location as SMB share or local drive where backups are placed.
  /// [username] Username to access the file share location for backups.
  const SqlFileShare({
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
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
