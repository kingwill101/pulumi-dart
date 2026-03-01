// ignore_for_file: unused_element, unnecessary_cast


/// Information for connecting to PostgreSQL server
class PostgreSqlConnectionInfoResponse {
  /// Additional connection settings
  final String? additionalSettings;
  /// Authentication type to use for connection
  final String? authentication;
  /// Data source
  final String? dataSource;
  /// Name of the database
  final String? databaseName;
  /// Whether to encrypt the connection
  final bool? encryptConnection;
  /// Password credential.
  final String? password;
  /// Port for Server
  final int port;
  /// server brand version
  final String? serverBrandVersion;
  /// Name of the server
  final String serverName;
  /// server version
  final String? serverVersion;
  /// Whether to trust the server certificate
  final bool? trustServerCertificate;
  /// Type of connection info
  /// Expected value is 'PostgreSqlConnectionInfo'.
  final String type;
  /// User name
  final String? userName;

  /// Creates a new [PostgreSqlConnectionInfoResponse].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [dataSource] Data source
  /// [databaseName] Name of the database
  /// [encryptConnection] Whether to encrypt the connection
  /// [password] Password credential.
  /// [port] Port for Server
  /// [serverBrandVersion] server brand version
  /// [serverName] Name of the server
  /// [serverVersion] server version
  /// [trustServerCertificate] Whether to trust the server certificate
  /// [type] Type of connection info
  /// [userName] User name
  PostgreSqlConnectionInfoResponse({
    this.additionalSettings,
    this.authentication,
    this.dataSource,
    this.databaseName,
    this.encryptConnection,
    this.password,
    required this.port,
    this.serverBrandVersion,
    required this.serverName,
    this.serverVersion,
    this.trustServerCertificate,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSettings': ?additionalSettings,
      'authentication': ?authentication,
      'dataSource': ?dataSource,
      'databaseName': ?databaseName,
      'encryptConnection': ?encryptConnection,
      'password': ?password,
      'port': port,
      'serverBrandVersion': ?serverBrandVersion,
      'serverName': serverName,
      'serverVersion': ?serverVersion,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'userName': ?userName,
    };
  }

  factory PostgreSqlConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return PostgreSqlConnectionInfoResponse(
      additionalSettings: map['additionalSettings'] == null ? null : map['additionalSettings'] as String,
      authentication: map['authentication'] == null ? null : map['authentication'] as String,
      dataSource: map['dataSource'] == null ? null : map['dataSource'] as String,
      databaseName: map['databaseName'] == null ? null : map['databaseName'] as String,
      encryptConnection: map['encryptConnection'] == null ? null : map['encryptConnection'] as bool,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] as int,
      serverBrandVersion: map['serverBrandVersion'] == null ? null : map['serverBrandVersion'] as String,
      serverName: map['serverName'] as String,
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
      trustServerCertificate: map['trustServerCertificate'] == null ? null : map['trustServerCertificate'] as bool,
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

