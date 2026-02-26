// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../get_routers_router_bgp_advertised_ip_range/get_routers_router_bgp_advertised_ip_range.dart';

class GetRoutersRouterBgp {
  final String advertiseMode;
  final List<String> advertisedGroups;
  final List<GetRoutersRouterBgpAdvertisedIpRange> advertisedIpRanges;
  final int asn;
  final int keepaliveInterval;

  GetRoutersRouterBgp({
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
        GetRoutersRouterBgpAdvertisedIpRange,
        Map<String, dynamic>>(advertisedIpRanges, (value) => value.toMap());
    map['asn'] = asn;
    map['keepaliveInterval'] = keepaliveInterval;
    return map;
  }

  factory GetRoutersRouterBgp.fromMap(Map<String, dynamic> map) {
    return GetRoutersRouterBgp(
      advertiseMode: map['advertiseMode'] as String,
      advertisedGroups: (map['advertisedGroups'] as List).cast<String>(),
      advertisedIpRanges:
          Input.decodeList<GetRoutersRouterBgpAdvertisedIpRange>(
              map['advertisedIpRanges'],
              (value) => GetRoutersRouterBgpAdvertisedIpRange.fromMap(
                  (value as Map).cast<String, dynamic>())),
      asn: map['asn'] as int,
      keepaliveInterval: map['keepaliveInterval'] as int,
    );
  }
}
