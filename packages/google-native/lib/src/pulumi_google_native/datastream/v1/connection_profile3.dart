import 'package:pulumi/pulumi.dart';
import 'connection_profile_args3.dart';
import 'forward_ssh_tunnel_connectivity_response2.dart';
import 'gcs_profile_response.dart';
import 'mysql_profile_response.dart';
import 'oracle_profile_response.dart';
import 'postgresql_profile_response.dart';
import 'private_connectivity_response2.dart';

/// Use this method to create a connection profile in a project and location.
/// Auto-naming is currently not supported for this resource.
class ConnectionProfile3 extends CustomResource {
  /// BigQuery Connection Profile configuration.
  late final Output<Map<String, dynamic>> bigqueryProfile;

  /// Required. The connection profile identifier.
  late final Output<String> connectionProfileId;

  /// The create time of the resource.
  late final Output<String> createTime;

  /// Display name.
  late final Output<String> displayName;

  /// Optional. Create the connection profile without validating it.
  late final Output<bool?> force;

  /// Forward SSH tunnel connectivity.
  late final Output<ForwardSshTunnelConnectivityResponse2>
      forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  late final Output<GcsProfileResponse> gcsProfile;

  /// Labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// MySQL ConnectionProfile configuration.
  late final Output<MysqlProfileResponse> mysqlProfile;

  /// The resource's name.
  late final Output<String> name;

  /// Oracle ConnectionProfile configuration.
  late final Output<OracleProfileResponse> oracleProfile;

  /// PostgreSQL Connection Profile configuration.
  late final Output<PostgresqlProfileResponse> postgresqlProfile;

  /// Private connectivity.
  late final Output<PrivateConnectivityResponse2> privateConnectivity;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Static Service IP connectivity.
  late final Output<Map<String, dynamic>> staticServiceIpConnectivity;

  /// The update time of the resource.
  late final Output<String> updateTime;

  ConnectionProfile3(
    String name, {
    ConnectionProfileArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1:ConnectionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.bigqueryProfile = Output.createUnknown<Map<String, dynamic>>();
    this.connectionProfileId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.force = Output.createUnknown<bool?>();
    this.forwardSshConnectivity =
        Output.createUnknown<ForwardSshTunnelConnectivityResponse2>();
    this.gcsProfile = Output.createUnknown<GcsProfileResponse>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mysqlProfile = Output.createUnknown<MysqlProfileResponse>();
    this.name = Output.createUnknown<String>();
    this.oracleProfile = Output.createUnknown<OracleProfileResponse>();
    this.postgresqlProfile = Output.createUnknown<PostgresqlProfileResponse>();
    this.privateConnectivity =
        Output.createUnknown<PrivateConnectivityResponse2>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.staticServiceIpConnectivity =
        Output.createUnknown<Map<String, dynamic>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
