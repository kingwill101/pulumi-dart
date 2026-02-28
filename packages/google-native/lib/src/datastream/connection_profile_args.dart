// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'forward_ssh_tunnel_connectivity.dart';
import 'gcs_profile.dart';
import 'mysql_profile.dart';
import 'oracle_profile.dart';
import 'postgresql_profile.dart';
import 'private_connectivity.dart';

/// {@template pulumi_datastream_v1_connection_profile_args_doc}
/// The set of arguments for ConnectionProfile.
/// {@endtemplate}
/// {@macro pulumi_datastream_v1_connection_profile_args_doc}
class ConnectionProfileArgs {
  /// BigQuery Connection Profile configuration.
  final pulumi.Input<Map<String, dynamic>>? bigqueryProfile;

  /// Required. The connection profile identifier.
  final pulumi.Input<String> connectionProfileId;

  /// Display name.
  final pulumi.Input<String> displayName;

  /// Optional. Create the connection profile without validating it.
  final pulumi.Input<bool>? force;

  /// Forward SSH tunnel connectivity.
  final pulumi.Input<ForwardSshTunnelConnectivity>? forwardSshConnectivity;

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
  final pulumi.Input<PrivateConnectivity>? privateConnectivity;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Static Service IP connectivity.
  final pulumi.Input<Map<String, dynamic>>? staticServiceIpConnectivity;

  /// Creates a new [ConnectionProfileArgs].
  /// [bigqueryProfile] BigQuery Connection Profile configuration.
  /// [connectionProfileId] Required. The connection profile identifier.
  /// [displayName] Display name.
  /// [force] Optional. Create the connection profile without validating it.
  /// [forwardSshConnectivity] Forward SSH tunnel connectivity.
  /// [gcsProfile] Cloud Storage ConnectionProfile configuration.
  /// [labels] Labels.
  /// [location] Optional.
  /// [mysqlProfile] MySQL ConnectionProfile configuration.
  /// [oracleProfile] Oracle ConnectionProfile configuration.
  /// [postgresqlProfile] PostgreSQL Connection Profile configuration.
  /// [privateConnectivity] Private connectivity.
  /// [project] Optional.
  /// [requestId] Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  /// [staticServiceIpConnectivity] Static Service IP connectivity.
  ConnectionProfileArgs({
    Map<String, dynamic>? bigqueryProfile,
    required String connectionProfileId,
    required String displayName,
    bool? force,
    ForwardSshTunnelConnectivity? forwardSshConnectivity,
    GcsProfile? gcsProfile,
    Map<String, String>? labels,
    String? location,
    MysqlProfile? mysqlProfile,
    OracleProfile? oracleProfile,
    PostgresqlProfile? postgresqlProfile,
    PrivateConnectivity? privateConnectivity,
    String? project,
    String? requestId,
    Map<String, dynamic>? staticServiceIpConnectivity,
  })  : bigqueryProfile =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(bigqueryProfile),
        connectionProfileId = pulumi.Input.asInput<String>(connectionProfileId),
        displayName = pulumi.Input.asInput<String>(displayName),
        force = pulumi.Input.asOptionalInput<bool>(force),
        forwardSshConnectivity =
            pulumi.Input.asOptionalInput<ForwardSshTunnelConnectivity>(
                forwardSshConnectivity),
        gcsProfile = pulumi.Input.asOptionalInput<GcsProfile>(gcsProfile),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        location = pulumi.Input.asOptionalInput<String>(location),
        mysqlProfile = pulumi.Input.asOptionalInput<MysqlProfile>(mysqlProfile),
        oracleProfile =
            pulumi.Input.asOptionalInput<OracleProfile>(oracleProfile),
        postgresqlProfile =
            pulumi.Input.asOptionalInput<PostgresqlProfile>(postgresqlProfile),
        privateConnectivity = pulumi.Input.asOptionalInput<PrivateConnectivity>(
            privateConnectivity),
        project = pulumi.Input.asOptionalInput<String>(project),
        requestId = pulumi.Input.asOptionalInput<String>(requestId),
        staticServiceIpConnectivity =
            pulumi.Input.asOptionalInput<Map<String, dynamic>>(
                staticServiceIpConnectivity);

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
              ForwardSshTunnelConnectivity, Map<String, dynamic>>(
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
              PrivateConnectivity, Map<String, dynamic>>(
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

  factory ConnectionProfileArgs.fromMap(Map<String, dynamic> map) {
    return ConnectionProfileArgs(
      bigqueryProfile: map['bigqueryProfile'] == null
          ? null
          : (map['bigqueryProfile'] as Map).cast<String, dynamic>(),
      connectionProfileId: map['connectionProfileId'] as String,
      displayName: map['displayName'] as String,
      force: map['force'] == null ? null : map['force'] as bool,
      forwardSshConnectivity: map['forwardSshConnectivity'] == null
          ? null
          : ForwardSshTunnelConnectivity.fromMap(
              (map['forwardSshConnectivity'] as Map).cast<String, dynamic>()),
      gcsProfile: map['gcsProfile'] == null
          ? null
          : GcsProfile.fromMap(
              (map['gcsProfile'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      location: map['location'] == null ? null : map['location'] as String,
      mysqlProfile: map['mysqlProfile'] == null
          ? null
          : MysqlProfile.fromMap(
              (map['mysqlProfile'] as Map).cast<String, dynamic>()),
      oracleProfile: map['oracleProfile'] == null
          ? null
          : OracleProfile.fromMap(
              (map['oracleProfile'] as Map).cast<String, dynamic>()),
      postgresqlProfile: map['postgresqlProfile'] == null
          ? null
          : PostgresqlProfile.fromMap(
              (map['postgresqlProfile'] as Map).cast<String, dynamic>()),
      privateConnectivity: map['privateConnectivity'] == null
          ? null
          : PrivateConnectivity.fromMap(
              (map['privateConnectivity'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      requestId: map['requestId'] == null ? null : map['requestId'] as String,
      staticServiceIpConnectivity: map['staticServiceIpConnectivity'] == null
          ? null
          : (map['staticServiceIpConnectivity'] as Map).cast<String, dynamic>(),
    );
  }
}
