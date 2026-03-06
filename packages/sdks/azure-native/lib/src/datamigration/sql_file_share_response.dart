// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// File share
class SqlFileShareResponse {
  /// Location as SMB share or local drive where backups are placed.
  final pulumi.Input<String>? path;
  /// Username to access the file share location for backups.
  final pulumi.Input<String>? username;

  /// Creates a new [SqlFileShareResponse].
  /// [path] Location as SMB share or local drive where backups are placed.
  /// [username] Username to access the file share location for backups.
  const SqlFileShareResponse({
    this.path,
    this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'path': ?path,
      'username': ?username,
    };
  }

  factory SqlFileShareResponse.fromMap(Map<String, dynamic> map) {
    return SqlFileShareResponse(
      path: (() { final guardedValue = map['path']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      username: (() { final guardedValue = map['username']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

