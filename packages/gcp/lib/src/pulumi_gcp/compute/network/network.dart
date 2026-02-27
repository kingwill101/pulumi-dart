import 'package:pulumi/pulumi.dart';
import '../network_params/network_params.dart';
import 'network_args.dart';

/// Manages a VPC network or legacy network resource on GCP.
///
///
/// To get more information about Network, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/networks)
/// * How-to Guides
/// * [Official Documentation](https://cloud.google.com/vpc/docs/vpc)
///
/// ## Example Usage
///
/// ### Network Basic
///
///
///
/// ### Network Custom Mtu
///
///
///
/// ### Network Custom Firewall Enforcement Order
///
///
///
/// ### Network Bgp Best Path Selection Mode
///
///
///
/// ### Network Bgp Best Path Selection Mode Standard
///
///
///
/// ### Network Bgp Best Path Selection Mode Standard Custom Fields
///
///
///
/// ### Network Bgp Standard Mode Delete Med
///
///
///
///
/// ## Import
///
/// Network can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/global/networks/{{name}}`
///
/// * `{{project}}/{{name}}`
///
/// * `{{name}}`
///
/// When using the `pulumi import` command, Network can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/network:Network default projects/{{project}}/global/networks/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/network:Network default {{project}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/network:Network default {{name}}
/// ```
class Network extends CustomResource {
  /// When set to `true`, the network is created in "auto subnet mode" and
  /// it will create a subnet for each region automatically across the
  /// `10.128.0.0/9` address range.
  /// When set to `false`, the network is created in "custom subnet mode" so
  /// the user can explicitly connect subnetwork resources.
  late final Output<bool?> autoCreateSubnetworks;

  /// Enables/disables the comparison of MED across routes with different Neighbor ASNs.
  /// This value can only be set if the --bgp-best-path-selection-mode is STANDARD
  late final Output<bool> bgpAlwaysCompareMed;

  /// The BGP best selection algorithm to be employed. MODE can be LEGACY or STANDARD.
  /// Possible values are: `LEGACY`, `STANDARD`.
  late final Output<String> bgpBestPathSelectionMode;

  /// Choice of the behavior of inter-regional cost and MED in the BPS algorithm.
  /// Possible values are: `DEFAULT`, `ADD_COST_TO_MED`.
  late final Output<String> bgpInterRegionCost;

  /// If set to `true`, the `bgp_always_compare_med` field will be cleared.
  /// If set to `false` (the default), `bgp_always_compare_med` will be set to the value specified in the configuration.
  late final Output<bool?> deleteBgpAlwaysCompareMed;

  /// If set to `true`, default routes (`0.0.0.0/0`) will be deleted
  /// immediately after network creation. Defaults to `false`.
  late final Output<bool?> deleteDefaultRoutesOnCreate;

  /// An optional description of this resource. The resource must be
  /// recreated to modify this field.
  late final Output<String?> description;

  /// Enable ULA internal ipv6 on this network. Enabling this feature will assign
  /// a /48 from google defined ULA prefix fd20::/20.
  late final Output<bool?> enableUlaInternalIpv6;

  /// The gateway address for default routing out of the network. This value
  /// is selected by GCP.
  late final Output<String> gatewayIpv4;

  /// When enabling ula internal ipv6, caller optionally can specify the /48 range
  /// they want from the google defined ULA prefix fd20::/20. The input must be a
  /// valid /48 ULA IPv6 address and must be within the fd20::/20. Operation will
  /// fail if the speficied /48 is already in used by another resource.
  /// If the field is not speficied, then a /48 range will be randomly allocated from fd20::/20 and returned via this field.
  late final Output<String> internalIpv6Range;

  /// Maximum Transmission Unit in bytes. The default value is 1460 bytes.
  /// The minimum value for this field is 1300 and the maximum value is 8896 bytes (jumbo frames).
  /// Note that packets larger than 1500 bytes (standard Ethernet) can be subject to TCP-MSS clamping or dropped
  /// with an ICMP `Fragmentation-Needed` message if the packets are routed to the Internet or other VPCs
  /// with varying MTUs.
  late final Output<int> mtu;

  /// Name of the resource. Provided by the client when the resource is
  /// created. The name must be 1-63 characters long, and comply with
  /// RFC1035. Specifically, the name must be 1-63 characters long and match
  /// the regular expression `a-z?` which means the
  /// first character must be a lowercase letter, and all following
  /// characters must be a dash, lowercase letter, or digit, except the last
  /// character, which cannot be a dash.
  late final Output<String> name;

  /// Set the order that Firewall Rules and Firewall Policies are evaluated.
  /// Default value is `AFTER_CLASSIC_FIREWALL`.
  /// Possible values are: `BEFORE_CLASSIC_FIREWALL`, `AFTER_CLASSIC_FIREWALL`.
  late final Output<String?> networkFirewallPolicyEnforcementOrder;

  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> networkId;

  /// A full or partial URL of the network profile to apply to this network.
  /// This field can be set only at resource creation time. For example, the
  /// following are valid URLs:
  /// * https://www.googleapis.com/compute/v1/projects/{projectId}/global/networkProfiles/{network_profile_name}
  /// * projects/{projectId}/global/networkProfiles/{network_profile_name}
  late final Output<String?> networkProfile;

  /// (Deprecated)
  /// The unique identifier for the resource. This identifier is defined by the server.
  late final Output<String> numericId;

  /// Additional params passed with the request, but not persisted as part of resource payload
  /// Structure is documented below.
  late final Output<NetworkParams?> params;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// The network-wide routing mode to use. If set to `REGIONAL`, this
  /// network's cloud routers will only advertise routes with subnetworks
  /// of this network in the same region as the router. If set to `GLOBAL`,
  /// this network's cloud routers will advertise routes with all
  /// subnetworks of this network, across regions.
  /// Possible values are: `REGIONAL`, `GLOBAL`.
  late final Output<String> routingMode;

  /// The URI of the created resource.
  late final Output<String> selfLink;

  Network(
    String name, {
    NetworkArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/network:Network',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.autoCreateSubnetworks = registerOutput<bool?>('autoCreateSubnetworks');
    this.bgpAlwaysCompareMed = registerOutput<bool>('bgpAlwaysCompareMed');
    this.bgpBestPathSelectionMode =
        registerOutput<String>('bgpBestPathSelectionMode');
    this.bgpInterRegionCost = registerOutput<String>('bgpInterRegionCost');
    this.deleteBgpAlwaysCompareMed =
        registerOutput<bool?>('deleteBgpAlwaysCompareMed');
    this.deleteDefaultRoutesOnCreate =
        registerOutput<bool?>('deleteDefaultRoutesOnCreate');
    this.description = registerOutput<String?>('description');
    this.enableUlaInternalIpv6 = registerOutput<bool?>('enableUlaInternalIpv6');
    this.gatewayIpv4 = registerOutput<String>('gatewayIpv4');
    this.internalIpv6Range = registerOutput<String>('internalIpv6Range');
    this.mtu = registerOutput<int>('mtu');
    this.name = registerOutput<String>('name');
    this.networkFirewallPolicyEnforcementOrder =
        registerOutput<String?>('networkFirewallPolicyEnforcementOrder');
    this.networkId = registerOutput<String>('networkId');
    this.networkProfile = registerOutput<String?>('networkProfile');
    this.numericId = registerOutput<String>('numericId');
    this.params = registerOutput<NetworkParams?>('params');
    this.project = registerOutput<String>('project');
    this.routingMode = registerOutput<String>('routingMode');
    this.selfLink = registerOutput<String>('selfLink');
  }
}
