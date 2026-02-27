// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'forward_ssh_tunnel_connectivity3.dart';
import 'gcs_profile2.dart';
import 'mysql_profile2.dart';
import 'oracle_profile2.dart';
import 'private_connectivity3.dart';

/// The set of arguments for ConnectionProfile.
class ConnectionProfileArgs4 {
  /// Required. The connection profile identifier.
  final Input<String> connectionProfileId;

  /// Display name.
  final Input<String> displayName;

  /// Forward SSH tunnel connectivity.
  final Input<ForwardSshTunnelConnectivity3>? forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  final Input<GcsProfile2>? gcsProfile;

  /// Labels.
  final Input<Map<String, String>>? labels;
  final Input<String>? location;

  /// MySQL ConnectionProfile configuration.
  final Input<MysqlProfile2>? mysqlProfile;

  /// No connectivity option chosen.
  final Input<Map<String, dynamic>>? noConnectivity;

  /// Oracle ConnectionProfile configuration.
  final Input<OracleProfile2>? oracleProfile;

  /// Private connectivity.
  final Input<PrivateConnectivity3>? privateConnectivity;
  final Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final Input<String>? requestId;

  /// Static Service IP connectivity.
  final Input<Map<String, dynamic>>? staticServiceIpConnectivity;

  ConnectionProfileArgs4({
    required this.connectionProfileId,
    required this.displayName,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.location,
    this.mysqlProfile,
    this.noConnectivity,
    this.oracleProfile,
    this.privateConnectivity,
    this.project,
    this.requestId,
    this.staticServiceIpConnectivity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['connectionProfileId'] = connectionProfileId;
    map['displayName'] = displayName;
    final forwardSshConnectivityValue = forwardSshConnectivity;
    if (forwardSshConnectivityValue != null) {
      map['forwardSshConnectivity'] = Input.mapOptionalInputValue<
              ForwardSshTunnelConnectivity3, Map<String, dynamic>>(
          forwardSshConnectivityValue, (value) => value.toMap());
    }
    final gcsProfileValue = gcsProfile;
    if (gcsProfileValue != null) {
      map['gcsProfile'] =
          Input.mapOptionalInputValue<GcsProfile2, Map<String, dynamic>>(
              gcsProfileValue, (value) => value.toMap());
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final mysqlProfileValue = mysqlProfile;
    if (mysqlProfileValue != null) {
      map['mysqlProfile'] =
          Input.mapOptionalInputValue<MysqlProfile2, Map<String, dynamic>>(
              mysqlProfileValue, (value) => value.toMap());
    }
    final noConnectivityValue = noConnectivity;
    if (noConnectivityValue != null) {
      map['noConnectivity'] = noConnectivityValue;
    }
    final oracleProfileValue = oracleProfile;
    if (oracleProfileValue != null) {
      map['oracleProfile'] =
          Input.mapOptionalInputValue<OracleProfile2, Map<String, dynamic>>(
              oracleProfileValue, (value) => value.toMap());
    }
    final privateConnectivityValue = privateConnectivity;
    if (privateConnectivityValue != null) {
      map['privateConnectivity'] = Input.mapOptionalInputValue<
              PrivateConnectivity3, Map<String, dynamic>>(
          privateConnectivityValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    final staticServiceIpConnectivityValue = staticServiceIpConnectivity;
    if (staticServiceIpConnectivityValue != null) {
      map['staticServiceIpConnectivity'] = staticServiceIpConnectivityValue;
    }
    return map;
  }

  factory ConnectionProfileArgs4.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs4(
      connectionProfileId: Input.asInput<String>(map['connectionProfileId']),
      displayName: Input.asInput<String>(map['displayName']),
      forwardSshConnectivity:
          Input.asOptionalInput<ForwardSshTunnelConnectivity3>(
              map['forwardSshConnectivity']),
      gcsProfile: Input.asOptionalInput<GcsProfile2>(map['gcsProfile']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: Input.asOptionalInput<String>(map['location']),
      mysqlProfile: Input.asOptionalInput<MysqlProfile2>(map['mysqlProfile']),
      noConnectivity:
          Input.asOptionalInput<Map<String, dynamic>>(map['noConnectivity']),
      oracleProfile:
          Input.asOptionalInput<OracleProfile2>(map['oracleProfile']),
      privateConnectivity: Input.asOptionalInput<PrivateConnectivity3>(
          map['privateConnectivity']),
      project: Input.asOptionalInput<String>(map['project']),
      requestId: Input.asOptionalInput<String>(map['requestId']),
      staticServiceIpConnectivity: Input.asOptionalInput<Map<String, dynamic>>(
          map['staticServiceIpConnectivity']),
    );
  }
}
