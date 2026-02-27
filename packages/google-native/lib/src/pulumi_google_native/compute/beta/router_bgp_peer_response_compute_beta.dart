// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range_response_compute_beta.dart';
import 'router_bgp_peer_bfd_response_compute_beta.dart';
import 'router_bgp_peer_custom_learned_ip_range_response_compute_beta.dart';

class RouterBgpPeerResponseComputeBeta {
  /// User-specified flag to indicate which mode to use for advertisement.
  final String advertiseMode;

  /// User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final List<String> advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final List<RouterAdvertisedIpRangeResponseComputeBeta> advertisedIpRanges;

  /// The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  final int advertisedRoutePriority;

  /// BFD configuration for the BGP peering.
  final RouterBgpPeerBfdResponseComputeBeta bfd;

  /// A list of user-defined custom learned route IP address ranges for a BGP session.
  final List<RouterBgpPeerCustomLearnedIpRangeResponseComputeBeta>
      customLearnedIpRanges;

  /// The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  final int customLearnedRoutePriority;

  /// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  final String enable;

  /// Enable IPv4 traffic over BGP Peer. It is enabled by default if the peerIpAddress is version 4.
  final bool enableIpv4;

  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  final bool enableIpv6;

  /// Name of the interface the BGP peer is associated with.
  final String interfaceName;

  /// IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  final String ipAddress;

  /// IPv4 address of the interface inside Google Cloud Platform.
  final String ipv4NexthopAddress;

  /// IPv6 address of the interface inside Google Cloud Platform.
  final String ipv6NexthopAddress;

  /// The resource that configures and manages this BGP peer. - MANAGED_BY_USER is the default value and can be managed by you or other users - MANAGED_BY_ATTACHMENT is a BGP peer that is configured and managed by Cloud Interconnect, specifically by an InterconnectAttachment of type PARTNER. Google automatically creates, updates, and deletes this type of BGP peer when the PARTNER InterconnectAttachment is created, updated, or deleted.
  final String managementType;

  /// Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  final String md5AuthenticationKeyName;

  /// Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String name;

  /// Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  final int peerAsn;

  /// IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  final String peerIpAddress;

  /// IPv4 address of the BGP interface outside Google Cloud Platform.
  final String peerIpv4NexthopAddress;

  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  final String peerIpv6NexthopAddress;

  /// URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  final String routerApplianceInstance;

  RouterBgpPeerResponseComputeBeta({
    required this.advertiseMode,
    required this.advertisedGroups,
    required this.advertisedIpRanges,
    required this.advertisedRoutePriority,
    required this.bfd,
    required this.customLearnedIpRanges,
    required this.customLearnedRoutePriority,
    required this.enable,
    required this.enableIpv4,
    required this.enableIpv6,
    required this.interfaceName,
    required this.ipAddress,
    required this.ipv4NexthopAddress,
    required this.ipv6NexthopAddress,
    required this.managementType,
    required this.md5AuthenticationKeyName,
    required this.name,
    required this.peerAsn,
    required this.peerIpAddress,
    required this.peerIpv4NexthopAddress,
    required this.peerIpv6NexthopAddress,
    required this.routerApplianceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advertiseMode'] = advertiseMode;
    map['advertisedGroups'] = advertisedGroups;
    map['advertisedIpRanges'] = pulumi.Input.encodeList<
        RouterAdvertisedIpRangeResponseComputeBeta,
        Map<String, dynamic>>(advertisedIpRanges, (value) => value.toMap());
    map['advertisedRoutePriority'] = advertisedRoutePriority;
    map['bfd'] = bfd.toMap();
    map['customLearnedIpRanges'] = pulumi.Input.encodeList<
        RouterBgpPeerCustomLearnedIpRangeResponseComputeBeta,
        Map<String, dynamic>>(customLearnedIpRanges, (value) => value.toMap());
    map['customLearnedRoutePriority'] = customLearnedRoutePriority;
    map['enable'] = enable;
    map['enableIpv4'] = enableIpv4;
    map['enableIpv6'] = enableIpv6;
    map['interfaceName'] = interfaceName;
    map['ipAddress'] = ipAddress;
    map['ipv4NexthopAddress'] = ipv4NexthopAddress;
    map['ipv6NexthopAddress'] = ipv6NexthopAddress;
    map['managementType'] = managementType;
    map['md5AuthenticationKeyName'] = md5AuthenticationKeyName;
    map['name'] = name;
    map['peerAsn'] = peerAsn;
    map['peerIpAddress'] = peerIpAddress;
    map['peerIpv4NexthopAddress'] = peerIpv4NexthopAddress;
    map['peerIpv6NexthopAddress'] = peerIpv6NexthopAddress;
    map['routerApplianceInstance'] = routerApplianceInstance;
    return map;
  }

  factory RouterBgpPeerResponseComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerResponseComputeBeta(
      advertiseMode: map['advertiseMode'] as String,
      advertisedGroups: (map['advertisedGroups'] as List).cast<String>(),
      advertisedIpRanges:
          pulumi.Input.decodeList<RouterAdvertisedIpRangeResponseComputeBeta>(
              map['advertisedIpRanges'],
              (value) => RouterAdvertisedIpRangeResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      advertisedRoutePriority: map['advertisedRoutePriority'] as int,
      bfd: RouterBgpPeerBfdResponseComputeBeta.fromMap(
          (map['bfd'] as Map).cast<String, dynamic>()),
      customLearnedIpRanges: pulumi.Input.decodeList<
              RouterBgpPeerCustomLearnedIpRangeResponseComputeBeta>(
          map['customLearnedIpRanges'],
          (value) =>
              RouterBgpPeerCustomLearnedIpRangeResponseComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customLearnedRoutePriority: map['customLearnedRoutePriority'] as int,
      enable: map['enable'] as String,
      enableIpv4: map['enableIpv4'] as bool,
      enableIpv6: map['enableIpv6'] as bool,
      interfaceName: map['interfaceName'] as String,
      ipAddress: map['ipAddress'] as String,
      ipv4NexthopAddress: map['ipv4NexthopAddress'] as String,
      ipv6NexthopAddress: map['ipv6NexthopAddress'] as String,
      managementType: map['managementType'] as String,
      md5AuthenticationKeyName: map['md5AuthenticationKeyName'] as String,
      name: map['name'] as String,
      peerAsn: map['peerAsn'] as int,
      peerIpAddress: map['peerIpAddress'] as String,
      peerIpv4NexthopAddress: map['peerIpv4NexthopAddress'] as String,
      peerIpv6NexthopAddress: map['peerIpv6NexthopAddress'] as String,
      routerApplianceInstance: map['routerApplianceInstance'] as String,
    );
  }
}
