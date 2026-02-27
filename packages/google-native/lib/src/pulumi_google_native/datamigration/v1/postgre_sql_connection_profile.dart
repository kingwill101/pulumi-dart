// ignore_for_file: unused_element, unnecessary_cast

import 'private_service_connect_connectivity.dart';
import 'ssl_config_datamigration_v1.dart';

/// Specifies connection parameters required specifically for PostgreSQL databases.
class PostgreSqlConnectionProfile {
  /// Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluster ID.
  final String? alloydbClusterId;

  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final String? cloudSqlId;

  /// The IP or hostname of the source PostgreSQL database.
  final String host;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final String password;

  /// The network port of the source PostgreSQL database.
  final int port;

  /// Private service connect connectivity.
  final PrivateServiceConnectConnectivity? privateServiceConnectConnectivity;

  /// SSL configuration for the destination to connect to the source database.
  final SslConfigDatamigrationV1? ssl;

  /// Static ip connectivity data (default, no additional details needed).
  final Map<String, dynamic>? staticIpConnectivity;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  PostgreSqlConnectionProfile({
    this.alloydbClusterId,
    this.cloudSqlId,
    required this.host,
    required this.password,
    required this.port,
    this.privateServiceConnectConnectivity,
    this.ssl,
    this.staticIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final alloydbClusterIdValue = alloydbClusterId;
    if (alloydbClusterIdValue != null) {
      map['alloydbClusterId'] = alloydbClusterIdValue;
    }
    final cloudSqlIdValue = cloudSqlId;
    if (cloudSqlIdValue != null) {
      map['cloudSqlId'] = cloudSqlIdValue;
    }
    map['host'] = host;
    map['password'] = password;
    map['port'] = port;
    final privateServiceConnectConnectivityValue =
        privateServiceConnectConnectivity;
    if (privateServiceConnectConnectivityValue != null) {
      map['privateServiceConnectConnectivity'] =
          privateServiceConnectConnectivityValue.toMap();
    }
    final sslValue = ssl;
    if (sslValue != null) {
      map['ssl'] = sslValue.toMap();
    }
    final staticIpConnectivityValue = staticIpConnectivity;
    if (staticIpConnectivityValue != null) {
      map['staticIpConnectivity'] = staticIpConnectivityValue;
    }
    map['username'] = username;
    return map;
  }

  factory PostgreSqlConnectionProfile.fromMap(Map<String, dynamic> map) {
    return PostgreSqlConnectionProfile(
      alloydbClusterId: map['alloydbClusterId'] == null
          ? null
          : map['alloydbClusterId'] as String,
      cloudSqlId:
          map['cloudSqlId'] == null ? null : map['cloudSqlId'] as String,
      host: map['host'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      privateServiceConnectConnectivity:
          map['privateServiceConnectConnectivity'] == null
              ? null
              : PrivateServiceConnectConnectivity.fromMap(
                  (map['privateServiceConnectConnectivity'] as Map)
                      .cast<String, dynamic>()),
      ssl: map['ssl'] == null
          ? null
          : SslConfigDatamigrationV1.fromMap(
              (map['ssl'] as Map).cast<String, dynamic>()),
      staticIpConnectivity: map['staticIpConnectivity'] == null
          ? null
          : (map['staticIpConnectivity'] as Map).cast<String, dynamic>(),
      username: map['username'] as String,
    );
  }
}
