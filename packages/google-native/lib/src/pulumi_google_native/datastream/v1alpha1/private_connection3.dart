import 'package:pulumi/pulumi.dart';
import 'error_response2.dart';
import 'private_connection_args3.dart';
import 'vpc_peering_config_response3.dart';

/// Use this method to create a private connectivity configuration.
/// Auto-naming is currently not supported for this resource.
class PrivateConnection3 extends CustomResource {
  /// The create time of the resource.
  late final Output<String> createTime;

  /// Display name.
  late final Output<String> displayName;

  /// In case of error, the details of the error in a user-friendly format.
  late final Output<ErrorResponse2> error;

  /// Labels.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The resource's name.
  late final Output<String> name;

  /// Required. The private connectivity identifier.
  late final Output<String> privateConnectionId;
  late final Output<String> project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server will know to ignore the request if it has already been completed. The server will guarantee that for at least 60 minutes since the first request. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check if original operation with the same request ID was received, and if so, will ignore the second request. This prevents clients from accidentally creating duplicate commitments. The request ID must be a valid UUID with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// The state of the Private Connection.
  late final Output<String> state;

  /// The update time of the resource.
  late final Output<String> updateTime;

  /// VPC Peering Config
  late final Output<VpcPeeringConfigResponse3> vpcPeeringConfig;

  PrivateConnection3(
    String name, {
    PrivateConnectionArgs3? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datastream/v1alpha1:PrivateConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.displayName = registerOutput<String>('displayName');
    this.error = registerOutput<ErrorResponse2>('error');
    this.labels = registerOutput<Map<String, String>>('labels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.privateConnectionId = registerOutput<String>('privateConnectionId');
    this.project = registerOutput<String>('project');
    this.requestId = registerOutput<String?>('requestId');
    this.state = registerOutput<String>('state');
    this.updateTime = registerOutput<String>('updateTime');
    this.vpcPeeringConfig =
        registerOutput<VpcPeeringConfigResponse3>('vpcPeeringConfig');
  }
}
