// ignore_for_file: unused_element, unnecessary_cast

import 'private_service_connect_connectivity_response.dart';
import 'ssl_config_response5.dart';

/// Specifies connection parameters required specifically for PostgreSQL databases.
class PostgreSqlConnectionProfileResponse {
  /// Optional. If the destination is an AlloyDB database, use this field to provide the AlloyDB cluster ID.
  final String alloydbClusterId;

  /// If the source is a Cloud SQL database, use this field to provide the Cloud SQL instance ID of the source.
  final String cloudSqlId;

  /// The IP or hostname of the source PostgreSQL database.
  final String host;

  /// If the source is a Cloud SQL database, this field indicates the network architecture it's associated with.
  final String networkArchitecture;

  /// Input only. The password for the user that Database Migration Service will be using to connect to the database. This field is not returned on request, and the value is encrypted when stored in Database Migration Service.
  final String password;

  /// Indicates If this connection profile password is stored.
  final bool passwordSet;

  /// The network port of the source PostgreSQL database.
  final int port;

  /// Private service connect connectivity.
  final PrivateServiceConnectConnectivityResponse
      privateServiceConnectConnectivity;

  /// SSL configuration for the destination to connect to the source database.
  final SslConfigResponse5 ssl;

  /// Static ip connectivity data (default, no additional details needed).
  final Map<String, dynamic> staticIpConnectivity;

  /// The username that Database Migration Service will use to connect to the database. The value is encrypted when stored in Database Migration Service.
  final String username;

  PostgreSqlConnectionProfileResponse({
    required this.alloydbClusterId,
    required this.cloudSqlId,
    required this.host,
    required this.networkArchitecture,
    required this.password,
    required this.passwordSet,
    required this.port,
    required this.privateServiceConnectConnectivity,
    required this.ssl,
    required this.staticIpConnectivity,
    required this.username,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['alloydbClusterId'] = alloydbClusterId;
    map['cloudSqlId'] = cloudSqlId;
    map['host'] = host;
    map['networkArchitecture'] = networkArchitecture;
    map['password'] = password;
    map['passwordSet'] = passwordSet;
    map['port'] = port;
    map['privateServiceConnectConnectivity'] =
        privateServiceConnectConnectivity.toMap();
    map['ssl'] = ssl.toMap();
    map['staticIpConnectivity'] = staticIpConnectivity;
    map['username'] = username;
    return map;
  }

  factory PostgreSqlConnectionProfileResponse.fromMap(
      Map<String, dynamic> map) {
    return PostgreSqlConnectionProfileResponse(
      alloydbClusterId: map['alloydbClusterId'] as String,
      cloudSqlId: map['cloudSqlId'] as String,
      host: map['host'] as String,
      networkArchitecture: map['networkArchitecture'] as String,
      password: map['password'] as String,
      passwordSet: map['passwordSet'] as bool,
      port: map['port'] as int,
      privateServiceConnectConnectivity:
          PrivateServiceConnectConnectivityResponse.fromMap(
              (map['privateServiceConnectConnectivity'] as Map)
                  .cast<String, dynamic>()),
      ssl: SslConfigResponse5.fromMap(
          (map['ssl'] as Map).cast<String, dynamic>()),
      staticIpConnectivity:
          (map['staticIpConnectivity'] as Map).cast<String, dynamic>(),
      username: map['username'] as String,
    );
  }
}
