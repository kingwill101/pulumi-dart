// ignore_for_file: unused_element, unnecessary_cast

import 'connection_profile_postgresql_profile_ssl_config.dart';

class ConnectionProfilePostgresqlProfile {
  /// Database for the PostgreSQL connection.
  final String database;

  /// Hostname for the PostgreSQL connection.
  final String hostname;

  /// Password for the PostgreSQL connection.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// Port for the PostgreSQL connection.
  final int? port;

  /// A reference to a Secret Manager resource name storing the user's password.
  final String? secretManagerStoredPassword;

  /// SSL configuration for the PostgreSQL connection.
  /// Structure is documented below.
  final ConnectionProfilePostgresqlProfileSslConfig? sslConfig;

  /// Username for the PostgreSQL connection.
  final String username;

  /// Creates a new [ConnectionProfilePostgresqlProfile].
  /// [database] Database for the PostgreSQL connection.
  /// [hostname] Hostname for the PostgreSQL connection.
  /// [password] Password for the PostgreSQL connection.
  /// [port] Port for the PostgreSQL connection.
  /// [secretManagerStoredPassword] A reference to a Secret Manager resource name storing the user's password.
  /// [sslConfig] SSL configuration for the PostgreSQL connection.
  /// [username] Username for the PostgreSQL connection.
  ConnectionProfilePostgresqlProfile({
    required this.database,
    required this.hostname,
    this.password,
    this.port,
    this.secretManagerStoredPassword,
    this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'database': database,
      'hostname': hostname,
      'password': ?password,
      'port': ?port,
      'secretManagerStoredPassword': ?secretManagerStoredPassword,
      'sslConfig': ?sslConfig == null ? null : sslConfig!.toMap(),
      'username': username,
    };
  }

  factory ConnectionProfilePostgresqlProfile.fromMap(Map<String, dynamic> map) {
    return ConnectionProfilePostgresqlProfile(
      database: map['database'] as String,
      hostname: map['hostname'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      secretManagerStoredPassword: map['secretManagerStoredPassword'] == null
          ? null
          : map['secretManagerStoredPassword'] as String,
      sslConfig: map['sslConfig'] == null
          ? null
          : ConnectionProfilePostgresqlProfileSslConfig.fromMap(
              (map['sslConfig'] as Map).cast<String, dynamic>(),
            ),
      username: map['username'] as String,
    );
  }
}
