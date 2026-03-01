// ignore_for_file: unused_element, unnecessary_cast


/// File share
class SqlFileShareResponse {
  /// Location as SMB share or local drive where backups are placed.
  final String? path;
  /// Username to access the file share location for backups.
  final String? username;

  /// Creates a new [SqlFileShareResponse].
  /// [path] Location as SMB share or local drive where backups are placed.
  /// [username] Username to access the file share location for backups.
  SqlFileShareResponse({
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
      path: map['path'] == null ? null : map['path'] as String,
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}

