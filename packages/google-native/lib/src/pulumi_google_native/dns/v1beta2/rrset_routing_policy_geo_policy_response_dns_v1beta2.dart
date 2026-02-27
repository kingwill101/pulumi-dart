// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy_geo_policy_item_response_dns_v1beta2.dart';

/// Configures a RRSetRoutingPolicy that routes based on the geo location of the querying user.
class RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2 {
  /// Without fencing, if health check fails for all configured items in the current geo bucket, we failover to the next nearest geo bucket. With fencing, if health checking is enabled, as long as some targets in the current geo bucket are healthy, we return only the healthy targets. However, if all targets are unhealthy, we don't failover to the next nearest bucket; instead, we return all the items in the current bucket even when all targets are unhealthy.
  final bool enableFencing;

  /// The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
  final List<RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponseDnsV1beta2> items;
  final String kind;

  RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2({
    required this.enableFencing,
    required this.items,
    required this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['enableFencing'] = enableFencing;
    map['items'] = pulumi.Input.encodeList<
        RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponseDnsV1beta2,
        Map<String, dynamic>>(items, (value) => value.toMap());
    map['kind'] = kind;
    return map;
  }

  factory RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2.fromMap(
      Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicyResponseDnsV1beta2(
      enableFencing: map['enableFencing'] as bool,
      items: pulumi.Input.decodeList<
              RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponseDnsV1beta2>(
          map['items'],
          (value) => RRSetRoutingPolicyGeoPolicyGeoPolicyItemResponseDnsV1beta2
              .fromMap((value as Map).cast<String, dynamic>())),
      kind: map['kind'] as String,
    );
  }
}
