// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Information for connecting to MySQL server
class MySqlConnectionInfo {
  /// Additional connection settings
  final pulumi.Input<String>? additionalSettings;
  /// Authentication type to use for connection
  final pulumi.Input<String>? authentication;
  /// Data source
  final pulumi.Input<String>? dataSource;
  /// Whether to encrypt the connection
  final pulumi.Input<bool>? encryptConnection;
  /// Password credential.
  final pulumi.Input<String>? password;
  /// Port for Server
  final pulumi.Input<int> port;
  /// Name of the server
  final pulumi.Input<String> serverName;
  /// Type of connection info
  /// Expected value is 'MySqlConnectionInfo'.
  final pulumi.Input<String> type;
  /// User name
  final pulumi.Input<String>? userName;

  /// Creates a new [MySqlConnectionInfo].
  /// [additionalSettings] Additional connection settings
  /// [authentication] Authentication type to use for connection
  /// [dataSource] Data source
  /// [encryptConnection] Whether to encrypt the connection
  /// [password] Password credential.
  /// [port] Port for Server
  /// [serverName] Name of the server
  /// [type] Type of connection info
  /// [userName] User name
  MySqlConnectionInfo({
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

  factory MySqlConnectionInfo.fromMap(Map<String, dynamic> map) {
    return MySqlConnectionInfo(
      additionalSettings: map['additionalSettings'] == null ? null : (map['additionalSettings']! as String).input(),
      authentication: map['authentication'] == null ? null : (map['authentication']! as String).input(),
      dataSource: map['dataSource'] == null ? null : (map['dataSource']! as String).input(),
      encryptConnection: map['encryptConnection'] == null ? null : (map['encryptConnection']! as bool).input(),
      password: map['password'] == null ? null : (map['password']! as String).input(),
      port: (map['port'] as int).input(),
      serverName: (map['serverName'] as String).input(),
      type: (map['type'] as String).input(),
      userName: map['userName'] == null ? null : (map['userName']! as String).input(),
    );
  }
}

