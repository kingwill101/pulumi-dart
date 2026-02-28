// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity_datastream_v1alpha1.dart';
import 'gcs_profile_datastream_v1alpha1.dart';
import 'mysql_profile_datastream_v1alpha1.dart';
import 'oracle_profile_datastream_v1alpha1.dart';
import 'private_connectivity_datastream_v1alpha1.dart';

/// {@template pulumi_datastream_v1alpha1_connection_profile_datastream_v1alpha1_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1alpha1_connection_profile_datastream_v1alpha1_args_doc}
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

  /// Creates a new [ConnectionProfileDatastreamV1alpha1Args].
  /// [connectionProfileId] Required. The connection profile identifier.
  /// [displayName] Display name.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage ConnectionProfile configuration.
  /// [labels] Labels.
  /// [location] Optional.
  /// [mysqlProfile] MySQL ConnectionProfile configuration.
  /// [noConnectivity] No connectivity option chosen.
  /// [oracleProfile] Oracle ConnectionProfile configuration.
  /// [privateConnectivity] Private connectivity.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  ConnectionProfileDatastreamV1alpha1Args({
    required String connectionProfileId,
    required String displayName,
    ForwardSshTunnelConnectivityDatastreamV1alpha1? forwardSshConnectivity,
    GcsProfileDatastreamV1alpha1? gcsProfile,
    Map<String, String>? labels,
    String? location,
    MysqlProfileDatastreamV1alpha1? mysqlProfile,
    Map<String, dynamic>? noConnectivity,
    OracleProfileDatastreamV1alpha1? oracleProfile,
    PrivateConnectivityDatastreamV1alpha1? privateConnectivity,
    String? project,
    String? requestId,
    Map<String, dynamic>? staticServiceIpConnectivity,
  })  : connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
        displayName = pulumi.Input.asInput<String>(displayName),
        forwardSshConnectivity = pulumi.Input.asOptionalInput<
                ForwardSshTunnelConnectivityDatastreamV1alpha1>(
            forwardSshConnectivity),
        gcsProfile = pulumi.Input.asOptionalInput<GcsProfileDatastreamV1alpha1>(
            gcsProfile),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        mysqlProfile =
            pulumi.Input.asOptionalInput<MysqlProfileDatastreamV1alpha1>(
                mysqlProfile),
        noConnectivity =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(noConnectivity),
        oracleProfile =
            pulumi.Input.asOptionalInput<OracleProfileDatastreamV1alpha1>(
                oracleProfile),
        privateConnectivity =
            pulumi.Input.asOptionalInput<PrivateConnectivityDatastreamV1alpha1>(
                privateConnectivity),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        staticServiceIpConnectivity =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(
                staticServiceIpConnectivity);

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
      connectionProfileId: map['connectionProfileId'] as String,
      displayName: map['displayName'] as String,
      forwardSshConnectivity: map['forwardSshConnectivity'] == null
          ? null
          : ForwardSshTunnelConnectivityDatastreamV1alpha1.fromMap(
              (map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      gcsProfile: map['gcsProfile'] == null
          ? null
          : GcsProfileDatastreamV1alpha1.fromMap(
              (map['gcsProfile'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mysqlProfile: map['mysqlProfile'] == null
          ? null
          : MysqlProfileDatastreamV1alpha1.fromMap(
              (map['mysqlProfile'] as Map).cast<String, dynamic>()),
      noConnectivity: map['noConnectivity'] == null
          ? null
          : (map['noConnectivity'] as Map).cast<String, dynamic>(),
      oracleProfile: map['oracleProfile'] == null
          ? null
          : OracleProfileDatastreamV1alpha1.fromMap(
              (map['oracleProfile'] as Map).cast<String, dynamic>()),
      privateConnectivity: map['privateConnectivity'] == null
          ? null
          : PrivateConnectivityDatastreamV1alpha1.fromMap(
              (map['privateConnectivity'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null
          ? null
          : (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
    );
  }
}
