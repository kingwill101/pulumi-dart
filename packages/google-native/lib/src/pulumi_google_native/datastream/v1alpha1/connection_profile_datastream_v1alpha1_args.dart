// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity_datastream_v1alpha1.dart';
import 'gcs_profile_datastream_v1alpha1.dart';
import 'mysql_profile_datastream_v1alpha1.dart';
import 'oracle_profile_datastream_v1alpha1.dart';
import 'private_connectivity_datastream_v1alpha1.dart';

/// The set of arguments for ConnectionProfile.
class ConnectionProfileDatastreamV1alpha1Args {
  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Forward SSH tunnel connectivity.
  final pulumi.Input<ForwardSshTunnelConnectivityDatastreamV1alpha1>?
      forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  final pulumi.Input<GcsProfileDatastreamV1alpha1>? gcsProfile;

  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// MySQL ConnectionProfile configuration.
  final pulumi.Input<MysqlProfileDatastreamV1alpha1>? mysqlProfile;

  /// No connectivity option chosen.
  final pulumi.Input<Map<String, dynamic>>? noConnectivity;

  /// Oracle ConnectionProfile configuration.
  final pulumi.Input<OracleProfileDatastreamV1alpha1>? oracleProfile;

  /// Private connectivity.
  final pulumi.Input<PrivateConnectivityDatastreamV1alpha1>?
      privateConnectivity;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Static Service IP connectivity.
  final pulumi.Input<Map<String, dynamic>>? staticServiceIpConnectivity;

  ConnectionProfileDatastreamV1alpha1Args({
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
      map['forwardSshConnectivity'] = pulumi.Input.mapOptionalInputValue<
              ForwardSshTunnelConnectivityDatastreamV1alpha1,
              Map<String, dynamic>>(
          forwardSshConnectivityValue, (value) => value.toMap());
    }
    final gcsProfileValue = gcsProfile;
    if (gcsProfileValue != null) {
      map['gcsProfile'] = pulumi.Input.mapOptionalInputValue<
          GcsProfileDatastreamV1alpha1,
          Map<String, dynamic>>(gcsProfileValue, (value) => value.toMap());
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
      map['mysqlProfile'] = pulumi.Input.mapOptionalInputValue<
          MysqlProfileDatastreamV1alpha1,
          Map<String, dynamic>>(mysqlProfileValue, (value) => value.toMap());
    }
    final noConnectivityValue = noConnectivity;
    if (noConnectivityValue != null) {
      map['noConnectivity'] = noConnectivityValue;
    }
    final oracleProfileValue = oracleProfile;
    if (oracleProfileValue != null) {
      map['oracleProfile'] = pulumi.Input.mapOptionalInputValue<
          OracleProfileDatastreamV1alpha1,
          Map<String, dynamic>>(oracleProfileValue, (value) => value.toMap());
    }
    final privateConnectivityValue = privateConnectivity;
    if (privateConnectivityValue != null) {
      map['privateConnectivity'] = pulumi.Input.mapOptionalInputValue<
              PrivateConnectivityDatastreamV1alpha1, Map<String, dynamic>>(
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

  factory ConnectionProfileDatastreamV1alpha1Args.fromMap(
      Map<String, dynamic> map) {
    return ConnectionProfileDatastreamV1alpha1Args(
      connectionProfileId:
          pulumi.Input.asInput<String>(map['connectionProfileId']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      forwardSshConnectivity: pulumi.Input.asOptionalInput<
              ForwardSshTunnelConnectivityDatastreamV1alpha1>(
          map['forwardSshConnectivity']),
      gcsProfile: pulumi.Input.asOptionalInput<GcsProfileDatastreamV1alpha1>(
          map['gcsProfile']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mysqlProfile:
          pulumi.Input.asOptionalInput<MysqlProfileDatastreamV1alpha1>(
              map['mysqlProfile']),
      noConnectivity: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['noConnectivity']),
      oracleProfile:
          pulumi.Input.asOptionalInput<OracleProfileDatastreamV1alpha1>(
              map['oracleProfile']),
      privateConnectivity:
          pulumi.Input.asOptionalInput<PrivateConnectivityDatastreamV1alpha1>(
              map['privateConnectivity']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      staticServiceIpConnectivity:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(
              map['staticServiceIpConnectivity']),
    );
  }
}
