// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'router_advertised_ip_range_response3.dart';

class RouterBgpResponse3 {
  /// User-specified flag to indicate which mode to use for advertisement. The options are DEFAULT or CUSTOM.
  final String advertiseMode;

  /// User-specified list of prefix groups to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These groups will be advertised in addition to any specified prefixes. Leave this field blank to advertise no custom groups.
  final List<String> advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in custom mode. This field can only be populated if advertise_mode is CUSTOM and is advertised to all peers of the router. These IP ranges will be advertised in addition to any specified groups. Leave this field blank to advertise no custom IP ranges.
  final List<RouterAdvertisedIpRangeResponse3> advertisedIpRanges;

  /// Local BGP Autonomous System Number (ASN). Must be an RFC6996 private ASN, either 16-bit or 32-bit. The value will be fixed for this router resource. All VPN tunnels that link to this router will have the same local ASN.
  final int asn;

  /// The interval in seconds between BGP keepalive messages that are sent to the peer. Hold time is three times the interval at which keepalive messages are sent, and the hold time is the maximum number of seconds allowed to elapse between successive keepalive messages that BGP receives from a peer. BGP will use the smaller of either the local hold time value or the peer's hold time value as the hold time for the BGP connection between the two peers. If set, this value must be between 20 and 60. The default is 20.
  final int keepaliveInterval;

  RouterBgpResponse3({
    required this.advertiseMode,
    required this.advertisedGroups,
    required this.advertisedIpRanges,
    required this.asn,
    required this.keepaliveInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advertiseMode'] = advertiseMode;
    map['advertisedGroups'] = advertisedGroups;
    map['advertisedIpRanges'] = Input.encodeList<
        RouterAdvertisedIpRangeResponse3,
        Map<String, dynamic>>(advertisedIpRanges, (value) => value.toMap());
    map['asn'] = asn;
    map['keepaliveInterval'] = keepaliveInterval;
    return map;
  }

  factory RouterBgpResponse3.fromMap(Map<String, dynamic> map) {
    return RouterBgpResponse3(
      advertiseMode: map['advertiseMode'] as String,
      advertisedGroups: (map['advertisedGroups'] as List).cast<String>(),
      advertisedIpRanges: Input.decodeList<RouterAdvertisedIpRangeResponse3>(
          map['advertisedIpRanges'],
          (value) => RouterAdvertisedIpRangeResponse3.fromMap(
              (value as Map).cast<String, dynamic>())),
      asn: map['asn'] as int,
      keepaliveInterval: map['keepaliveInterval'] as int,
    );
  }
}
