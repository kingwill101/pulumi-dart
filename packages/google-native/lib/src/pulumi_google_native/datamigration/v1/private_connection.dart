import 'package:pulumi/pulumi.dart';
import 'private_connection_args.dart';
import 'status_response15.dart';
import 'vpc_peering_config_response.dart';

/// Creates a new private connection in a given project and location.
class PrivateConnection extends CustomResource {
  /// The create time of the resource.
  late final Output<String> createTime;

  /// The private connection display name.
  late final Output<String> displayName;

  /// The error details in case of state FAILED.
  late final Output<StatusResponse15> error;

  /// The resource labels for private connections to use to annotate any related underlying resources such as Compute Engine VMs. An object containing a list of "key": "value" pairs. Example: `{ "name": "wrench", "mass": "1.3kg", "count": "3" }`.
  late final Output<Map<String, String>> labels;
  late final Output<String> location;

  /// The name of the resource.
  late final Output<String> name;

  /// Required. The private connection identifier.
  late final Output<String> privateConnectionId;
  late final Output<String> project;

  /// Optional. A unique ID used to identify the request. If the server receives two requests with the same ID, then the second request is ignored. It is recommended to always set this value to a UUID. The ID must contain only letters (a-z, A-Z), numbers (0-9), underscores (_), and hyphens (-). The maximum length is 40 characters.
  late final Output<String?> requestId;

  /// Optional. If set to true, will skip validations.
  late final Output<bool?> skipValidation;

  /// The state of the private connection.
  late final Output<String> state;

  /// The last update time of the resource.
  late final Output<String> updateTime;

  /// VPC peering configuration.
  late final Output<VpcPeeringConfigResponse> vpcPeeringConfig;

  PrivateConnection(
    String name, {
    PrivateConnectionArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:datamigration/v1:PrivateConnection',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.displayName = Output.createUnknown<String>();
    this.error = Output.createUnknown<StatusResponse15>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.privateConnectionId = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.requestId = Output.createUnknown<String?>();
    this.skipValidation = Output.createUnknown<bool?>();
    this.state = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
    this.vpcPeeringConfig = Output.createUnknown<VpcPeeringConfigResponse>();
  }
}
