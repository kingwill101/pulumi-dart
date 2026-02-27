// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity_response_datastream_v1.dart';
import 'gcs_profile_response.dart';
import 'mysql_profile_response.dart';
import 'oracle_profile_response.dart';
import 'postgresql_profile_response.dart';
import 'private_connectivity_response_datastream_v1.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileDatastreamV1Result {
  /// BigQuery Connection Profile configuration.
  final Map<String, dynamic> bigqueryProfile;

  /// The create time of the resource.
  final String createTime;

  /// Display name.
  final String displayName;

  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivityResponseDatastreamV1 forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  final GcsProfileResponse gcsProfile;

  /// Labels.
  final Map<String, String> labels;

  /// MySQL ConnectionProfile configuration.
  final MysqlProfileResponse mysqlProfile;

  /// The resource's name.
  final String name;

  /// Oracle ConnectionProfile configuration.
  final OracleProfileResponse oracleProfile;

  /// PostgreSQL Connection Profile configuration.
  final PostgresqlProfileResponse postgresqlProfile;

  /// Private connectivity.
  final PrivateConnectivityResponseDatastreamV1 privateConnectivity;

  /// Static Service IP connectivity.
  final Map<String, dynamic> staticServiceIpConnectivity;

  /// The update time of the resource.
  final String updateTime;

  GetConnectionProfileDatastreamV1Result({
    required this.bigqueryProfile,
    required this.createTime,
    required this.displayName,
    required this.forwardSshConnectivity,
    required this.gcsProfile,
    required this.labels,
    required this.mysqlProfile,
    required this.name,
    required this.oracleProfile,
    required this.postgresqlProfile,
    required this.privateConnectivity,
    required this.staticServiceIpConnectivity,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['bigqueryProfile'] = bigqueryProfile;
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['forwardSshConnectivity'] = forwardSshConnectivity.toMap();
    map['gcsProfile'] = gcsProfile.toMap();
    map['labels'] = labels;
    map['mysqlProfile'] = mysqlProfile.toMap();
    map['name'] = name;
    map['oracleProfile'] = oracleProfile.toMap();
    map['postgresqlProfile'] = postgresqlProfile.toMap();
    map['privateConnectivity'] = privateConnectivity.toMap();
    map['staticServiceIpConnectivity'] = staticServiceIpConnectivity;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConnectionProfileDatastreamV1Result.fromMap(
      Map<String, dynamic> map) {
    return GetConnectionProfileDatastreamV1Result(
      bigqueryProfile: (map['bigqueryProfile'] as Map).cast<String, dynamic>(),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      forwardSshConnectivity:
          ForwardSshTunnelConnectivityResponseDatastreamV1.fromMap(
              (map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      gcsProfile: GcsProfileResponse.fromMap(
          (map['gcsProfile'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      mysqlProfile: MysqlProfileResponse.fromMap(
          (map['mysqlProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oracleProfile: OracleProfileResponse.fromMap(
          (map['oracleProfile'] as Map).cast<String, dynamic>()),
      postgresqlProfile: PostgresqlProfileResponse.fromMap(
          (map['postgresqlProfile'] as Map).cast<String, dynamic>()),
      privateConnectivity: PrivateConnectivityResponseDatastreamV1.fromMap(
          (map['privateConnectivity'] as Map).cast<String, dynamic>()),
      staticServiceIpConnectivity:
          (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
