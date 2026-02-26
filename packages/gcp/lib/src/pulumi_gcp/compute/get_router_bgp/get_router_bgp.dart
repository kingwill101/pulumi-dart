// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_router_bgp_advertised_ip_range/get_router_bgp_advertised_ip_range.dart';

class GetRouterBgp {
  /// User-specified flag to indicate which mode to use for advertisement. Default value: "DEFAULT" Possible values: ["DEFAULT", "CUSTOM"]
  final String advertiseMode;

  /// User-specified list of prefix groups to advertise in custom mode.
  /// This field can only be populated if advertiseMode is CUSTOM and
  /// is advertised to all peers of the router. These groups will be
  /// advertised in addition to any specified prefixes. Leave this field
  /// blank to advertise no custom groups.
  ///
  /// This enum field has the one valid value: ALL_SUBNETS
  final List<String> advertisedGroups;

  /// User-specified list of individual IP ranges to advertise in
  /// custom mode. This field can only be populated if advertiseMode
  /// is CUSTOM and is advertised to all peers of the router. These IP
  /// ranges will be advertised in addition to any specified groups.
  /// Leave this field blank to advertise no custom IP ranges.
  final List<GetRouterBgpAdvertisedIpRange> advertisedIpRanges;

  /// Local BGP Autonomous System Number (ASN). Must be an RFC6996
  /// private ASN, either 16-bit or 32-bit. The value will be fixed for
  /// this router resource. All VPN tunnels that link to this router
  /// will have the same local ASN.
  final int asn;

  /// Explicitly specifies a range of valid BGP Identifiers for this Router.
  /// It is provided as a link-local IPv4 range (from 169.254.0.0/16), of
  /// size at least /30, even if the BGP sessions are over IPv6. It must
  /// not overlap with any IPv4 BGP session ranges. Other vendors commonly
  /// call this router ID.
  final String identifierRange;

  /// The interval in seconds between BGP keepalive messages that are sent
  /// to the peer. Hold time is three times the interval at which keepalive
  /// messages are sent, and the hold time is the maximum number of seconds
  /// allowed to elapse between successive keepalive messages that BGP
  /// receives from a peer.
  ///
  /// BGP will use the smaller of either the local hold time value or the
  /// peer's hold time value as the hold time for the BGP connection
  /// between the two peers. If set, this value must be between 20 and 60.
  /// The default is 20.
  final int keepaliveInterval;

  GetRouterBgp({
    required this.advertiseMode,
    required this.advertisedGroups,
    required this.advertisedIpRanges,
    required this.asn,
    required this.identifierRange,
    required this.keepaliveInterval,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['advertiseMode'] = advertiseMode;
    map['advertisedGroups'] = advertisedGroups;
    map['advertisedIpRanges'] =
        Input.encodeList<GetRouterBgpAdvertisedIpRange, Map<String, dynamic>>(
            advertisedIpRanges, (value) => value.toMap());
    map['asn'] = asn;
    map['identifierRange'] = identifierRange;
    map['keepaliveInterval'] = keepaliveInterval;
    return map;
  }

  factory GetRouterBgp.fromMap(Map<String, dynamic> map) {
    return GetRouterBgp(
      advertiseMode: map['advertiseMode'] as String,
      advertisedGroups: (map['advertisedGroups'] as List).cast<String>(),
      advertisedIpRanges: Input.decodeList<GetRouterBgpAdvertisedIpRange>(
          map['advertisedIpRanges'],
          (value) => GetRouterBgpAdvertisedIpRange.fromMap(
              (value as Map).cast<String, dynamic>())),
      asn: map['asn'] as int,
      identifierRange: map['identifierRange'] as String,
      keepaliveInterval: map['keepaliveInterval'] as int,
    );
  }
}
