// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity_response.dart';
import 'gcs_profile_response.dart';
import 'mysql_profile_response.dart';
import 'oracle_profile_response.dart';
import 'postgresql_profile_response.dart';
import 'private_connectivity_response.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileResult {
  /// BigQuery Connection Profile configuration.
  final Map<String, dynamic> bigqueryProfile;
  /// The create time of the resource.
  final String createTime;
  /// Display name.
  final String displayName;
  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivityResponse forwardSshConnectivity;
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
  final PrivateConnectivityResponse privateConnectivity;
  /// Static Service IP connectivity.
  final Map<String, dynamic> staticServiceIpConnectivity;
  /// The update time of the resource.
  final String updateTime;

  /// Creates a new [GetConnectionProfileResult].
  /// [bigqueryProfile] BigQuery Connection Profile configuration.
  /// [createTime] The create time of the resource.
  /// [displayName] Display name.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage ConnectionProfile configuration.
  /// [labels] Labels.
  /// [mysqlProfile] MySQL ConnectionProfile configuration.
  /// [name] The resource's name.
  /// [oracleProfile] Oracle ConnectionProfile configuration.
  /// [postgresqlProfile] PostgreSQL Connection Profile configuration.
  /// [privateConnectivity] Private connectivity.
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  /// [updateTime] The update time of the resource.
  GetConnectionProfileResult({
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
    return <String, dynamic>{
      'bigqueryProfile': bigqueryProfile,
      'createTime': createTime,
      'displayName': displayName,
      'forwardSshConnectivity': forwardSshConnectivity.toMap(),
      'gcsProfile': gcsProfile.toMap(),
      'labels': labels,
      'mysqlProfile': mysqlProfile.toMap(),
      'name': name,
      'oracleProfile': oracleProfile.toMap(),
      'postgresqlProfile': postgresqlProfile.toMap(),
      'privateConnectivity': privateConnectivity.toMap(),
      'staticServiceIpConnectivity': staticServiceIpConnectivity,
      'updateTime': updateTime,
    };
  }

  factory GetConnectionProfileResult.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileResult(
      bigqueryProfile: (map['bigqueryProfile'] as Map).cast<String, dynamic>(),
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      forwardSshConnectivity: ForwardSshTunnelConnectivityResponse.fromMap((map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      gcsProfile: GcsProfileResponse.fromMap((map['gcsProfile'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      mysqlProfile: MysqlProfileResponse.fromMap((map['mysqlProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      oracleProfile: OracleProfileResponse.fromMap((map['oracleProfile'] as Map).cast<String, dynamic>()),
      postgresqlProfile: PostgresqlProfileResponse.fromMap((map['postgresqlProfile'] as Map).cast<String, dynamic>()),
      privateConnectivity: PrivateConnectivityResponse.fromMap((map['privateConnectivity'] as Map).cast<String, dynamic>()),
      staticServiceIpConnectivity: (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
      updateTime: map['updateTime'] as String,
    );
  }
}

