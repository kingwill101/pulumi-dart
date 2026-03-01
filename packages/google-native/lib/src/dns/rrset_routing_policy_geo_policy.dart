// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'rrset_routing_policy_geo_policy_geo_policy_item.dart';

/// Configures a RRSetRoutingPolicy that routes based on the geo location of the querying user.
class RRSetRoutingPolicyGeoPolicy {
  /// Without fencing, if health check fails for all configured items in the current geo bucket, we failover to the next nearest geo bucket. With fencing, if health checking is enabled, as long as some targets in the current geo bucket are healthy, we return only the healthy targets. However, if all targets are unhealthy, we don't failover to the next nearest bucket; instead, we return all the items in the current bucket even when all targets are unhealthy.
  final bool? enableFencing;

  /// The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
  final List<RRSetRoutingPolicyGeoPolicyGeoPolicyItem>? items;
  final String? kind;

  /// Creates a new [RRSetRoutingPolicyGeoPolicy].
  /// [enableFencing] Without fencing, if health check fails for all configured items in the current geo bucket, we failover to the next nearest geo bucket. With fencing, if health checking is enabled, as long as some targets in the current geo bucket are healthy, we return only the healthy targets. However, if all targets are unhealthy, we don't failover to the next nearest bucket; instead, we return all the items in the current bucket even when all targets are unhealthy.
  /// [items] The primary geo routing configuration. If there are multiple items with the same location, an error is returned instead.
  /// [kind] Optional.
  RRSetRoutingPolicyGeoPolicy({this.enableFencing, this.items, this.kind});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enableFencing': ?enableFencing,
      'items': ?items == null
          ? null
          : pulumi.Input.encodeList<
              RRSetRoutingPolicyGeoPolicyGeoPolicyItem,
              Map<String, dynamic>
            >(items!, (value) => value.toMap()),
      'kind': ?kind,
    };
  }

  factory RRSetRoutingPolicyGeoPolicy.fromMap(Map<String, dynamic> map) {
    return RRSetRoutingPolicyGeoPolicy(
      enableFencing: map['enableFencing'] == null
          ? null
          : map['enableFencing'] as bool,
      items: map['items'] == null
          ? null
          : pulumi.Input.decodeList<RRSetRoutingPolicyGeoPolicyGeoPolicyItem>(
              map['items'],
              (value) => RRSetRoutingPolicyGeoPolicyGeoPolicyItem.fromMap(
                (value as Map).cast<String, dynamic>(),
              ),
            ),
      kind: map['kind'] == null ? null : map['kind'] as String,
    );
  }
}
