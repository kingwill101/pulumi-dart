// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'router_advertised_ip_range3.dart';
import 'router_bgp_advertise_mode3.dart';
import 'router_bgp_advertised_groups_item3.dart';

class RouterBgp3 {
  /// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  final RouterBgpAdvertiseMode3? advertiseMode;

  /// User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final List<RouterBgpAdvertisedGroupsItem3>? advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final List<RouterAdvertisedIpRange3>? advertisedIpRanges;

  /// Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  final int? asn;

  /// The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  final int? keepaliveInterval;

  RouterBgp3({
    this.advertiseMode,
    this.advertisedGroups,
    this.advertisedIpRanges,
    this.asn,
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
      map['advertisedGroups'] =
          Input.encodeList<RouterBgpAdvertisedGroupsItem3, String>(
              advertisedGroupsValue, (value) => value.value);
    }
    final advertisedIpRangesValue = advertisedIpRanges;
    if (advertisedIpRangesValue != null) {
      map['advertisedIpRanges'] =
          Input.encodeList<RouterAdvertisedIpRange3, Map<String, dynamic>>(
              advertisedIpRangesValue, (value) => value.toMap());
    }
    final asnValue = asn;
    if (asnValue != null) {
      map['asn'] = asnValue;
    }
    final keepaliveIntervalValue = keepaliveInterval;
    if (keepaliveIntervalValue != null) {
      map['keepaliveInterval'] = keepaliveIntervalValue;
    }
    return map;
  }

  factory RouterBgp3.fromMap(Map<String, dynamic> map) {
    return RouterBgp3(
      advertiseMode: map['advertiseMode'] == null
          ? null
          : RouterBgpAdvertiseMode3.fromValue(map['advertiseMode'] as String),
      advertisedGroups: map['advertisedGroups'] == null
          ? null
          : Input.decodeList<RouterBgpAdvertisedGroupsItem3>(
              map['advertisedGroups'],
              (value) =>
                  RouterBgpAdvertisedGroupsItem3.fromValue(value as String)),
      advertisedIpRanges: map['advertisedIpRanges'] == null
          ? null
          : Input.decodeList<RouterAdvertisedIpRange3>(
              map['advertisedIpRanges'],
              (value) => RouterAdvertisedIpRange3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      asn: map['asn'] == null ? null : map['asn'] as int,
      keepaliveInterval: map['keepaliveInterval'] == null
          ? null
          : map['keepaliveInterval'] as int,
    );
  }
}
