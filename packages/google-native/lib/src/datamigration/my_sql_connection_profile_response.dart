// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_response.dart';

/// Specifies connection parameters required specifically for MySQL databases.
class MySqlConnectionProfileResponse {
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
  final SslConfigResponse ssl;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  /// Creates a new [MySqlConnectionProfileResponse].
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source MySQL database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [passwordSet] Indicates If this connection profile password is stored.
  /// [port] The network port of the source MySQL database.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  MySqlConnectionProfileResponse({
    required this.cloudSqlId,
    required this.host,
    required this.password,
    required this.passwordSet,
    required this.port,
    required this.ssl,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cloudSqlId': cloudSqlId,
      'host': host,
      'password': password,
      'passwordSet': passwordSet,
      'port': port,
      'ssl': ssl.toMap(),
      'username': username,
    };
  }

  factory MySqlConnectionProfileResponse.fromMap(Map<String, dynamic> map) {
    return MySqlConnectionProfileResponse(
      cloudSqlId: map['cloudSqlId'] as String,
      host: map['host'] as String,
      password: map['password'] as String,
      passwordSet: map['passwordSet'] as bool,
      port: map['port'] as int,
      ssl: SslConfigResponse.fromMap(
        (map['ssl'] as Map).cast<String, dynamic>(),
      ),
      username: map['username'] as String,
    );
  }
}
