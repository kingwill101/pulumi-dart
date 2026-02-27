import 'package:pulumi/pulumi.dart' as pulumi;
import '../spoke_gateway/spoke_gateway.dart';
import '../spoke_linked_interconnect_attachments/spoke_linked_interconnect_attachments.dart';
import '../spoke_linked_producer_vpc_network/spoke_linked_producer_vpc_network.dart';
import '../spoke_linked_router_appliance_instances/spoke_linked_router_appliance_instances.dart';
import '../spoke_linked_vpc_network/spoke_linked_vpc_network.dart';
import '../spoke_linked_vpn_tunnels/spoke_linked_vpn_tunnels.dart';
import '../spoke_reason/spoke_reason.dart';
import 'spoke_args.dart';

/// The NetworkConnectivity Spoke resource
///
///
/// To get more information about Spoke, see:
///
/// * [API documentation](https://cloud.google.com/network-connectivity/docs/reference/networkconnectivity/rest/v1/projects.locations.spokes)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/network-connectivity/docs/network-connectivity-center/concepts/overview)
///
/// ## Example Usage
///
/// ### Network Connectivity Spoke Linked Vpc Network Basic
///
///
///
/// ### Network Connectivity Spoke Linked Vpc Network Group
///
///
///
/// ### Network Connectivity Spoke Router Appliance Basic
///
///
///
/// ### Network Connectivity Spoke Vpn Tunnel Basic
///
///
///
/// ### Network Connectivity Spoke Interconnect Attachment Basic
///
///
///
/// ### Network Connectivity Spoke Linked Producer Vpc Network Basic
///
///
///
/// ### Network Connectivity Spoke Center Group
///
///
///
/// ### Network Connectivity Spoke Linked Vpc Network Ipv6 Support
///
///
///
/// ### Network Connectivity Spoke Gateway
///
///
///
///
/// ## Import
///
/// Spoke can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/locations/{{location}}/spokes/{{name}}`
///
/// * `{{project}}/{{location}}/{{name}}`
///
/// * `{{location}}/{{name}}`
///
/// When using the `pulumi import` command, Spoke can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/spoke:Spoke default projects/{{project}}/locations/{{location}}/spokes/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/spoke:Spoke default {{project}}/{{location}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:networkconnectivity/spoke:Spoke default {{location}}/{{name}}
/// ```
class Spoke extends pulumi.CustomResource {
  /// Output only. The time the spoke was created.
  late final pulumi.Output<String> createTime;

  /// An optional description of the spoke.
  late final pulumi.Output<String?> description;

  /// All of labels (key/value pairs) present on the resource in GCP, including the labels configured through Pulumi, other clients and services.
  late final pulumi.Output<Map<String, String>> effectiveLabels;

  /// This is a gateway that can apply specialized processing to traffic going through it.
  /// Structure is documented below.
  late final pulumi.Output<SpokeGateway?> gateway;

  /// The name of the group that this spoke is associated with.
  late final pulumi.Output<String> group;

  /// Immutable. The URI of the hub that this spoke is attached to.
  late final pulumi.Output<String> hub;

  /// Optional labels in key:value format. For more information about labels, see [Requirements for labels](https://docs.cloud.google.com/resource-manager/docs/creating-managing-labels#requirements).
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  late final pulumi.Output<Map<String, String>?> labels;

  /// A collection of VLAN attachment resources. These resources should be redundant attachments that all advertise the same prefixes to Google Cloud. Alternatively, in active/passive configurations, all attachments should be capable of advertising the same prefixes.
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedInterconnectAttachments?>
      linkedInterconnectAttachments;

  /// Producer VPC network that is associated with the spoke.
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedProducerVpcNetwork?>
      linkedProducerVpcNetwork;

  /// The URIs of linked Router appliance resources
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedRouterApplianceInstances?>
      linkedRouterApplianceInstances;

  /// VPC network that is associated with the spoke.
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedVpcNetwork?> linkedVpcNetwork;

  /// The URIs of linked VPN tunnel resources
  /// Structure is documented below.
  late final pulumi.Output<SpokeLinkedVpnTunnels?> linkedVpnTunnels;

  /// The location for the resource
  late final pulumi.Output<String> location;

  /// Immutable. The name of the spoke. Spoke names must be unique.
  late final pulumi.Output<String> name;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final pulumi.Output<String> project;

  /// The combination of labels configured directly on the resource
  /// and default labels configured on the provider.
  late final pulumi.Output<Map<String, String>> pulumiLabels;

  /// The reasons for the current state in the lifecycle
  /// Structure is documented below.
  late final pulumi.Output<List<SpokeReason>> reasons;

  /// Output only. The current lifecycle state of this spoke.
  late final pulumi.Output<String> state;

  /// Output only. The Google-generated UUID for the spoke. This value is unique across all spoke resources. If a spoke is deleted and another with the same name is created, the new spoke is assigned a different unique_id.
  late final pulumi.Output<String> uniqueId;

  /// Output only. The time the spoke was last updated.
  late final pulumi.Output<String> updateTime;

  Spoke(
    String name, {
    SpokeArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'gcp:networkconnectivity/spoke:Spoke',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.createTime = registerOutput<String>('createTime');
    this.description = registerOutput<String?>('description');
    this.effectiveLabels =
        registerOutput<Map<String, String>>('effectiveLabels');
    this.gateway = registerOutput<SpokeGateway?>('gateway');
    this.group = registerOutput<String>('group');
    this.hub = registerOutput<String>('hub');
    this.labels = registerOutput<Map<String, String>?>('labels');
    this.linkedInterconnectAttachments =
        registerOutput<SpokeLinkedInterconnectAttachments?>(
            'linkedInterconnectAttachments');
    this.linkedProducerVpcNetwork =
        registerOutput<SpokeLinkedProducerVpcNetwork?>(
            'linkedProducerVpcNetwork');
    this.linkedRouterApplianceInstances =
        registerOutput<SpokeLinkedRouterApplianceInstances?>(
            'linkedRouterApplianceInstances');
    this.linkedVpcNetwork =
        registerOutput<SpokeLinkedVpcNetwork?>('linkedVpcNetwork');
    this.linkedVpnTunnels =
        registerOutput<SpokeLinkedVpnTunnels?>('linkedVpnTunnels');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.project = registerOutput<String>('project');
    this.pulumiLabels = registerOutput<Map<String, String>>('pulumiLabels');
    this.reasons = registerOutput<List<SpokeReason>>('reasons');
    this.state = registerOutput<String>('state');
    this.uniqueId = registerOutput<String>('uniqueId');
    this.updateTime = registerOutput<String>('updateTime');
  }
}
