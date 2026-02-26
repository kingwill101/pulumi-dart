// ignore_for_file: unused_element, unnecessary_cast

import '../connection_profile_mysql_ssl/connection_profile_mysql_ssl.dart';

class ConnectionProfileMysql {
  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final String? cloudSqlId;

  /// The IP or hostname of the source MySQL database.
  final String? host;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database.
  /// This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// **Note**: This property is sensitive and will not be displayed in the plan.
  final String? password;

  /// (Output)
  /// Output only. Indicates If this connection profile password is stored.
  final bool? passwordSet;

  /// The network port of the source MySQL database.
  final int? port;

  /// SSL configuration for the destination to connect to the source database.
  /// Structure is documented below.
  final ConnectionProfileMysqlSsl? ssl;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String? username;

  ConnectionProfileMysql({
    this.cloudSqlId,
    this.host,
    this.password,
    this.passwordSet,
    this.port,
    this.ssl,
    this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final cloudSqlIdValue = cloudSqlId;
    if (cloudSqlIdValue != null) {
      map['cloudSqlId'] = cloudSqlIdValue;
    }
    final hostValue = host;
    if (hostValue != null) {
      map['host'] = hostValue;
    }
    final passwordValue = password;
    if (passwordValue != null) {
      map['password'] = passwordValue;
    }
    final passwordSetValue = passwordSet;
    if (passwordSetValue != null) {
      map['passwordSet'] = passwordSetValue;
    }
    final portValue = port;
    if (portValue != null) {
      map['port'] = portValue;
    }
    final sslValue = ssl;
    if (sslValue != null) {
      map['ssl'] = sslValue.toMap();
    }
    final usernameValue = username;
    if (usernameValue != null) {
      map['username'] = usernameValue;
    }
    return map;
  }

  factory ConnectionProfileMysql.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileMysql(
      cloudSqlId:
          map['cloudSqlId'] == null ? null : map['cloudSqlId'] as String,
      host: map['host'] == null ? null : map['host'] as String,
      password: map['password'] == null ? null : map['password'] as String,
      passwordSet:
          map['passwordSet'] == null ? null : map['passwordSet'] as bool,
      port: map['port'] == null ? null : map['port'] as int,
      ssl: map['ssl'] == null
          ? null
          : ConnectionProfileMysqlSsl.fromMap(
              (map['ssl'] as Map).cast<String, dynamic>()),
      username: map['username'] == null ? null : map['username'] as String,
    );
  }
}
