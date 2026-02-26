// ignore_for_file: unused_element, unnecessary_cast

import 'forward_ssh_tunnel_connectivity_response3.dart';
import 'gcs_profile_response2.dart';
import 'mysql_profile_response2.dart';
import 'oracle_profile_response2.dart';
import 'private_connectivity_response3.dart';

/// Result data returned by getConnectionProfile.
class GetConnectionProfileResult4 {
  /// The create time of the resource.
  final String createTime;

  /// Display name.
  final String displayName;

  /// Forward SSH tunnel connectivity.
  final ForwardSshTunnelConnectivityResponse3 forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  final GcsProfileResponse2 gcsProfile;

  /// Labels.
  final Map<String, String> labels;

  /// MySQL ConnectionProfile configuration.
  final MysqlProfileResponse2 mysqlProfile;

  /// The resource's name.
  final String name;

  /// No connectivity option chosen.
  final Map<String, dynamic> noConnectivity;

  /// Oracle ConnectionProfile configuration.
  final OracleProfileResponse2 oracleProfile;

  /// Private connectivity.
  final PrivateConnectivityResponse3 privateConnectivity;

  /// Static Service IP connectivity.
  final Map<String, dynamic> staticServiceIpConnectivity;

  /// The update time of the resource.
  final String updateTime;

  GetConnectionProfileResult4({
    required this.createTime,
    required this.displayName,
    required this.forwardSshConnectivity,
    required this.gcsProfile,
    required this.labels,
    required this.mysqlProfile,
    required this.name,
    required this.noConnectivity,
    required this.oracleProfile,
    required this.privateConnectivity,
    required this.staticServiceIpConnectivity,
    required this.updateTime,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['createTime'] = createTime;
    map['displayName'] = displayName;
    map['forwardSshConnectivity'] = forwardSshConnectivity.toMap();
    map['gcsProfile'] = gcsProfile.toMap();
    map['labels'] = labels;
    map['mysqlProfile'] = mysqlProfile.toMap();
    map['name'] = name;
    map['noConnectivity'] = noConnectivity;
    map['oracleProfile'] = oracleProfile.toMap();
    map['privateConnectivity'] = privateConnectivity.toMap();
    map['staticServiceIpConnectivity'] = staticServiceIpConnectivity;
    map['updateTime'] = updateTime;
    return map;
  }

  factory GetConnectionProfileResult4.fromMap(Map<String, dynamic> map) {
    return GetConnectionProfileResult4(
      createTime: map['createTime'] as String,
      displayName: map['displayName'] as String,
      forwardSshConnectivity: ForwardSshTunnelConnectivityResponse3.fromMap(
          (map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      gcsProfile: GcsProfileResponse2.fromMap(
          (map['gcsProfile'] as Map).cast<String, dynamic>()),
      labels: (map['labels'] as Map).cast<String, String>(),
      mysqlProfile: MysqlProfileResponse2.fromMap(
          (map['mysqlProfile'] as Map).cast<String, dynamic>()),
      name: map['name'] as String,
      noConnectivity: (map['noConnectivity'] as Map).cast<String, dynamic>(),
      oracleProfile: OracleProfileResponse2.fromMap(
          (map['oracleProfile'] as Map).cast<String, dynamic>()),
      privateConnectivity: PrivateConnectivityResponse3.fromMap(
          (map['privateConnectivity'] as Map).cast<String, dynamic>()),
      staticServiceIpConnectivity:
          (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
      updateTime: map['updateTime'] as String,
    );
  }
}
