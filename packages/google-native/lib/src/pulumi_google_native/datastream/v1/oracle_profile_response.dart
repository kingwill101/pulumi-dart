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
    final map = <String, dynamic>{};
    map['connectionAttributes'] = connectionAttributes;
    map['databaseService'] = databaseService;
    map['hostname'] = hostname;
    map['oracleSslConfig'] = oracleSslConfig.toMap();
    map['password'] = password;
    map['port'] = port;
    map['username'] = username;
    return map;
  }

  factory OracleProfileResponse.fromMap(Map<String, dynamic> map) {
    return OracleProfileResponse(
      connectionAttributes:
          (map['connectionAttributes'] as Map).cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      oracleSslConfig: OracleSslConfigResponse.fromMap(
          (map['oracleSslConfig'] as Map).cast<String, dynamic>()),
      password: map['password'] as String,
      port: map['port'] as int,
      username: map['username'] as String,
    );
  }
}
