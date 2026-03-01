// ignore_for_file: unused_element, unnecessary_cast

/// Oracle database profile.
class OracleProfileResponseDatastreamV1alpha1 {
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

  /// Creates a new [OracleProfileResponseDatastreamV1alpha1].
  /// [connectionAttributes] Connection string attributes
  /// [databaseService] Database for the Oracle connection.
  /// [hostname] Hostname for the Oracle connection.
  /// [password] Password for the Oracle connection.
  /// [port] Port for the Oracle connection, default value is 1521.
  /// [username] Username for the Oracle connection.
  OracleProfileResponseDatastreamV1alpha1({
    required this.connectionAttributes,
    required this.databaseService,
    required this.hostname,
    required this.password,
    required this.port,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'connectionAttributes': connectionAttributes,
      'databaseService': databaseService,
      'hostname': hostname,
      'password': password,
      'port': port,
      'username': username,
    };
  }

  factory OracleProfileResponseDatastreamV1alpha1.fromMap(
    Map<String, dynamic> map,
  ) {
    return OracleProfileResponseDatastreamV1alpha1(
      connectionAttributes: (map['connectionAttributes'] as Map)
          .cast<String, String>(),
      databaseService: map['databaseService'] as String,
      hostname: map['hostname'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      username: map['username'] as String,
    );
  }
}
