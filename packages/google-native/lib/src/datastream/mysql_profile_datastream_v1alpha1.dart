// ignore_for_file: unused_element, unnecessary_cast

import 'mysql_ssl_config_datastream_v1alpha1.dart';

/// MySQL database profile.
class MysqlProfileDatastreamV1alpha1 {
  /// Hostname for the MySQL connection.
  final String hostname;
  /// Input only. Password for the MySQL connection.
  final String password;
  /// Port for the MySQL connection, default value is 3306.
  final int? port;
  /// SSL configuration for the MySQL connection.
  final MysqlSslConfigDatastreamV1alpha1? sslConfig;
  /// Username for the MySQL connection.
  final String username;

  /// Creates a new [MysqlProfileDatastreamV1alpha1].
  /// [hostname] Hostname for the MySQL connection.
  /// [password] Input only. Password for the MySQL connection.
  /// [port] Port for the MySQL connection, default value is 3306.
  /// [sslConfig] SSL configuration for the MySQL connection.
  /// [username] Username for the MySQL connection.
  MysqlProfileDatastreamV1alpha1({
    required this.hostname,
    required this.password,
    this.port,
    this.sslConfig,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'hostname': hostname,
      'password': password,
      'port': ?port,
      'sslConfig': ?sslConfig == null ? null : sslConfig!.toMap(),
      'username': username,
    };
  }

  factory MysqlProfileDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return MysqlProfileDatastreamV1alpha1(
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      sslConfig: map['sslConfig'] == null ? null : MysqlSslConfigDatastreamV1alpha1.fromMap((map['sslConfig'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}

