// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'router_advertised_ip_range_compute_beta.dart';
import 'router_bgp_advertise_mode_compute_beta.dart';
import 'router_bgp_advertised_groups_item_compute_beta.dart';

class RouterBgpComputeBeta {
  /// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  final RouterBgpAdvertiseModeComputeBeta? advertiseMode;

  /// User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final List<RouterBgpAdvertisedGroupsItemComputeBeta>? advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final List<RouterAdvertisedIpRangeComputeBeta>? advertisedIpRanges;

  /// Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  final int? asn;

  /// Explicitly specifies a range of valid BGP Identifiers for this Router. It is provided as a link-local IPv4 range (from 169.254.0.0/16), of size at least /30, even if the BGP sessions are over IPv6. It must not overlap with any IPv4 BGP session ranges. Other vendors commonly call this "router ID".
  final String? identifierRange;

  /// The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  final int? keepaliveInterval;

  RouterBgpComputeBeta({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    this.asn,
    this.identifierRange,
    this.keepaliveInterval,
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
          RouterBgpAdvertisedGroupsItemComputeBeta,
          String>(advertisedGroupsValue, (value) => value.value);
    }
    final advertisedIpRangesValue = advertisedIpRanges;
    if (advertisedIpRangesValue != null) {
      map['advertisedIpRanges'] = pulumi.Input.encodeList<
              RouterAdvertisedIpRangeComputeBeta, Map<String, dynamic>>(
          advertisedIpRangesValue, (value) => value.toMap());
    }
    final asnValue = asn;
    if (asnValue != null) {
      map['asn'] = asnValue;
    }
    final identifierRangeValue = identifierRange;
    if (identifierRangeValue != null) {
      map['identifierRange'] = identifierRangeValue;
    }
    final keepaliveIntervalValue = keepaliveInterval;
    if (keepaliveIntervalValue != null) {
      map['keepaliveInterval'] = keepaliveIntervalValue;
    }
    return map;
  }

  factory RouterBgpComputeBeta.fromMap(Map<String, dynamic> map) {
    return RouterBgpComputeBeta(
      advertiseMode: map['advertiseMode'] == null
          ? null
          : RouterBgpAdvertiseModeComputeBeta.fromValue(
              map['advertiseMode'] as String),
      advertisedGroups: map['advertisedGroups'] == null
          ? null
          : pulumi.Input.decodeList<RouterBgpAdvertisedGroupsItemComputeBeta>(
              map['advertisedGroups'],
              (value) => RouterBgpAdvertisedGroupsItemComputeBeta.fromValue(
                  value as String)),
      advertisedIpRanges: map['advertisedIpRanges'] == null
          ? null
          : pulumi.Input.decodeList<RouterAdvertisedIpRangeComputeBeta>(
              map['advertisedIpRanges'],
              (value) => RouterAdvertisedIpRangeComputeBeta.fromMap(
                  (value as Map).cast<String, dynamic>())),
      asn: map['asn'] == null ? null : map['asn'] as int,
      identifierRange: map['identifierRange'] == null
          ? null
          : map['identifierRange'] as String,
      keepaliveInterval: map['keepaliveInterval'] == null
          ? null
          : map['keepaliveInterval'] as int,
    );
  }
}
