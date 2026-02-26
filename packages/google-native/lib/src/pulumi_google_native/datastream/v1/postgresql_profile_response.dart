// ignore_for_file: unused_element, unnecessary_cast

/// PostgreSQL database profile.
class PostgresqlProfileResponse {
  /// Database for the PostgreSQL connection.
  final String database;

  /// Hostname for the PostgreSQL connection.
  final String hostname;

  /// Password for the PostgreSQL connection.
  final String password;

  /// Port for the PostgreSQL connection, default value is 5432.
  final int port;

  /// Username for the PostgreSQL connection.
  final String username;

  PostgresqlProfileResponse({
    required this.database,
    required this.hostname,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['database'] = database;
    map['hostname'] = hostname;
    map['password'] = password;
    map['port'] = port;
    map['username'] = username;
    return map;
  }

  factory PostgresqlProfileResponse.fromMap(Map<String, dynamic> map) {
    return PostgresqlProfileResponse(
      database: map['database'] as String,
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      username: map['username'] as String,
    );
  }
}
