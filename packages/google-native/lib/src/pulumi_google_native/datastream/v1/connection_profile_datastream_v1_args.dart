// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity_datastream_v1.dart';
import 'gcs_profile.dart';
import 'mysql_profile.dart';
import 'oracle_profile.dart';
import 'postgresql_profile.dart';
import 'private_connectivity_datastream_v1.dart';

/// The set of arguments for ConnectionProfile.
class ConnectionProfileDatastreamV1Args {
  /// BigQuery Connection Profile configuration.
  final pulumi.Input<Map<String, dynamic>>? bigqueryProfile;

  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Optional. Create the connection profile without validating it.
  final pulumi.Input<bool>? force;

  /// Forward SSH tunnel connectivity.
  final pulumi.Input<ForwardSshTunnelConnectivityDatastreamV1>?
      forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  final pulumi.Input<GcsProfile>? gcsProfile;

  /// Labels.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String>? location;

  /// MySQL ConnectionProfile configuration.
  final pulumi.Input<MysqlProfile>? mysqlProfile;

  /// Oracle ConnectionProfile configuration.
  final pulumi.Input<OracleProfile>? oracleProfile;

  /// PostgreSQL Connection Profile configuration.
  final pulumi.Input<PostgresqlProfile>? postgresqlProfile;

  /// Private connectivity.
  final pulumi.Input<PrivateConnectivityDatastreamV1>? privateConnectivity;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Static Service IP connectivity.
  final pulumi.Input<Map<String, dynamic>>? staticServiceIpConnectivity;

  ConnectionProfileDatastreamV1Args({
    this.bigqueryProfile,
    required this.connectionProfileId,
    required this.displayName,
    this.force,
    this.forwardSshConnectivity,
    this.gcsProfile,
    this.labels,
    this.location,
    this.mysqlProfile,
    this.oracleProfile,
    this.postgresqlProfile,
    this.privateConnectivity,
    this.project,
    this.requestId,
    this.staticServiceIpConnectivity,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final bigqueryProfileValue = bigqueryProfile;
    if (bigqueryProfileValue != null) {
      map['bigqueryProfile'] = bigqueryProfileValue;
    }
    map['connectionProfileId'] = connectionProfileId;
    map['displayName'] = displayName;
    final forceValue = force;
    if (forceValue != null) {
      map['force'] = forceValue;
    }
    final forwardSshConnectivityValue = forwardSshConnectivity;
    if (forwardSshConnectivityValue != null) {
      map['forwardSshConnectivity'] = pulumi.Input.mapOptionalInputValue<
              ForwardSshTunnelConnectivityDatastreamV1, Map<String, dynamic>>(
          forwardSshConnectivityValue, (value) => value.toMap());
    }
    final gcsProfileValue = gcsProfile;
    if (gcsProfileValue != null) {
      map['gcsProfile'] =
          pulumi.Input.mapOptionalInputValue<GcsProfile, Map<String, dynamic>>(
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
      map['mysqlProfile'] = pulumi.Input.mapOptionalInputValue<MysqlProfile,
          Map<String, dynamic>>(mysqlProfileValue, (value) => value.toMap());
    }
    final oracleProfileValue = oracleProfile;
    if (oracleProfileValue != null) {
      map['oracleProfile'] = pulumi.Input.mapOptionalInputValue<OracleProfile,
          Map<String, dynamic>>(oracleProfileValue, (value) => value.toMap());
    }
    final postgresqlProfileValue = postgresqlProfile;
    if (postgresqlProfileValue != null) {
      map['postgresqlProfile'] = pulumi.Input.mapOptionalInputValue<
              PostgresqlProfile, Map<String, dynamic>>(
          postgresqlProfileValue, (value) => value.toMap());
    }
    final privateConnectivityValue = privateConnectivity;
    if (privateConnectivityValue != null) {
      map['privateConnectivity'] = pulumi.Input.mapOptionalInputValue<
              PrivateConnectivityDatastreamV1, Map<String, dynamic>>(
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

  factory ConnectionProfileDatastreamV1Args.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileDatastreamV1Args(
      bigqueryProfile: pulumi.Input.asOptionalInput<Map<String, dynamic>>(
          map['bigqueryProfile']),
      connectionProfileId:
          pulumi.Input.asInput<String>(map['connectionProfileId']),
      displayName: pulumi.Input.asInput<String>(map['displayName']),
      force: pulumi.Input.asOptionalInput<bool>(map['force']),
      forwardSshConnectivity: pulumi.Input.asOptionalInput<
              ForwardSshTunnelConnectivityDatastreamV1>(
          map['forwardSshConnectivity']),
      gcsProfile: pulumi.Input.asOptionalInput<GcsProfile>(map['gcsProfile']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      mysqlProfile:
          pulumi.Input.asOptionalInput<MysqlProfile>(map['mysqlProfile']),
      oracleProfile:
          pulumi.Input.asOptionalInput<OracleProfile>(map['oracleProfile']),
      postgresqlProfile: pulumi.Input.asOptionalInput<PostgresqlProfile>(
          map['postgresqlProfile']),
      privateConnectivity:
          pulumi.Input.asOptionalInput<PrivateConnectivityDatastreamV1>(
              map['privateConnectivity']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      staticServiceIpConnectivity:
          pulumi.Input.asOptionalInput<Map<String, dynamic>>(
              map['staticServiceIpConnectivity']),
    );
  }
}
