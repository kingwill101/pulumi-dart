// ignore_for_file: unused_element, unnecessary_cast

/// Oracle database profile.
class OracleProfileDatastreamV1alpha1 {
  /// Connection string attributes
  final Map<String, String>? connectionAttributes;

  /// Database for the Oracle connection.
  final String databaseService;

  /// Hostname for the Oracle connection.
  final String hostname;

  /// Password for the Oracle connection.
  final String password;

  /// Port for the Oracle connection, default value is 1521.
  final int? port;

  /// Username for the Oracle connection.
  final String username;

  OracleProfileDatastreamV1alpha1({
    this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
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
    map['password'] = password;
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    map['username'] = username;
    return map;
  }

  factory OracleProfileDatastreamV1alpha1.fromMap(Map<String, dynamic> map) {
    return OracleProfileDatastreamV1alpha1(
      connectionAttributes: map['connectionAttributes'] == null
          ? null
          : (map['connectionAttributes'] as Map).cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      username: map['username'] as String,
    );
  }
}
