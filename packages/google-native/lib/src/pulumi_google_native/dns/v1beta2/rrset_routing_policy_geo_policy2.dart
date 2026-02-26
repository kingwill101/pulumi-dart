// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'rrset_routing_policy_geo_policy_geo_policy_item2.dart';

/// Configures a RRSetRoutingPolicy that routes based on the geo location of the querying user.
class RRSetRoutingPolicyGeoPolicy2 {
  /// Without fencing, if health check fails for all configured items in the current geo bucket, we failover to the next nearest geo bucket. With fencing, if health checking is enabled, as long as some targets in the current geo bucket are healthy, we return only the healthy targets. However, if all targets are unhealthy, we don't failover to the next nearest bucket; instead, we return all the items in the current bucket even when all targets are unhealthy.
  final bool? enableFencing;

  /// The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
  final List<RRSetRoutingPolicyGeoPolicyGeoPolicyItem2>? items;
  final String? kind;

  RRSetRoutingPolicyGeoPolicy2({
    this.enableFencing,
    this.items,
    this.kind,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final enableFencingValue = enableFencing;
    if (enableFencingValue != null) {
      map['enableFencing'] = enableFencingValue;
    }
    final itemsValue = items;
    if (itemsValue != null) {
      map['items'] = Input.encodeList<RRSetRoutingPolicyGeoPolicyGeoPolicyItem2,
          Map<String, dynamic>>(itemsValue, (value) => value.toMap());
    }
    final kindValue = kind;
    if (kindValue != null) {
      map['kind'] = kindValue;
    }
    return map;
  }

  factory RRSetRoutingPolicyGeoPolicy2.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicy2(
      enableFencing:
          map['enableFencing'] == null ? null : map['enableFencing'] as bool,
      items: map['items'] == null
          ? null
          : Input.decodeList<RRSetRoutingPolicyGeoPolicyGeoPolicyItem2>(
              map['items'],
              (value) => RRSetRoutingPolicyGeoPolicyGeoPolicyItem2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
