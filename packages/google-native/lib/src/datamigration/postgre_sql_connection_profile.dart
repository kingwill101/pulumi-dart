// ignore_for_file: unused_element, unnecessary_cast

import 'private_service_connect_connectivity.dart';
import 'ssl_config.dart';

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
  final SslConfig? ssl;

  /// Static ip connectivity data (default, no additional details needed).
  final Map<String, dynamic>? staticIpConnectivity;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  /// Creates a new [PostgreSqlConnectionProfile].
  /// [alloydbClusterId] Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluster ID.
  /// [cloudSqlId] If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  /// [host] The IP or hostname of the source PostgreSQL database.
  /// [password] Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  /// [port] The network port of the source PostgreSQL database.
  /// [privateServiceConnectConnectivity] Private service connect connectivity.
  /// [ssl] SSL configuration for the destination to connect to the source database.
  /// [staticIpConnectivity] Static ip connectivity data (default, no additional details needed).
  /// [username] The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
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
    return <String, dynamic>{
      'alloydbClusterId': ?alloydbClusterId,
      'cloudSqlId': ?cloudSqlId,
      'host': host,
      'password': password,
      'port': port,
      'privateServiceConnectConnectivity':
          ?privateServiceConnectConnectivity == null
          ? null
          : privateServiceConnectConnectivity!.toMap(),
      'ssl': ?ssl == null ? null : ssl!.toMap(),
      'staticIpConnectivity': ?staticIpConnectivity,
      'username': username,
    };
  }

  factory PostgreSqlConnectionProfile.fromMap(Map<String, dynamic> map) {
    return PostgreSqlConnectionProfile(
      alloydbClusterId: map['alloydbClusterId'] == null
          ? null
          : map['alloydbClusterId'] as String,
      cloudSqlId: map['cloudSqlId'] == null
          ? null
          : map['cloudSqlId'] as String,
      host: map['host'] as String,
      password: map['password'] as String,
      port: map['port'] as int,
      privateServiceConnectConnectivity:
          map['privateServiceConnectConnectivity'] == null
          ? null
          : PrivateServiceConnectConnectivity.fromMap(
              (map['privateServiceConnectConnectivity'] as Map)
                  .cast<String, dynamic>(),
            ),
      ssl: map['ssl'] == null
          ? null
          : SslConfig.fromMap((map['ssl'] as Map).cast<String, dynamic>()),
      staticIpConnectivity: map['staticIpConnectivity'] == null
          ? null
          : (map['staticIpConnectivity'] as Map).cast<String, dynamic>(),
      username: map['username'] as String,
    );
  }
}
