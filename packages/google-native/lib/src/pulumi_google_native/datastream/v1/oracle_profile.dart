// ignore_for_file: unused_element, unnecessary_cast

import 'oracle_ssl_config.dart';

/// Oracle database profile.
class OracleProfile {
  /// Connection string attributes
  final Map<String, String>? connectionAttributes;

  /// Database for the Oracle connection.
  final String databaseService;

  /// Hostname for the Oracle connection.
  final String hostname;

  /// Optional. SSL configuration for the Oracle connection.
  final OracleSslConfig? oracleSslConfig;

  /// Password for the Oracle connection.
  final String password;

  /// Port for the Oracle connection, default value is 1521.
  final int? port;

  /// Username for the Oracle connection.
  final String username;

  OracleProfile({
    this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    this.oracleSslConfig,
    required this.password,
    this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final connectionAttributesValue = connectionAttributes;
    if (connectionAttributesValue != null) {
      map['connectionAttributes'] = connectionAttributesValue;
    }
    map['databaseService'] = databaseService;
    map['hostname'] = hostname;
    final oracleSslConfigValue = oracleSslConfig;
    if (oracleSslConfigValue != null) {
      map['oracleSslConfig'] = oracleSslConfigValue.toMap();
    }
    map['password'] = password;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['username'] = username;
    return map;
  }

  factory OracleProfile.fromMap(Map<String, dynamic> map) {
    return OracleProfile(
      connectionAttributes: map['connectionAttributes'] == null
          ? null
          : (map['connectionAttributes'] as Map).cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      oracleSslConfig: map['oracleSslConfig'] == null
          ? null
          : OracleSslConfig.fromMap(
              (map['oracleSslConfig'] as Map).cast<String, dynamic>()),
      password: map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      username: map['username'] as String,
    );
  }
}
