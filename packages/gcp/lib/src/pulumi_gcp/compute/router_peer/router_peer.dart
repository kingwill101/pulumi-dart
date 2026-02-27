import 'package:pulumi/pulumi.dart';
import '../router_peer_advertised_ip_range/router_peer_advertised_ip_range.dart';
import '../router_peer_bfd/router_peer_bfd.dart';
import '../router_peer_custom_learned_ip_range/router_peer_custom_learned_ip_range.dart';
import '../router_peer_md5_authentication_key/router_peer_md5_authentication_key.dart';
import 'router_peer_args.dart';

/// BGP information that must be configured into the routing stack to
/// establish BGP peering. This information must specify the peer ASN
/// and either the interface name, IP address, or peer IP address.
/// Please refer to RFC4273.
///
///
/// To get more information about RouterBgpPeer, see:
///
/// * [API documentation](https://cloud.google.com/compute/docs/reference/rest/v1/routers)
/// * How-to Guides
/// * [Google Cloud Router](https://cloud.google.com/router/docs/)
///
/// ## Example Usage
///
/// ### Router Peer Basic
///
///
///
/// ### Router Peer Disabled
///
///
///
/// ### Router Peer Bfd
///
///
///
/// ### Router Zero Custom Learend Route Priority
///
///
///
/// ### Router Zero Advertised Route Priority
///
///
///
/// ### Router Peer Router Appliance
///
///
///
///
/// ### Router Peer Md5 Authentication Key
///
///
///
///
/// ### Router Peer Export And Import Policies
///
///
///
/// ## Import
///
/// RouterBgpPeer can be imported using any of these accepted formats:
///
/// * `projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}`
///
/// * `{{project}}/{{region}}/{{router}}/{{name}}`
///
/// * `{{region}}/{{router}}/{{name}}`
///
/// * `{{router}}/{{name}}`
///
/// When using the `pulumi import` command, RouterBgpPeer can be imported using one of the formats above. For example:
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default projects/{{project}}/regions/{{region}}/routers/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default {{project}}/{{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default {{region}}/{{router}}/{{name}}
/// ```
///
/// ```sh
/// $ pulumi import gcp:compute/routerPeer:RouterPeer default {{router}}/{{name}}
/// ```
class RouterPeer extends CustomResource {
  /// User-specified flag to indicate which mode to use for advertisement.
  /// Valid values of this enum field are: `DEFAULT`, `CUSTOM`
  /// Default value is `DEFAULT`.
  /// Possible values are: `DEFAULT`, `CUSTOM`.
  late final Output<String?> advertiseMode;

  /// User-specified list of prefix groups to advertise in custom
  /// mode, which currently supports the following option:
  /// * `ALL_SUBNETS`: Advertises all of the router's own VPC subnets.
  /// This excludes any routes learned for subnets that use VPC Network
  /// Peering.
  ///
  /// Note that this field can only be populated if advertiseMode is `CUSTOM`
  /// and overrides the list defined for the router (in the "bgp" message).
  /// These groups are advertised in addition to any specified prefixes.
  /// Leave this field blank to advertise no custom groups.
  late final Output<List<String>?> advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in
  /// custom mode. This field can only be populated if advertiseMode
  /// is `CUSTOM` and is advertised to all peers of the router. These IP
  /// ranges will be advertised in addition to any specified groups.
  /// Leave this field blank to advertise no custom IP ranges.
  /// Structure is documented below.
  late final Output<List<RouterPeerAdvertisedIpRange>?> advertisedIpRanges;

  /// The priority of routes advertised to this BGP peer.
  /// Where there is more than one matching route of maximum
  /// length, the routes with the lowest priority value win.
  late final Output<int?> advertisedRoutePriority;

  /// BFD configuration for the BGP peering.
  /// Structure is documented below.
  late final Output<RouterPeerBfd> bfd;

  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4,
  /// a /32 singular IP address range, and, for IPv6, /128.
  /// Structure is documented below.
  late final Output<List<RouterPeerCustomLearnedIpRange>?>
      customLearnedIpRanges;

  /// The user-defined custom learned route priority for a BGP session.
  /// This value is applied to all custom learned route ranges for the session.
  /// You can choose a value from 0 to 65335. If you don't provide a value,
  /// Google Cloud assigns a priority of 100 to the ranges.
  late final Output<int?> customLearnedRoutePriority;

  /// The status of the BGP peer connection. If set to false, any active session
  /// with the peer is terminated and all associated routing information is removed.
  /// If set to true, the peer connection can be established with routing information.
  /// The default is true.
  late final Output<bool?> enable;

  /// Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  late final Output<bool> enableIpv4;

  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  late final Output<bool?> enableIpv6;

  /// routers.list of export policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_EXPORT type.
  late final Output<List<String>?> exportPolicies;

  /// routers.list of import policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_IMPORT type.
  late final Output<List<String>?> importPolicies;

  /// Name of the interface the BGP peer is associated with.
  late final Output<String> interface;

  /// IP address of the interface inside Google Cloud Platform.
  /// Only IPv4 is supported.
  late final Output<String> ipAddress;

  /// IPv4 address of the interface inside Google Cloud Platform.
  late final Output<String> ipv4NexthopAddress;

  /// IPv6 address of the interface inside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  late final Output<String> ipv6NexthopAddress;

  /// An internal boolean field for provider use for zero_advertised_route_priority.
  late final Output<bool> isAdvertisedRoutePrioritySet;

  /// An internal boolean field for provider use.
  late final Output<bool> isCustomLearnedPrioritySet;

  /// The resource that configures and manages this BGP peer.
  /// * `MANAGED_BY_USER` is the default value and can be managed by
  /// you or other users
  /// * `MANAGED_BY_ATTACHMENT` is a BGP peer that is configured and
  /// managed by Cloud Interconnect, specifically by an
  /// InterconnectAttachment of type PARTNER. Google automatically
  /// creates, updates, and deletes this type of BGP peer when the
  /// PARTNER InterconnectAttachment is created, updated,
  /// or deleted.
  late final Output<String> managementType;

  /// Configuration for MD5 authentication on the BGP session.
  /// Structure is documented below.
  late final Output<RouterPeerMd5AuthenticationKey?> md5AuthenticationKey;

  /// Name of this BGP peer. The name must be 1-63 characters long,
  /// and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  late final Output<String> name;

  /// Peer BGP Autonomous System Number (ASN).
  /// Each BGP interface may use a different value.
  late final Output<int> peerAsn;

  /// IP address of the BGP interface outside Google Cloud Platform.
  /// Only IPv4 is supported. Required if `ip_address` is set.
  late final Output<String> peerIpAddress;

  /// IPv4 address of the BGP interface outside Google Cloud Platform.
  late final Output<String> peerIpv4NexthopAddress;

  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  late final Output<String> peerIpv6NexthopAddress;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  late final Output<String> project;

  /// Region where the router and BgpPeer reside.
  /// If it is not provided, the provider region is used.
  late final Output<String> region;

  /// The name of the Cloud Router in which this BgpPeer will be configured.
  ///
  ///
  /// - - -
  late final Output<String> router;

  /// The URI of the VM instance that is used as third-party router appliances
  /// such as Next Gen Firewalls, Virtual Routers, or Router Appliances.
  /// The VM instance must be located in zones contained in the same region as
  /// this Cloud Router. The VM instance is the peer side of the BGP session.
  late final Output<String?> routerApplianceInstance;

  /// The user-defined zero-advertised-route-priority for a advertised-route-priority in BGP session.
  /// This value has to be set true to force the advertised_route_priority to be 0.
  late final Output<bool?> zeroAdvertisedRoutePriority;

  /// The user-defined zero-custom-learned-route-priority for a custom-learned-route-priority in BGP session.
  /// This value has to be set true to force the custom_learned_route_priority to be 0.
  late final Output<bool?> zeroCustomLearnedRoutePriority;

  RouterPeer(
    String name, {
    RouterPeerArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'gcp:compute/routerPeer:RouterPeer',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.advertiseMode = registerOutput<String?>('advertiseMode');
    this.advertisedGroups = registerOutput<List<String>?>('advertisedGroups');
    this.advertisedIpRanges =
        registerOutput<List<RouterPeerAdvertisedIpRange>?>(
            'advertisedIpRanges');
    this.advertisedRoutePriority =
        registerOutput<int?>('advertisedRoutePriority');
    this.bfd = registerOutput<RouterPeerBfd>('bfd');
    this.customLearnedIpRanges =
        registerOutput<List<RouterPeerCustomLearnedIpRange>?>(
            'customLearnedIpRanges');
    this.customLearnedRoutePriority =
        registerOutput<int?>('customLearnedRoutePriority');
    this.enable = registerOutput<bool?>('enable');
    this.enableIpv4 = registerOutput<bool>('enableIpv4');
    this.enableIpv6 = registerOutput<bool?>('enableIpv6');
    this.exportPolicies = registerOutput<List<String>?>('exportPolicies');
    this.importPolicies = registerOutput<List<String>?>('importPolicies');
    this.interface = registerOutput<String>('interface');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipv4NexthopAddress = registerOutput<String>('ipv4NexthopAddress');
    this.ipv6NexthopAddress = registerOutput<String>('ipv6NexthopAddress');
    this.isAdvertisedRoutePrioritySet =
        registerOutput<bool>('isAdvertisedRoutePrioritySet');
    this.isCustomLearnedPrioritySet =
        registerOutput<bool>('isCustomLearnedPrioritySet');
    this.managementType = registerOutput<String>('managementType');
    this.md5AuthenticationKey =
        registerOutput<RouterPeerMd5AuthenticationKey?>('md5AuthenticationKey');
    this.name = registerOutput<String>('name');
    this.peerAsn = registerOutput<int>('peerAsn');
    this.peerIpAddress = registerOutput<String>('peerIpAddress');
    this.peerIpv4NexthopAddress =
        registerOutput<String>('peerIpv4NexthopAddress');
    this.peerIpv6NexthopAddress =
        registerOutput<String>('peerIpv6NexthopAddress');
    this.project = registerOutput<String>('project');
    this.region = registerOutput<String>('region');
    this.router = registerOutput<String>('router');
    this.routerApplianceInstance =
        registerOutput<String?>('routerApplianceInstance');
    this.zeroAdvertisedRoutePriority =
        registerOutput<bool?>('zeroAdvertisedRoutePriority');
    this.zeroCustomLearnedRoutePriority =
        registerOutput<bool?>('zeroCustomLearnedRoutePriority');
  }
}
