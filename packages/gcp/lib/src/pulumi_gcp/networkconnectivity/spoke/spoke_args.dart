// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../spoke_gateway/spoke_gateway.dart';
import '../spoke_linked_interconnect_attachments/spoke_linked_interconnect_attachments.dart';
import '../spoke_linked_producer_vpc_network/spoke_linked_producer_vpc_network.dart';
import '../spoke_linked_router_appliance_instances/spoke_linked_router_appliance_instances.dart';
import '../spoke_linked_vpc_network/spoke_linked_vpc_network.dart';
import '../spoke_linked_vpn_tunnels/spoke_linked_vpn_tunnels.dart';

/// The set of arguments for Spoke.
class SpokeArgs {
  /// An optional description of the spoke.
  final pulumi.Input<String>? description;

  /// This is a gateway that can apply specialized processing to traffic going through it.
  /// Structure is documented below.
  final pulumi.Input<SpokeGateway>? gateway;

  /// The name of the group that this spoke is associated with.
  final pulumi.Input<String>? group;

  /// Immutable. The URI of the hub that this spoke is attached to.
  final pulumi.Input<String> hub;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedInterconnectAttachments>?
      linkedInterconnectAttachments;

  /// Producer VPC network that is associated with the spoke.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedProducerVpcNetwork>? linkedProducerVpcNetwork;

  /// The URIs of linked Router appliance resources
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedRouterApplianceInstances>?
      linkedRouterApplianceInstances;

  /// VPC network that is associated with the spoke.
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedVpcNetwork>? linkedVpcNetwork;

  /// The URIs of linked VPN tunnel resources
  /// Structure is documented below.
  final pulumi.Input<SpokeLinkedVpnTunnels>? linkedVpnTunnels;

  /// The location for the resource
  final pulumi.Input<String> location;

  /// Immutable. The name of the spoke. Spoke names must be unique.
  final pulumi.Input<String>? name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  SpokeArgs({
    this.description,
    this.gateway,
    this.group,
    required this.hub,
    this.labels,
    this.linkedInterconnectAttachments,
    this.linkedProducerVpcNetwork,
    this.linkedRouterApplianceInstances,
    this.linkedVpcNetwork,
    this.linkedVpnTunnels,
    required this.location,
    this.name,
    this.project,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final gatewayValue = gateway;
    if (gatewayValue != null) {
      map['gateway'] = pulumi.Input.mapOptionalInputValue<SpokeGateway,
          Map<String, dynamic>>(gatewayValue, (value) => value.toMap());
    }
    final groupValue = group;
    if (groupValue != null) {
      map['group'] = groupValue;
    }
    map['hub'] = hub;
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final linkedInterconnectAttachmentsValue = linkedInterconnectAttachments;
    if (linkedInterconnectAttachmentsValue != null) {
      map['linkedInterconnectAttachments'] = pulumi.Input.mapOptionalInputValue<
              SpokeLinkedInterconnectAttachments, Map<String, dynamic>>(
          linkedInterconnectAttachmentsValue, (value) => value.toMap());
    }
    final linkedProducerVpcNetworkValue = linkedProducerVpcNetwork;
    if (linkedProducerVpcNetworkValue != null) {
      map['linkedProducerVpcNetwork'] = pulumi.Input.mapOptionalInputValue<
              SpokeLinkedProducerVpcNetwork, Map<String, dynamic>>(
          linkedProducerVpcNetworkValue, (value) => value.toMap());
    }
    final linkedRouterApplianceInstancesValue = linkedRouterApplianceInstances;
    if (linkedRouterApplianceInstancesValue != null) {
      map['linkedRouterApplianceInstances'] =
          pulumi.Input.mapOptionalInputValue<
                  SpokeLinkedRouterApplianceInstances, Map<String, dynamic>>(
              linkedRouterApplianceInstancesValue, (value) => value.toMap());
    }
    final linkedVpcNetworkValue = linkedVpcNetwork;
    if (linkedVpcNetworkValue != null) {
      map['linkedVpcNetwork'] = pulumi.Input.mapOptionalInputValue<
              SpokeLinkedVpcNetwork, Map<String, dynamic>>(
          linkedVpcNetworkValue, (value) => value.toMap());
    }
    final linkedVpnTunnelsValue = linkedVpnTunnels;
    if (linkedVpnTunnelsValue != null) {
      map['linkedVpnTunnels'] = pulumi.Input.mapOptionalInputValue<
              SpokeLinkedVpnTunnels, Map<String, dynamic>>(
          linkedVpnTunnelsValue, (value) => value.toMap());
    }
    map['location'] = location;
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    return map;
  }

  factory SpokeArgs.fromMap(Map<String, dynamic> map) {
    return SpokeArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      gateway: pulumi.Input.asOptionalInput<SpokeGateway>(map['gateway']),
      group: pulumi.Input.asOptionalInput<String>(map['group']),
      hub: pulumi.Input.asInput<String>(map['hub']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      linkedInterconnectAttachments:
          pulumi.Input.asOptionalInput<SpokeLinkedInterconnectAttachments>(
              map['linkedInterconnectAttachments']),
      linkedProducerVpcNetwork:
          pulumi.Input.asOptionalInput<SpokeLinkedProducerVpcNetwork>(
              map['linkedProducerVpcNetwork']),
      linkedRouterApplianceInstances:
          pulumi.Input.asOptionalInput<SpokeLinkedRouterApplianceInstances>(
              map['linkedRouterApplianceInstances']),
      linkedVpcNetwork: pulumi.Input.asOptionalInput<SpokeLinkedVpcNetwork>(
          map['linkedVpcNetwork']),
      linkedVpnTunnels: pulumi.Input.asOptionalInput<SpokeLinkedVpnTunnels>(
          map['linkedVpnTunnels']),
      location: pulumi.Input.asInput<String>(map['location']),
      name: pulumi.Input.asOptionalInput<String>(map['name']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
    );
  }
}
