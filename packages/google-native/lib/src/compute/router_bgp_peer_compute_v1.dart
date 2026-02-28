// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range_compute_v1.dart';
import 'router_bgp_peer_advertise_mode_compute_v1.dart';
import 'router_bgp_peer_advertised_groups_item_compute_v1.dart';
import 'router_bgp_peer_bfd_compute_v1.dart';
import 'router_bgp_peer_custom_learned_ip_range_compute_v1.dart';
import 'router_bgp_peer_enable_compute_v1.dart';

class RouterBgpPeerComputeV1 {
  /// User-specified flag to indicate which mode to use for advertisement.
  final RouterBgpPeerAdvertiseModeComputeV1? advertiseMode;

  /// User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final List<RouterBgpPeerAdvertisedGroupsItemComputeV1>? advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final List<RouterAdvertisedIpRangeComputeV1>? advertisedIpRanges;

  /// The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  final int? advertisedRoutePriority;

  /// BFD configuration for the BGP peering.
  final RouterBgpPeerBfdComputeV1? bfd;

  /// A list of user-defined custom learned route IP address ranges for a BGP session.
  final List<RouterBgpPeerCustomLearnedIpRangeComputeV1>? customLearnedIpRanges;

  /// The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  final int? customLearnedRoutePriority;

  /// The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  final RouterBgpPeerEnableComputeV1? enable;

  /// Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  final bool? enableIpv6;

  /// Name of the interface the BGP peer is associated with.
  final String? interfaceName;

  /// IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  final String? ipAddress;

  /// IPv6 address of the interface inside Google Cloud Platform.
  final String? ipv6NexthopAddress;

  /// Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  final String? md5AuthenticationKeyName;

  /// Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  final String? name;

  /// Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  final int? peerAsn;

  /// IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  final String? peerIpAddress;

  /// IPv6 address of the BGP interface outside Google Cloud Platform.
  final String? peerIpv6NexthopAddress;

  /// URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  final String? routerApplianceInstance;

