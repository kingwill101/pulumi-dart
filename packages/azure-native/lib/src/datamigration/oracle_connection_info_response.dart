// ignore_for_file: unused_element, unnecessary_cast


/// Information for connecting to Oracle server
class OracleConnectionInfoResponse {
  /// Authentication type to use for connection
  final String? authentication;
  /// EZConnect or TNSName connection string.
  final String dataSource;
  /// Password credential.
  final String? password;
  /// port for server
  final int? port;
  /// name of the server
  final String? serverName;
  /// server version
  final String? serverVersion;
  /// Type of connection info
  /// Expected value is 'OracleConnectionInfo'.
  final String type;
  /// User name
  final String? userName;

  /// Creates a new [OracleConnectionInfoResponse].
  /// [authentication] Authentication type to use for connection
  /// [dataSource] EZConnect or TNSName connection string.
  /// [password] Password credential.
  /// [port] port for server
  /// [serverName] name of the server
  /// [serverVersion] server version
  /// [type] Type of connection info
  /// [userName] User name
  OracleConnectionInfoResponse({
    this.authentication,
    required this.dataSource,
    this.password,
    this.port,
    this.serverName,
    this.serverVersion,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication,
      'dataSource': dataSource,
      'password': ?password,
      'port': ?port,
      'serverName': ?serverName,
      'serverVersion': ?serverVersion,
      'type': type,
      'userName': ?userName,
    };
  }

  factory OracleConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return OracleConnectionInfoResponse(
      authentication: map['authentication'] == null ? null : map['authentication'] as String,
      dataSource: map['dataSource'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

