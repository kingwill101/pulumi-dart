// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../router_peer_advertised_ip_range/router_peer_advertised_ip_range.dart';
import '../router_peer_bfd/router_peer_bfd.dart';
import '../router_peer_custom_learned_ip_range/router_peer_custom_learned_ip_range.dart';
import '../router_peer_md5_authentication_key/router_peer_md5_authentication_key.dart';

/// The set of arguments for RouterPeer.
class RouterPeerArgs {
  /// User-specified flag to indicate which mode to use for advertisement.
  /// Valid values of this enum field are: `DEFAULT`, `CUSTOM`
  /// Default value is `DEFAULT`.
  /// Possible values are: `DEFAULT`, `CUSTOM`.
  final Input<String>? advertiseMode;

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
  final Input<List<String>>? advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in
  /// custom mode. This field can only be populated if advertiseMode
  /// is `CUSTOM` and is advertised to all peers of the router. These IP
  /// ranges will be advertised in addition to any specified groups.
  /// Leave this field blank to advertise no custom IP ranges.
  /// Structure is documented below.
  final Input<List<RouterPeerAdvertisedIpRange>>? advertisedIpRanges;

  /// The priority of routes advertised to this BGP peer.
  /// Where there is more than one matching route of maximum
  /// length, the routes with the lowest priority value win.
  final Input<int>? advertisedRoutePriority;

  /// BFD configuration for the BGP peering.
  /// Structure is documented below.
  final Input<RouterPeerBfd>? bfd;

  /// The custom learned route IP address range. Must be a valid CIDR-formatted prefix.
  /// If an IP address is provided without a subnet mask, it is interpreted as, for IPv4,
  /// a /32 singular IP address range, and, for IPv6, /128.
  /// Structure is documented below.
  final Input<List<RouterPeerCustomLearnedIpRange>>? customLearnedIpRanges;

  /// The user-defined custom learned route priority for a BGP session.
  /// This value is applied to all custom learned route ranges for the session.
  /// You can choose a value from 0 to 65335. If you don't provide a value,
  /// Google Cloud assigns a priority of 100 to the ranges.
  final Input<int>? customLearnedRoutePriority;

  /// The status of the BGP peer connection. If set to false, any active session
  /// with the peer is terminated and all associated routing information is removed.
  /// If set to true, the peer connection can be established with routing information.
  /// The default is true.
  final Input<bool>? enable;

  /// Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  final Input<bool>? enableIpv4;

  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  final Input<bool>? enableIpv6;

  /// routers.list of export policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_EXPORT type.
  final Input<List<String>>? exportPolicies;

  /// routers.list of import policies applied to this peer, in the order they must be evaluated.
  /// The name must correspond to an existing policy that has ROUTE_POLICY_TYPE_IMPORT type.
  final Input<List<String>>? importPolicies;

  /// Name of the interface the BGP peer is associated with.
  final Input<String> interface;

  /// IP address of the interface inside Google Cloud Platform.
  /// Only IPv4 is supported.
  final Input<String>? ipAddress;

  /// IPv4 address of the interface inside Google Cloud Platform.
  final Input<String>? ipv4NexthopAddress;

  /// IPv6 address of the interface inside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  final Input<String>? ipv6NexthopAddress;

  /// Configuration for MD5 authentication on the BGP session.
  /// Structure is documented below.
  final Input<RouterPeerMd5AuthenticationKey>? md5AuthenticationKey;

  /// Name of this BGP peer. The name must be 1-63 characters long,
  /// and comply with RFC1035. Specifically, the name must be 1-63 characters
  /// long and match the regular expression `a-z?` which
  /// means the first character must be a lowercase letter, and all
  /// following characters must be a dash, lowercase letter, or digit,
  /// except the last character, which cannot be a dash.
  final Input<String>? name;

  /// Peer BGP Autonomous System Number (ASN).
  /// Each BGP interface may use a different value.
  final Input<int> peerAsn;

  /// IP address of the BGP interface outside Google Cloud Platform.
  /// Only IPv4 is supported. Required if `ip_address` is set.
  final Input<String>? peerIpAddress;

  /// IPv4 address of the BGP interface outside Google Cloud Platform.
  final Input<String>? peerIpv4NexthopAddress;

  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  /// The address must be in the range 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64.
  /// If you do not specify the next hop addresses, Google Cloud automatically
  /// assigns unused addresses from the 2600:2d00:0:2::/64 or 2600:2d00:0:3::/64 range for you.
  final Input<String>? peerIpv6NexthopAddress;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// Region where the router and BgpPeer reside.
  /// If it is not provided, the provider region is used.
  final Input<String>? region;

