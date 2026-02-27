// ignore_for_file: unused_element, unnecessary_cast

import 'ssl_config_datamigration_v1beta1.dart';

/// Specifies connection parameters required specifically for MySQL databases.
class MySqlConnectionProfileDatamigrationV1beta1 {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final String? cloudSqlId;

  /// The IP or hostname of the source MySQL database.
  final String host;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final String password;

  /// The network port of the source MySQL database.
  final int port;

  /// SSL configuration for the destination to connect to the source database.
  final SslConfigDatamigrationV1beta1? ssl;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  MySqlConnectionProfileDatamigrationV1beta1({
    this.cloudSqlId,
    required this.host,
    required this.password,
    required this.port,
    this.ssl,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudSqlIdValue = cloudSqlId;
    if (cloudSqlIdValue != null) {
      map['cloudSqlId'] = cloudSqlIdValue;
    }
    map['host'] = host;
    map['password'] = password;
    map['port'] = port;
    final sslValue = ssl;
    if (sslValue != null) {
      map['ssl'] = sslValue.toMap();
    }
    map['username'] = username;
    return map;
  }

  factory MySqlConnectionProfileDatamigrationV1beta1.fromMap(
      Map<String, dynamic> map) {
    return MySqlConnectionProfileDatamigrationV1beta1(
      cloudSqlId:
          map['cloudSqlId'] == null ? null : map['cloudSqlId'] as String,
      host: map['host'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      ssl: map['ssl'] == null
          ? null
          : SslConfigDatamigrationV1beta1.fromMap(
              (map['ssl'] as Map).cast<String, dynamic>()),
      username: map['username'] as String,
    );
  }
}
