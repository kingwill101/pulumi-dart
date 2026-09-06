// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Source SQL Connection
class SqlConnectionInformation {
  /// Authentication type.
  final pulumi.Input<String?>? authentication;
  /// Data source.
  final pulumi.Input<String?>? dataSource;
  /// Whether to encrypt connection or not.
  final pulumi.Input<bool?>? encryptConnection;
  /// Password to connect to source SQL.
  final pulumi.Input<String?>? password;
  /// Whether to trust server certificate or not.
  final pulumi.Input<bool?>? trustServerCertificate;
  /// User name to connect to source SQL.
  final pulumi.Input<String?>? userName;

  /// Creates a new [SqlConnectionInformation].
  /// [authentication] Authentication type.
  /// [dataSource] Data source.
  /// [encryptConnection] Whether to encrypt connection or not.
  /// [password] Password to connect to source SQL.
  /// [trustServerCertificate] Whether to trust server certificate or not.
  /// [userName] User name to connect to source SQL.
  const SqlConnectionInformation({
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

  factory SqlConnectionInformation.fromMap(Map<String, dynamic> map) {
    return SqlConnectionInformation(
      authentication: (() { final guardedValue = map['authentication']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      dataSource: (() { final guardedValue = map['dataSource']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      encryptConnection: (() { final guardedValue = map['encryptConnection']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      password: (() { final guardedValue = map['password']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      trustServerCertificate: (() { final guardedValue = map['trustServerCertificate']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      userName: (() { final guardedValue = map['userName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
