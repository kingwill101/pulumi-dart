// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_routers_router_bgp_advertised_ip_range.dart';

class GetRoutersRouterBgp {
  final String advertiseMode;
  final List<String> advertisedGroups;
  final List<GetRoutersRouterBgpAdvertisedIpRange> advertisedIpRanges;
  final int asn;
  final int keepaliveInterval;

  /// Creates a new [GetRoutersRouterBgp].
  /// [advertiseMode] Required.
  /// [advertisedGroups] Required.
  /// [advertisedIpRanges] Required.
  /// [asn] Required.
  /// [keepaliveInterval] Required.
  GetRoutersRouterBgp({
    required this.advertiseMode,
    required this.advertisedGroups,
    required this.advertisedIpRanges,
    required this.asn,
    required this.keepaliveInterval,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'advertiseMode': advertiseMode,
      'advertisedGroups': advertisedGroups,
      'advertisedIpRanges': pulumi.Input.encodeList<GetRoutersRouterBgpAdvertisedIpRange, Map<String, dynamic>>(advertisedIpRanges, (value) => value.toMap()),
      'asn': asn,
      'keepaliveInterval': keepaliveInterval,
    };
  }

  factory GetRoutersRouterBgp.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterBgp(
      advertiseMode: map['advertiseMode'] as String,
      advertisedGroups: (map['advertisedGroups'] as List).cast<String>(),
      advertisedIpRanges: pulumi.Input.decodeList<GetRoutersRouterBgpAdvertisedIpRange>(map['advertisedIpRanges'], (value) => GetRoutersRouterBgpAdvertisedIpRange.fromMap((value as Map).cast<String, dynamic>())),
      asn: map['asn'] as int,
      keepaliveInterval: map['keepaliveInterval'] as int,
    );
  }
}