  /// The name of the Cloud Router in which this BgpPeer will be configured.
  ///
  ///
  /// - - -
  final Input<String> router;

  /// The URI of the VM instance that is used as third-party router appliances
  /// such as Next Gen Firewalls, Virtual Routers, or Router Appliances.
  /// The VM instance must be located in zones contained in the same region as
  /// this Cloud Router. The VM instance is the peer side of the BGP session.
  final Input<String>? routerApplianceInstance;

  /// The user-defined zero-advertised-route-priority for a advertised-route-priority in BGP session.
  /// This value has to be set true to force the advertised_route_priority to be 0.
  final Input<bool>? zeroAdvertisedRoutePriority;

  /// The user-defined zero-custom-learned-route-priority for a custom-learned-route-priority in BGP session.
  /// This value has to be set true to force the custom_learned_route_priority to be 0.
  final Input<bool>? zeroCustomLearnedRoutePriority;

  RouterPeerArgs({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    this.advertisedRoutePriority,
    this.bfd,
    this.customLearnedIpRanges,
    this.customLearnedRoutePriority,
    this.enable,
    this.enableIpv4,
    this.enableIpv6,
    this.exportPolicies,
    this.importPolicies,
    required this.interface,
    this.ipAddress,
    this.ipv4NexthopAddress,
    this.ipv6NexthopAddress,
    this.md5AuthenticationKey,
    this.name,
    required this.peerAsn,
    this.peerIpAddress,
    this.peerIpv4NexthopAddress,
    this.peerIpv6NexthopAddress,
    this.project,
    this.region,
    required this.router,
    this.routerApplianceInstance,
    this.zeroAdvertisedRoutePriority,
    this.zeroCustomLearnedRoutePriority,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advertiseModeValue = advertiseMode;
    if (advertiseModeValue != null) {
      map['advertiseMode'] = advertiseModeValue;
    }
    final advertisedGroupsValue = advertisedGroups;
    if (advertisedGroupsValue != null) {
      map['advertisedGroups'] = advertisedGroupsValue;
    }
    final advertisedIpRangesValue = advertisedIpRanges;
    if (advertisedIpRangesValue != null) {
      map['advertisedIpRanges'] = Input.mapOptionalInputValue<
              List<RouterPeerAdvertisedIpRange>, List<Map<String, dynamic>>>(
          advertisedIpRangesValue,
          (value) => Input.encodeList<RouterPeerAdvertisedIpRange,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final advertisedRoutePriorityValue = advertisedRoutePriority;
    if (advertisedRoutePriorityValue != null) {
      map['advertisedRoutePriority'] = advertisedRoutePriorityValue;
    }
    final bfdValue = bfd;
    if (bfdValue != null) {
      map['bfd'] =
          Input.mapOptionalInputValue<RouterPeerBfd, Map<String, dynamic>>(
              bfdValue, (value) => value.toMap());
    }
    final customLearnedIpRangesValue = customLearnedIpRanges;
    if (customLearnedIpRangesValue != null) {
      map['customLearnedIpRanges'] = Input.mapOptionalInputValue<
              List<RouterPeerCustomLearnedIpRange>, List<Map<String, dynamic>>>(
          customLearnedIpRangesValue,
          (value) => Input.encodeList<RouterPeerCustomLearnedIpRange,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final customLearnedRoutePriorityValue = customLearnedRoutePriority;
    if (customLearnedRoutePriorityValue != null) {
      map['customLearnedRoutePriority'] = customLearnedRoutePriorityValue;
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue;
    }
    final enableIpv4Value = enableIpv4;
    if (enableIpv4Value != null) {
      map['enableIpv4'] = enableIpv4Value;
    }
    final enableIpv6Value = enableIpv6;
    if (enableIpv6Value != null) {
      map['enableIpv6'] = enableIpv6Value;
    }
    final exportPoliciesValue = exportPolicies;
    if (exportPoliciesValue != null) {
      map['exportPolicies'] = exportPoliciesValue;
    }
    final importPoliciesValue = importPolicies;
    if (importPoliciesValue != null) {
      map['importPolicies'] = importPoliciesValue;
    }
    map['interface'] = interface;
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipv4NexthopAddressValue = ipv4NexthopAddress;
    if (ipv4NexthopAddressValue != null) {
      map['ipv4NexthopAddress'] = ipv4NexthopAddressValue;
    }
    final ipv6NexthopAddressValue = ipv6NexthopAddress;
    if (ipv6NexthopAddressValue != null) {
      map['ipv6NexthopAddress'] = ipv6NexthopAddressValue;
    }
    final md5AuthenticationKeyValue = md5AuthenticationKey;
    if (md5AuthenticationKeyValue != null) {
      map['md5AuthenticationKey'] = Input.mapOptionalInputValue<
              RouterPeerMd5AuthenticationKey, Map<String, dynamic>>(
          md5AuthenticationKeyValue, (value) => value.toMap());
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    map['peerAsn'] = peerAsn;
    final peerIpAddressValue = peerIpAddress;
    if (peerIpAddressValue != null) {
      map['peerIpAddress'] = peerIpAddressValue;
    }
    final peerIpv4NexthopAddressValue = peerIpv4NexthopAddress;
    if (peerIpv4NexthopAddressValue != null) {
      map['peerIpv4NexthopAddress'] = peerIpv4NexthopAddressValue;
    }
    final peerIpv6NexthopAddressValue = peerIpv6NexthopAddress;
    if (peerIpv6NexthopAddressValue != null) {
      map['peerIpv6NexthopAddress'] = peerIpv6NexthopAddressValue;
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['router'] = router;
    final routerApplianceInstanceValue = routerApplianceInstance;
    if (routerApplianceInstanceValue != null) {
      map['routerApplianceInstance'] = routerApplianceInstanceValue;
    }
    final zeroAdvertisedRoutePriorityValue = zeroAdvertisedRoutePriority;
    if (zeroAdvertisedRoutePriorityValue != null) {
      map['zeroAdvertisedRoutePriority'] = zeroAdvertisedRoutePriorityValue;
    }
    final zeroCustomLearnedRoutePriorityValue = zeroCustomLearnedRoutePriority;
    if (zeroCustomLearnedRoutePriorityValue != null) {
      map['zeroCustomLearnedRoutePriority'] =
          zeroCustomLearnedRoutePriorityValue;
    }
    return map;
  }

  factory RouterPeerArgs.fromMap(Map<String, dynamic> map) {
    return RouterPeerArgs(
      advertiseMode: Input.asOptionalInput<String>(map['advertiseMode']),
      advertisedGroups:
          Input.asOptionalInput<List<String>>(map['advertisedGroups']),
      advertisedIpRanges:
          Input.asOptionalInput<List<RouterPeerAdvertisedIpRange>>(
              map['advertisedIpRanges']),
      advertisedRoutePriority:
          Input.asOptionalInput<int>(map['advertisedRoutePriority']),
      bfd: Input.asOptionalInput<RouterPeerBfd>(map['bfd']),
      customLearnedIpRanges:
          Input.asOptionalInput<List<RouterPeerCustomLearnedIpRange>>(
              map['customLearnedIpRanges']),
      customLearnedRoutePriority:
          Input.asOptionalInput<int>(map['customLearnedRoutePriority']),
      enable: Input.asOptionalInput<bool>(map['enable']),
      enableIpv4: Input.asOptionalInput<bool>(map['enableIpv4']),
      enableIpv6: Input.asOptionalInput<bool>(map['enableIpv6']),
      exportPolicies:
          Input.asOptionalInput<List<String>>(map['exportPolicies']),
      importPolicies:
          Input.asOptionalInput<List<String>>(map['importPolicies']),
      interface: Input.asInput<String>(map['interface']),
      ipAddress: Input.asOptionalInput<String>(map['ipAddress']),
      ipv4NexthopAddress:
          Input.asOptionalInput<String>(map['ipv4NexthopAddress']),
      ipv6NexthopAddress:
          Input.asOptionalInput<String>(map['ipv6NexthopAddress']),
      md5AuthenticationKey:
          Input.asOptionalInput<RouterPeerMd5AuthenticationKey>(
              map['md5AuthenticationKey']),
      name: Input.asOptionalInput<String>(map['name']),
      peerAsn: Input.asInput<int>(map['peerAsn']),
      peerIpAddress: Input.asOptionalInput<String>(map['peerIpAddress']),
      peerIpv4NexthopAddress:
          Input.asOptionalInput<String>(map['peerIpv4NexthopAddress']),
      peerIpv6NexthopAddress:
          Input.asOptionalInput<String>(map['peerIpv6NexthopAddress']),
      project: Input.asOptionalInput<String>(map['project']),
      region: Input.asOptionalInput<String>(map['region']),
      router: Input.asInput<String>(map['router']),
      routerApplianceInstance:
          Input.asOptionalInput<String>(map['routerApplianceInstance']),
      zeroAdvertisedRoutePriority:
          Input.asOptionalInput<bool>(map['zeroAdvertisedRoutePriority']),
      zeroCustomLearnedRoutePriority:
          Input.asOptionalInput<bool>(map['zeroCustomLearnedRoutePriority']),
    );
  }
}
