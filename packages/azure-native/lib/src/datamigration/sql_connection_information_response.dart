// ignore_for_file: unused_element, unnecessary_cast


/// Source SQL Connection
class SqlConnectionInformationResponse {
  /// Authentication type.
  final String? authentication;
  /// Data source.
  final String? dataSource;
  /// Whether to encrypt connection or not.
  final bool? encryptConnection;
  /// Password to connect to source SQL.
  final String? password;
  /// Whether to trust server certificate or not.
  final bool? trustServerCertificate;
  /// User name to connect to source SQL.
  final String? userName;

  /// Creates a new [SqlConnectionInformationResponse].
  /// [authentication] Authentication type.
  /// [dataSource] Data source.
  /// [encryptConnection] Whether to encrypt connection or not.
  /// [password] Password to connect to source SQL.
  /// [trustServerCertificate] Whether to trust server certificate or not.
  /// [userName] User name to connect to source SQL.
  SqlConnectionInformationResponse({
    this.authentication,
    this.dataSource,
    this.encryptConnection,
    this.password,
    this.trustServerCertificate,
    this.userName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'authentication': ?authentication,
      'dataSource': ?dataSource,
      'encryptConnection': ?encryptConnection,
      'password': ?password,
      'trustServerCertificate': ?trustServerCertificate,
      'userName': ?userName,
    };
  }

  factory SqlConnectionInformationResponse.fromMap(Map<String, dynamic> map) {
    return SqlConnectionInformationResponse(
      authentication: map['authentication'] == null ? null : map['authentication'] as String,
      dataSource: map['dataSource'] == null ? null : map['dataSource'] as String,
      encryptConnection: map['encryptConnection'] == null ? null : map['encryptConnection'] as bool,
      password: map['password'] == null ? null : map['password'] as String,
      trustServerCertificate: map['trustServerCertificate'] == null ? null : map['trustServerCertificate'] as bool,
      userName: map['userName'] == null ? null : map['userName'] as String,
    );
  }
}

