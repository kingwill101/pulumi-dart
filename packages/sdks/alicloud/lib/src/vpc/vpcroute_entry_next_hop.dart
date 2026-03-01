// ignore_for_file: unused_element, unnecessary_cast

import 'vpcroute_entry_next_hop_next_hop_related_info.dart';

class VPCRouteEntryNextHop {
  /// Whether the route is available.
  final int? enabled;
  /// The region of the next instance.
  final String? nextHopRegionId;
  /// Next hop information.
  final VPCRouteEntryNextHopNextHopRelatedInfo? nextHopRelatedInfo;
  /// ID of next hop
  final String? nexthopId;
  /// type of next hop
  final String? nexthopType;
  /// The weight of the route entry.
  final int? weight;

  /// Creates a new [VPCRouteEntryNextHop].
  /// [enabled] Whether the route is available.
  /// [nextHopRegionId] The region of the next instance.
  /// [nextHopRelatedInfo] Next hop information.
  /// [nexthopId] ID of next hop
  /// [nexthopType] type of next hop
  /// [weight] The weight of the route entry.
  VPCRouteEntryNextHop({
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
      'nextHopRelatedInfo': ?nextHopRelatedInfo == null ? null : nextHopRelatedInfo!.toMap(),
      'nexthopId': ?nexthopId,
      'nexthopType': ?nexthopType,
      'weight': ?weight,
    };
  }

  factory VPCRouteEntryNextHop.fromMap(Map<String, dynamic> map) {
    return VPCRouteEntryNextHop(
      enabled: map['enabled'] == null ? null : map['enabled'] as int,
      nextHopRegionId: map['nextHopRegionId'] == null ? null : map['nextHopRegionId'] as String,
      nextHopRelatedInfo: map['nextHopRelatedInfo'] == null ? null : VPCRouteEntryNextHopNextHopRelatedInfo.fromMap((map['nextHopRelatedInfo'] as Map).cast<String, dynamic>()),
      nexthopId: map['nexthopId'] == null ? null : map['nexthopId'] as String,
      nexthopType: map['nexthopType'] == null ? null : map['nexthopType'] as String,
      weight: map['weight'] == null ? null : map['weight'] as int,
    );
  }
}

