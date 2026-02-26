import 'package:pulumi/pulumi.dart';
import 'connection_profile_args4.dart';
import 'forward_ssh_tunnel_connectivity_response3.dart';
import 'gcs_profile_response2.dart';
import 'mysql_profile_response2.dart';
import 'oracle_profile_response2.dart';
import 'private_connectivity_response3.dart';

/// Use this method to create a connection profile in a project and location.
/// Auto-naming is currently not supported for this resource.
class ConnectionProfile4 extends CustomResource {
  /// Required. The connection profile identifier.
  late final Output<String> connectionProfileId;

  /// The create time of the resource.
  late final Output<String> createTime;

  /// Display name.
  late final Output<String> displayName;

  /// Forward SSH tunnel connectivity.
  late final Output<ForwardSshTunnelConnectivityResponse3>
      forwardSshConnectivity;

  /// Cloud Storage ConnectionProfile configuration.
  late final Output<GcsProfileResponse2> gcsProfile;

  /// Labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// MySQL ConnectionProfile configuration.
  late final Output<MysqlProfileResponse2> mysqlProfile;

  /// The resource's name.
  late final Output<String> name;

  /// No connectivity option chosen.
  late final Output<Map<String, dynamic>> noConnectivity;

  /// Oracle ConnectionProfile configuration.
  late final Output<OracleProfileResponse2> oracleProfile;

  /// Private connectivity.
  late final Output<PrivateConnectivityResponse3> privateConnectivity;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Static Service IP connectivity.
  late final Output<Map<String, dynamic>> staticServiceIpConnectivity;

  /// The update time of the resource.
  late final Output<String> updateTime;

  ConnectionProfile4(
    String name, {
    ConnectionProfileArgs4? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1alpha1:ConnectionProfile',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.connectionProfileId = Output.createUnknown<String>();
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.forwardSshConnectivity =
        Output.createUnknown<ForwardSshTunnelConnectivityResponse3>();
    this.gcsProfile = Output.createUnknown<GcsProfileResponse2>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.mysqlProfile = Output.createUnknown<MysqlProfileResponse2>();
    this.name = Output.createUnknown<String>();
    this.noConnectivity = Output.createUnknown<Map<String, dynamic>>();
    this.oracleProfile = Output.createUnknown<OracleProfileResponse2>();
    this.privateConnectivity =
        Output.createUnknown<PrivateConnectivityResponse3>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.staticServiceIpConnectivity =
        Output.createUnknown<Map<String, dynamic>>();
    this.updateTime = Output.createUnknown<String>();
  }
}
