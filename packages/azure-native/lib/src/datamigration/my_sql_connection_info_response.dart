// ignore_for_file: unused_element, unnecessary_cast


/// Information for connecting to MySQL server
class MySqlConnectionInfoResponse {
  /// Additional connection settings
  final String? additionalSettings;
  /// Authentication type to use for connection
  final String? authentication;
  /// Data source
  final String? dataSource;
  /// Whether to encrypt the connection
  final bool? encryptConnection;
  /// Password credential.
  final String? password;
  /// Port for Server
  final int port;
  /// Name of the server
  final String serverName;
  /// Type of connection info
  /// Expected value is 'MySqlConnectionInfo'.
  final String type;
  /// User name
  final String? userName;

  /// Creates a new [MySqlConnectionInfoResponse].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [dataSource] Data source
  /// [encryptConnection] Whether to encrypt the connection
  /// [password] Password credential.
  /// [port] Port for Server
  /// [serverName] Name of the server
  /// [type] Type of connection info
  /// [userName] User name
  MySqlConnectionInfoResponse({
    this.additionalSettings,
    this.authentication,
    this.dataSource,
    this.encryptConnection,
    this.password,
    required this.port,
    required this.serverName,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSettings': ?additionalSettings,
      'authentication': ?authentication,
      'dataSource': ?dataSource,
      'encryptConnection': ?encryptConnection,
      'password': ?password,
      'port': port,
      'serverName': serverName,
      'type': type,
      'userName': ?userName,
    };
  }

  factory MySqlConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return MySqlConnectionInfoResponse(
      additionalSettings: map['additionalSettings'] == null ? null : map['additionalSettings'] as String,
      authentication: map['authentication'] == null ? null : map['authentication'] as String,
      dataSource: map['dataSource'] == null ? null : map['dataSource'] as String,
      encryptConnection: map['encryptConnection'] == null ? null : map['encryptConnection'] as bool,
      password: map['password'] == null ? null : map['password'] as String,
      port: map['port'] as int,
      serverName: map['serverName'] as String,
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

