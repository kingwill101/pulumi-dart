// ignore_for_file: unused_element, unnecessary_cast


class ConnectionProfileSqlServerProfile {
  /// Database for the SQL Server connection.
  final String database;
  /// Hostname for the SQL Server connection.
  final String hostname;
  /// Password for the SQL Server connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;
  /// Port for the SQL Server connection.
  final int? port;
  /// A reference to a Secret Manager resource name storing the user's password.
  final String? secretManagerStoredPassword;
  /// Username for the SQL Server connection.
  final String username;

  /// Creates a new [ConnectionProfileSqlServerProfile].
  /// [database] Database for the SQL Server connection.
  /// [hostname] Hostname for the SQL Server connection.
  /// [password] Password for the SQL Server connection.
  /// [port] Port for the SQL Server connection.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [username] Username for the SQL Server connection.
  ConnectionProfileSqlServerProfile({
    required this.database,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'hostname': hostname,
      'password': ?password,
      'port': ?port,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'username': username,
    };
  }

  factory ConnectionProfileSqlServerProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileSqlServerProfile(
      database: map['database'] as String,
      hostname: map['hostname'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null ? null : map['secretManagerStoredPassword'] as String,
      username: map['username'] as String,
    );
  }
}

