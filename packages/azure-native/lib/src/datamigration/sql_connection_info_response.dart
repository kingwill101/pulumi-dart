// ignore_for_file: unused_element, unnecessary_cast


/// Information for connecting to SQL database server
class SqlConnectionInfoResponse {
  /// Additional connection settings
  final String? additionalSettings;
  /// Authentication type to use for connection
  final String? authentication;
  /// Data source in the format Protocol:MachineName\SQLServerInstanceName,PortNumber
  final String dataSource;
  /// Whether to encrypt the connection
  final bool? encryptConnection;
  /// Password credential.
  final String? password;
  /// Server platform type for connection
  final String? platform;
  /// Port for Server
  final int? port;
  /// Represents the ID of an HTTP resource represented by an Azure resource provider.
  final String? resourceId;
  /// server brand version
  final String? serverBrandVersion;
  /// name of the server
  final String? serverName;
  /// server version
  final String? serverVersion;
  /// Whether to trust the server certificate
  final bool? trustServerCertificate;
  /// Type of connection info
  /// Expected value is 'SqlConnectionInfo'.
  final String type;
  /// User name
  final String? userName;

  /// Creates a new [SqlConnectionInfoResponse].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [dataSource] Data source in the format Protocol:MachineName\SQLServerInstanceName,PortNumber
  /// [encryptConnection] Whether to encrypt the connection
  /// [password] Password credential.
  /// [platform] Server platform type for connection
  /// [port] Port for Server
  /// [resourceId] Represents the ID of an HTTP resource represented by an Azure resource provider.
  /// [serverBrandVersion] server brand version
  /// [serverName] name of the server
  /// [serverVersion] server version
  /// [trustServerCertificate] Whether to trust the server certificate
  /// [type] Type of connection info
  /// [userName] User name
  SqlConnectionInfoResponse({
    this.additionalSettings,
    this.authentication,
    required this.dataSource,
    this.encryptConnection,
    this.password,
    this.platform,
    this.port,
    this.resourceId,
    this.serverBrandVersion,
    this.serverName,
    this.serverVersion,
    this.trustServerCertificate,
    required this.type,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'additionalSettings': ?additionalSettings,
      'authentication': ?authentication,
      'dataSource': dataSource,
      'encryptConnection': ?encryptConnection,
      'password': ?password,
      'platform': ?platform,
      'port': ?port,
      'resourceId': ?resourceId,
      'serverBrandVersion': ?serverBrandVersion,
      'serverName': ?serverName,
      'serverVersion': ?serverVersion,
      'trustServerCertificate': ?trustServerCertificate,
      'type': type,
      'userName': ?userName,
    };
  }

  factory SqlConnectionInfoResponse.fromMap(Map<String, dynamic> map) {
    return SqlConnectionInfoResponse(
      additionalSettings: map['additionalSettings'] == null ? null : map['additionalSettings'] as String,
      authentication: map['authentication'] == null ? null : map['authentication'] as String,
      dataSource: map['dataSource'] as String,
      encryptConnection: map['encryptConnection'] == null ? null : map['encryptConnection'] as bool,
      password: map['password'] == null ? null : map['password'] as String,
      platform: map['platform'] == null ? null : map['platform'] as String,
      port: map['port'] == null ? null : map['port'] as int,
      resourceId: map['resourceId'] == null ? null : map['resourceId'] as String,
      serverBrandVersion: map['serverBrandVersion'] == null ? null : map['serverBrandVersion'] as String,
      serverName: map['serverName'] == null ? null : map['serverName'] as String,
      serverVersion: map['serverVersion'] == null ? null : map['serverVersion'] as String,
      trustServerCertificate: map['trustServerCertificate'] == null ? null : map['trustServerCertificate'] as bool,
      type: map['type'] as String,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

