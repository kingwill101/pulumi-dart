// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpcroute_entry_next_hop_next_hop_related_info.dart';

class VPCRouteEntryNextHop {
  /// Whether the route is available.
  final pulumi.Input<int>? enabled;
  /// The region of the next instance.
  final pulumi.Input<String>? nextHopRegionId;
  /// Next hop information.
  final pulumi.Input<VPCRouteEntryNextHopNextHopRelatedInfo>? nextHopRelatedInfo;
  /// ID of next hop
  final pulumi.Input<String>? nexthopId;
  /// type of next hop
  final pulumi.Input<String>? nexthopType;
  /// The weight of the route entry.
  final pulumi.Input<int>? weight;

  /// Creates a new [VPCRouteEntryNextHop].
  /// [enabled] Whether the route is available.
  /// [nextHopRegionId] The region of the next instance.
  /// [nextHopRelatedInfo] Next hop information.
  /// [nexthopId] ID of next hop
  /// [nexthopType] type of next hop
  /// [weight] The weight of the route entry.
  const VPCRouteEntryNextHop({
    this.enabled,
    this.nextHopRegionId,
    this.nextHopRelatedInfo,
    this.nexthopId,
    this.nexthopType,
    this.weight,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'enabled': ?enabled,
      'nextHopRegionId': ?nextHopRegionId,
      'nextHopRelatedInfo': ?pulumi.Input.mapOptionalInputValue<VPCRouteEntryNextHopNextHopRelatedInfo, Map<String, dynamic>>(nextHopRelatedInfo, (value) => value.toMap()),
      'nexthopId': ?nexthopId,
      'nexthopType': ?nexthopType,
      'weight': ?weight,
    };
  }

  factory VPCRouteEntryNextHop.fromMap(Map<String, dynamic> map) {
    return VPCRouteEntryNextHop(
      enabled: (() { final guardedValue = map['enabled']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      nextHopRegionId: (() { final guardedValue = map['nextHopRegionId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nextHopRelatedInfo: (() { final guardedValue = map['nextHopRelatedInfo']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VPCRouteEntryNextHopNextHopRelatedInfo.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      nexthopId: (() { final guardedValue = map['nexthopId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nexthopType: (() { final guardedValue = map['nexthopType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      weight: (() { final guardedValue = map['weight']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
    );
  }
}

