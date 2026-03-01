// ignore_for_file: unused_element, unnecessary_cast

class ConnectionCloudSqlCredential {
  /// Password for database.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String password;

  /// Username for database.
  final String username;

  /// Creates a new [ConnectionCloudSqlCredential].
  /// [password] Password for database.
  /// [username] Username for database.
  ConnectionCloudSqlCredential({
    required this.password,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'password': password, 'username': username};
  }

  factory ConnectionCloudSqlCredential.fromMap(Map<String, dynamic> map) {
    return ConnectionCloudSqlCredential(
      password: map['password'] as String,
      username: map['username'] as String,
    );
  }
}
