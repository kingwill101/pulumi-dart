// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_ssl_config_response.dart';

/// MySQL database profile.
class MysqlProfileResponse {
  /// Hostname for the MySQL connection.
  final String hostname;
  /// Input only. Password for the MySQL connection.
  final String password;
  /// Port for the MySQL connection, default value is 3306.
  final int port;
  /// SSL configuration for the MySQL connection.
  final MysqlSslConfigResponse sslConfig;
  /// Username for the MySQL connection.
  final String username;

  /// Creates a new [MysqlProfileResponse].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Input only. Password for the MySQL connection.
  /// [port] Port for the MySQL connection, default value is 3306.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  MysqlProfileResponse({
    required this.hostname,
    required this.password,
    required this.port,
    required this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': password,
      'port': port,
      'sslConfig': sslConfig.toMap(),
      'username': username,
    };
  }

  factory MysqlProfileResponse.fromMap(Map<String, dynamic> map) {
    return MysqlProfileResponse(
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      sslConfig: MysqlSslConfigResponse.fromMap((map['sslConfig'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}

