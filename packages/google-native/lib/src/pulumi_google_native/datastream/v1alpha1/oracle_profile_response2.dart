// ignore_for_file: unused_element, unnecessary_cast

/// Oracle database profile.
class OracleProfileResponse2 {
  /// Connection string attributes
  final Map<String, String> connectionAttributes;

  /// Database for the Oracle connection.
  final String databaseService;

  /// Hostname for the Oracle connection.
  final String hostname;

  /// Password for the Oracle connection.
  final String password;

  /// Port for the Oracle connection, default value is 1521.
  final int port;

  /// Username for the Oracle connection.
  final String username;

  OracleProfileResponse2({
    required this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionAttributes'] = connectionAttributes;
    map['databaseService'] = databaseService;
    map['hostname'] = hostname;
    map['password'] = password;
    map['port'] = port;
    map['username'] = username;
    return map;
  }

  factory OracleProfileResponse2.fromMap(Map<String, dynamic> map) {
    return OracleProfileResponse2(
      connectionAttributes:
          (map['connectionAttributes'] as Map).cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      username: map['username'] as String,
    );
  }
}
