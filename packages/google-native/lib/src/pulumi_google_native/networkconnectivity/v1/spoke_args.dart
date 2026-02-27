// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'linked_interconnect_attachments.dart';
import 'linked_router_appliance_instances.dart';
import 'linked_vpc_network.dart';
import 'linked_vpn_tunnels.dart';

/// The set of arguments for Spoke.
class SpokeArgs {
  /// An optional description of the spoke.
  final pulumi.Input<String>? description;

  /// Optional. The name of the group that this spoke is associated with.
  final pulumi.Input<String>? group;

  /// Immutable. The name of the hub that this spoke is attached to.
  final pulumi.Input<String>? hub;

  /// Optional labels in key-value pair format. For more information about labels, see [Requirements for labels](https://cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  final pulumi.Input<Map<String, String>>? labels;

  /// VLAN attachments that are associated with the spoke.
  final pulumi.Input<LinkedInterconnectAttachments>?
      linkedInterconnectAttachments;

  /// Router appliance instances that are associated with the spoke.
  final pulumi.Input<LinkedRouterApplianceInstances>?
      linkedRouterApplianceInstances;

  /// Optional. VPC network that is associated with the spoke.
  final pulumi.Input<LinkedVpcNetwork>? linkedVpcNetwork;

  /// VPN tunnels that are associated with the spoke.
  final pulumi.Input<LinkedVpnTunnels>? linkedVpnTunnels;
  final pulumi.Input<String>? location;

  /// Immutable. The name of the spoke. Spoke names must be unique. They use the following form: `projects/{project_number}/locations/{region}/spokes/{spoke_id}`
  final pulumi.Input<String>? name;
  final pulumi.Input<String>? project;

  /// Optional. A request ID to identify requests. Specify a unique request ID so that if you must retry your request, the server knows to ignore the request if it has already been completed. The server guarantees that a request doesn't result in creation of duplicate commitments for at least 60 minutes. For example, consider a situation where you make an initial request and the request times out. If you make the request again with the same request ID, the server can check to see whether the original operation was received. If it was, the server ignores the second request. This behavior prevents clients from mistakenly creating duplicate commitments. The request ID must be a valid UUID, with the exception that zero UUID is not supported (00000000-0000-0000-0000-000000000000).
  final pulumi.Input<String>? requestId;

  /// Required. Unique id for the spoke to create.
  final pulumi.Input<String> spokeId;

  SpokeArgs({
    this.description,
    this.group,
    this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedRouterApplianceInstances,
    this.linkedVpcNetwork,
    this.linkedVpnTunnels,
    this.location,
    this.name,
    this.project,
    this.requestId,
    required this.spokeId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = groupValue;
    }
    final hubValue = hub;
    if (hubValue != null) {
      map['hub'] = hubValue;
    }
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final linkedInterconnectAttachmentsValue = linkedInterconnectAttachments;
    if (linkedInterconnectAttachmentsValue != null) {
      map['linkedInterconnectAttachments'] = pulumi.Input.mapOptionalInputValue<
              LinkedInterconnectAttachments, Map<String, dynamic>>(
          linkedInterconnectAttachmentsValue, (value) => value.toMap());
    }
    final linkedRouterApplianceInstancesValue = linkedRouterApplianceInstances;
    if (linkedRouterApplianceInstancesValue != null) {
      map['linkedRouterApplianceInstances'] =
          pulumi.Input.mapOptionalInputValue<LinkedRouterApplianceInstances,
                  Map<String, dynamic>>(
              linkedRouterApplianceInstancesValue, (value) => value.toMap());
    }
    final linkedVpcNetworkValue = linkedVpcNetwork;
    if (linkedVpcNetworkValue != null) {
      map['linkedVpcNetwork'] = pulumi.Input.mapOptionalInputValue<
              LinkedVpcNetwork, Map<String, dynamic>>(
          linkedVpcNetworkValue, (value) => value.toMap());
    }
    final linkedVpnTunnelsValue = linkedVpnTunnels;
    if (linkedVpnTunnelsValue != null) {
      map['linkedVpnTunnels'] = pulumi.Input.mapOptionalInputValue<
              LinkedVpnTunnels, Map<String, dynamic>>(
          linkedVpnTunnelsValue, (value) => value.toMap());
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final requestIdValue = requestId;
    if (requestIdValue != null) {
      map['requestId'] = requestIdValue;
    }
    map['spokeId'] = spokeId;
    return map;
  }

  factory SpokeArgs.fromMap(Map<String, dynamic> map) {
    return SpokeArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      group: pulumi.Input.asOptionalInput<String>(map['group']),
      hub: pulumi.Input.asOptionalInput<String>(map['hub']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      linkedInterconnectAttachments:
          pulumi.Input.asOptionalInput<LinkedInterconnectAttachments>(
              map['linkedInterconnectAttachments']),
      linkedRouterApplianceInstances:
          pulumi.Input.asOptionalInput<LinkedRouterApplianceInstances>(
              map['linkedRouterApplianceInstances']),
      linkedVpcNetwork: pulumi.Input.asOptionalInput<LinkedVpcNetwork>(
          map['linkedVpcNetwork']),
      linkedVpnTunnels: pulumi.Input.asOptionalInput<LinkedVpnTunnels>(
          map['linkedVpnTunnels']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      requestId: pulumi.Input.asOptionalInput<String>(map['requestId']),
      spokeId: pulumi.Input.asInput<String>(map['spokeId']),
    );
  }
}
