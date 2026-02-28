// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_ssl_config.dart';

/// MySQL database profile.
class MysqlProfile {
  /// Hostname for the MySQL connection.
  final String hostname;

  /// Input only. Password for the MySQL connection.
  final String password;

  /// Port for the MySQL connection, default value is 3306.
  final int? port;

  /// SSL configuration for the MySQL connection.
  final MysqlSslConfig? sslConfig;

  /// Username for the MySQL connection.
  final String username;

  /// Creates a new [MysqlProfile].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Input only. Password for the MySQL connection.
  /// [port] Port for the MySQL connection, default value is 3306.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  MysqlProfile({
    required this.hostname,
    required this.password,
    this.port,
    this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['hostname'] = hostname;
    map['password'] = password;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final sslConfigValue = sslConfig;
    if (sslConfigValue != null) {
      map['sslConfig'] = sslConfigValue.toMap();
    }
    map['username'] = username;
    return map;
  }

  factory MysqlProfile.fromMap(Map<String, dynamic> map) {
    return MysqlProfile(
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      sslConfig: map['sslConfig'] == null
          ? null
          : MysqlSslConfig.fromMap(
              (map['sslConfig'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
