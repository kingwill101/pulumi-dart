// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_ssl_config_response.dart';

/// Oracle database profile.
class OracleProfileResponse {
  /// Connection string attributes
  final Map<String, String> connectionAttributes;

  /// Database for the Oracle connection.
  final String databaseService;

  /// Hostname for the Oracle connection.
  final String hostname;

  /// Optional. SSL configuration for the Oracle connection.
  final OracleSslConfigResponse oracleSslConfig;

  /// Password for the Oracle connection.
  final String password;

  /// Port for the Oracle connection, default value is 1521.
  final int port;

  /// Username for the Oracle connection.
  final String username;

  /// Creates a new [OracleProfileResponse].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [oracleSslConfig] Optional. SSL configuration for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection, default value is 1521.
  /// [username] Username for the Oracle connection.
  OracleProfileResponse({
    required this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    required this.oracleSslConfig,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttributes': connectionAttributes,
      'databaseService': databaseService,
      'hostname': hostname,
      'oracleSslConfig': oracleSslConfig.toMap(),
      'password': password,
      'port': port,
      'username': username,
    };
  }

  factory OracleProfileResponse.fromMap(Map<String, dynamic> map) {
    return OracleProfileResponse(
      connectionAttributes: (map['connectionAttributes'] as Map)
          .cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      oracleSslConfig: OracleSslConfigResponse.fromMap(
        (map['oracleSslConfig'] as Map).cast<String, dynamic>(),
      ),
      password: map['password'] as String,
      port: map['port'] as int,
      username: map['username'] as String,
    );
  }
}
