// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source SQL Connection
class SqlConnectionInformationResponse {
  /// Authentication type.
  final pulumi.Input<String>? authentication;
  /// Data source.
  final pulumi.Input<String>? dataSource;
  /// Whether to encrypt connection or not.
  final pulumi.Input<bool>? encryptConnection;
  /// Password to connect to source SQL.
  final pulumi.Input<String>? password;
  /// Whether to trust server certificate or not.
  final pulumi.Input<bool>? trustServerCertificate;
  /// User name to connect to source SQL.
  final pulumi.Input<String>? userName;

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
      authentication: map['authentication'] == null ? null : (map['authentication']! as String).input(),
      dataSource: map['dataSource'] == null ? null : (map['dataSource']! as String).input(),
      encryptConnection: map['encryptConnection'] == null ? null : (map['encryptConnection']! as bool).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      trustServerCertificate: map['trustServerCertificate'] == null ? null : (map['trustServerCertificate']! as bool).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