  /// Creates a new [RouterBgpPeerComputeV1].
  /// [advertiseMode] User-specified flag to indicate which mode to use for advertisement.
  /// [advertisedGroups] User-specified list of prefix groups to advertise in custom mode, which currently supports the following option: - ALL_SUBNETS: Advertises all of the router's own VPC subnets. This excludes any routes learned for subnets that use VPC Network Peering. Note that this field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These groups are advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  /// [advertisedIpRanges] User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and overrides the list defined for the router (in the "bgp" message). These IP ranges are advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  /// [advertisedRoutePriority] The priority of routes advertised to this BGP peer. Where there is more than one matching route of maximum length, the routes with the lowest priority value win.
  /// [bfd] BFD configuration for the BGP peering.
  /// [customLearnedIpRanges] A list of user-defined custom learned route IP address ranges for a BGP session.
  /// [customLearnedRoutePriority] The user-defined custom learned route priority for a BGP session. This value is applied to all custom learned route ranges for the session. You can choose a value from `0` to `65335`. If you don't provide a value, Google Cloud assigns a priority of `100` to the ranges.
  /// [enable] The status of the BGP peer connection. If set to FALSE, any active session with the peer is terminated and all associated routing information is removed. If set to TRUE, the peer connection can be established with routing information. The default is TRUE.
  /// [enableIpv6] Enable IPv6 traffic over BGP Peer. If not specified, it is disabled by default.
  /// [interfaceName] Name of the interface the BGP peer is associated with.
  /// [ipAddress] IP address of the interface inside Google Cloud Platform. Only IPv4 is supported.
  /// [ipv6NexthopAddress] IPv6 address of the interface inside Google Cloud Platform.
  /// [md5AuthenticationKeyName] Present if MD5 authentication is enabled for the peering. Must be the name of one of the entries in the Router.md5_authentication_keys. The field must comply with RFC1035.
  /// [name] Name of this BGP peer. The name must be 1-63 characters long, and comply with RFC1035. Specifically, the name must be 1-63 characters long and match the regular expression `[a-z]([-a-z0-9]*[a-z0-9])?` which means the first character must be a lowercase letter, and all following characters must be a dash, lowercase letter, or digit, except the last character, which cannot be a dash.
  /// [peerAsn] Peer BGP Autonomous System Number (ASN). Each BGP interface may use a different value.
  /// [peerIpAddress] IP address of the BGP interface outside Google Cloud Platform. Only IPv4 is supported.
  /// [peerIpv6NexthopAddress] IPv6 address of the BGP interface outside Google Cloud Platform.
  /// [routerApplianceInstance] URI of the VM instance that is used as third-party router appliances such as Next Gen Firewalls, Virtual Routers, or Router Appliances. The VM instance must be located in zones contained in the same region as this Cloud Router. The VM instance is the peer side of the BGP session.
  RouterBgpPeerComputeV1({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    this.advertisedRoutePriority,
    this.bfd,
    this.customLearnedIpRanges,
    this.customLearnedRoutePriority,
    this.enable,
    this.enableIpv6,
    this.interfaceName,
    this.ipAddress,
    this.ipv6NexthopAddress,
    this.md5AuthenticationKeyName,
    this.name,
    this.peerAsn,
    this.peerIpAddress,
    this.peerIpv6NexthopAddress,
    this.routerApplianceInstance,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final advertiseModeValue = advertiseMode;
    if (advertiseModeValue != null) {
      map['advertiseMode'] = advertiseModeValue.value;
    }
    final advertisedGroupsValue = advertisedGroups;
    if (advertisedGroupsValue != null) {
      map['advertisedGroups'] = pulumi.Input.encodeList<
          RouterBgpPeerAdvertisedGroupsItemComputeV1,
          String>(advertisedGroupsValue, (value) => value.value);
    }
    final advertisedIpRangesValue = advertisedIpRanges;
    if (advertisedIpRangesValue != null) {
      map['advertisedIpRanges'] = pulumi.Input.encodeList<
              RouterAdvertisedIpRangeComputeV1, Map<String, dynamic>>(
          advertisedIpRangesValue, (value) => value.toMap());
    }
    final advertisedRoutePriorityValue = advertisedRoutePriority;
    if (advertisedRoutePriorityValue != null) {
      map['advertisedRoutePriority'] = advertisedRoutePriorityValue;
    }
    final bfdValue = bfd;
    if (bfdValue != null) {
      map['bfd'] = bfdValue.toMap();
    }
    final customLearnedIpRangesValue = customLearnedIpRanges;
    if (customLearnedIpRangesValue != null) {
      map['customLearnedIpRanges'] = pulumi.Input.encodeList<
              RouterBgpPeerCustomLearnedIpRangeComputeV1, Map<String, dynamic>>(
          customLearnedIpRangesValue, (value) => value.toMap());
    }
    final customLearnedRoutePriorityValue = customLearnedRoutePriority;
    if (customLearnedRoutePriorityValue != null) {
      map['customLearnedRoutePriority'] = customLearnedRoutePriorityValue;
    }
    final enableValue = enable;
    if (enableValue != null) {
      map['enable'] = enableValue.value;
    }
    final enableIpv6Value = enableIpv6;
    if (enableIpv6Value != null) {
      map['enableIpv6'] = enableIpv6Value;
    }
    final interfaceNameValue = interfaceName;
    if (interfaceNameValue != null) {
      map['interfaceName'] = interfaceNameValue;
    }
    final ipAddressValue = ipAddress;
    if (ipAddressValue != null) {
      map['ipAddress'] = ipAddressValue;
    }
    final ipv6NexthopAddressValue = ipv6NexthopAddress;
    if (ipv6NexthopAddressValue != null) {
      map['ipv6NexthopAddress'] = ipv6NexthopAddressValue;
    }
    final md5AuthenticationKeyNameValue = md5AuthenticationKeyName;
    if (md5AuthenticationKeyNameValue != null) {
      map['md5AuthenticationKeyName'] = md5AuthenticationKeyNameValue;
    }
    final nameValue = name;
    if (nameValue != null) {
      map['name'] = nameValue;
    }
    final peerAsnValue = peerAsn;
    if (peerAsnValue != null) {
      map['peerAsn'] = peerAsnValue;
    }
    final peerIpAddressValue = peerIpAddress;
    if (peerIpAddressValue != null) {
      map['peerIpAddress'] = peerIpAddressValue;
    }
    final peerIpv6NexthopAddressValue = peerIpv6NexthopAddress;
    if (peerIpv6NexthopAddressValue != null) {
      map['peerIpv6NexthopAddress'] = peerIpv6NexthopAddressValue;
    }
    final routerApplianceInstanceValue = routerApplianceInstance;
    if (routerApplianceInstanceValue != null) {
      map['routerApplianceInstance'] = routerApplianceInstanceValue;
    }
    return map;
  }

  factory RouterBgpPeerComputeV1.fromMap(Map<String, dynamic> map) {
    return RouterBgpPeerComputeV1(
      advertiseMode: map['advertiseMode'] == null
          ? null
          : RouterBgpPeerAdvertiseModeComputeV1.fromValue(
              map['advertiseMode'] as String),
      advertisedGroups: map['advertisedGroups'] == null
          ? null
          : pulumi.Input.decodeList<RouterBgpPeerAdvertisedGroupsItemComputeV1>(
              map['advertisedGroups'],
              (value) => RouterBgpPeerAdvertisedGroupsItemComputeV1.fromValue(
                  value as String)),
      advertisedIpRanges: map['advertisedIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<RouterAdvertisedIpRangeComputeV1>(
              map['advertisedIpRanges'],
              (value) => RouterAdvertisedIpRangeComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      advertisedRoutePriority: map['advertisedRoutePriority'] == null
          ? null
          : map['advertisedRoutePriority'] as int,
      bfd: map['bfd'] == null
          ? null
          : RouterBgpPeerBfdComputeV1.fromMap(
              (map['bfd'] as Map).cast<String, dynamic>()),
      customLearnedIpRanges: map['customLearnedIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<RouterBgpPeerCustomLearnedIpRangeComputeV1>(
              map['customLearnedIpRanges'],
              (value) => RouterBgpPeerCustomLearnedIpRangeComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      customLearnedRoutePriority: map['customLearnedRoutePriority'] == null
          ? null
          : map['customLearnedRoutePriority'] as int,
      enable: map['enable'] == null
          ? null
          : RouterBgpPeerEnableComputeV1.fromValue(map['enable'] as String),
      enableIpv6: map['enableIpv6'] == null ? null : map['enableIpv6'] as bool,
      interfaceName:
          map['interfaceName'] == null ? null : map['interfaceName'] as String,
      ipAddress: map['ipAddress'] == null ? null : map['ipAddress'] as String,
      ipv6NexthopAddress: map['ipv6NexthopAddress'] == null
          ? null
          : map['ipv6NexthopAddress'] as String,
      md5AuthenticationKeyName: map['md5AuthenticationKeyName'] == null
          ? null
          : map['md5AuthenticationKeyName'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      peerAsn: map['peerAsn'] == null ? null : map['peerAsn'] as int,
      peerIpAddress:
          map['peerIpAddress'] == null ? null : map['peerIpAddress'] as String,
      peerIpv6NexthopAddress: map['peerIpv6NexthopAddress'] == null
          ? null
          : map['peerIpv6NexthopAddress'] as String,
      routerApplianceInstance: map['routerApplianceInstance'] == null
          ? null
          : map['routerApplianceInstance'] as String,
    );
  }
}
