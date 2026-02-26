import 'package:pulumi/pulumi.dart';
import 'linked_interconnect_attachments_response.dart';
import 'linked_router_appliance_instances_response.dart';
import 'linked_vpc_network_response.dart';
import 'linked_vpn_tunnels_response.dart';
import 'spoke_args.dart';
import 'state_reason_response.dart';

/// Creates a Network Connectivity Center spoke.
class Spoke extends CustomResource {
  /// The time the spoke was created.
  late final Output<String> createTime;

  /// An optional description of the spoke.
  late final Output<String> description;

  /// Optional. The name of the group that this spoke is associated with.
  late final Output<String> group;

  /// Immutable. The name of the hub that this spoke is attached to.
  late final Output<String> hub;

  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  late final Output<Map<String, String>> labels;

  /// VLAN attachments that are associated with the spoke.
  late final Output<LinkedInterconnectAttachmentsResponse>
      linkedInterconnectAttachments;

  /// Router appliance instances that are associated with the spoke.
  late final Output<LinkedRouterApplianceInstancesResponse>
      linkedRouterApplianceInstances;

  /// Optional. VPC network that is associated with the spoke.
  late final Output<LinkedVpcNetworkResponse> linkedVpcNetwork;

  /// VPN tunnels that are associated with the spoke.
  late final Output<LinkedVpnTunnelsResponse> linkedVpnTunnels;
  late final Output<String> location;

  /// Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  late final Output<String> name;
  late final Output<String> project;

  /// The reasons for current state of the spoke. Only present when the spoke is in the `INACTIVE` state.
  late final Output<List<StateReasonResponse>> reasons;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  late final Output<String?> requestId;

  /// Required. Unique id for the spoke to create.
  late final Output<String> spokeId;

  /// The type of resource associated with the spoke.
  late final Output<String> spokeType;

  /// The current lifecycle state of this spoke.
  late final Output<String> state;

  /// The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different `unique_id`.
  late final Output<String> uniqueId;

  /// The time the spoke was last updated.
  late final Output<String> updateTime;

  Spoke(
    String name, {
    SpokeArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'google-native:networkconnectivity/v1:Spoke',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.createTime = Output.createUnknown<String>();
    this.description = Output.createUnknown<String>();
    this.group = Output.createUnknown<String>();
    this.hub = Output.createUnknown<String>();
    this.labels = Output.createUnknown<Map<String, String>>();
    this.linkedInterconnectAttachments =
        Output.createUnknown<LinkedInterconnectAttachmentsResponse>();
    this.linkedRouterApplianceInstances =
        Output.createUnknown<LinkedRouterApplianceInstancesResponse>();
    this.linkedVpcNetwork = Output.createUnknown<LinkedVpcNetworkResponse>();
    this.linkedVpnTunnels = Output.createUnknown<LinkedVpnTunnelsResponse>();
    this.location = Output.createUnknown<String>();
    this.name = Output.createUnknown<String>();
    this.project = Output.createUnknown<String>();
    this.reasons = Output.createUnknown<List<StateReasonResponse>>();
    this.requestId = Output.createUnknown<String?>();
    this.spokeId = Output.createUnknown<String>();
    this.spokeType = Output.createUnknown<String>();
    this.state = Output.createUnknown<String>();
    this.uniqueId = Output.createUnknown<String>();
    this.updateTime = Output.createUnknown<String>();
  }
}
