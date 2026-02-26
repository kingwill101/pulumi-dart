// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_response6.dart';

/// Specifies connection parameters required specifically for MySQL databases.
class MySqlConnectionProfileResponse2 {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final String cloudSqlId;

  /// The IP or hostname of the source MySQL database.
  final String host;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final String password;

  /// Indicates If this connection profile password is stored.
  final bool passwordSet;

  /// The network port of the source MySQL database.
  final int port;

  /// SSL configuration for the destination to connect to the source database.
  final SslConfigResponse6 ssl;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  MySqlConnectionProfileResponse2({
    required this.cloudSqlId,
    required this.host,
    required this.password,
    required this.passwordSet,
    required this.port,
    required this.ssl,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['cloudSqlId'] = cloudSqlId;
    map['host'] = host;
    map['password'] = password;
    map['passwordSet'] = passwordSet;
    map['port'] = port;
    map['ssl'] = ssl.toMap();
    map['username'] = username;
    return map;
  }

  factory MySqlConnectionProfileResponse2.fromMap(Map<String, dynamic> map) {
    return MySqlConnectionProfileResponse2(
      cloudSqlId: map['cloudSqlId'] as String,
      host: map['host'] as String,
      password: map['password'] as String,
      passwordSet: map['passwordSet'] as bool,
      port: map['port'] as int,
      ssl: SslConfigResponse6.fromMap(
          (map['ssl'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
