// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRegionRouteEntriesEntry {
  /// The destination CIDR block of the route entry.
  final pulumi.Input<String> cidrBlock;

  /// ID of the next hop.
  final pulumi.Input<String> nextHopId;

  /// ID of the region where the next hop is located.
  final pulumi.Input<String> nextHopRegionId;

  /// Type of the next hop.
  final pulumi.Input<String> nextHopType;

  /// Type of the route entry.
  final pulumi.Input<String> type;

  /// Creates a new [GetRegionRouteEntriesEntry].
  /// [cidrBlock] The destination CIDR block of the route entry.
  /// [nextHopId] ID of the next hop.
  /// [nextHopRegionId] ID of the region where the next hop is located.
  /// [nextHopType] Type of the next hop.
  /// [type] Type of the route entry.
  GetRegionRouteEntriesEntry({
    required this.cidrBlock,
    required this.nextHopId,
    required this.nextHopRegionId,
    required this.nextHopType,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'nextHopId': nextHopId,
      'nextHopRegionId': nextHopRegionId,
      'nextHopType': nextHopType,
      'type': type,
    };
  }

  factory GetRegionRouteEntriesEntry.fromMap(Map<String, dynamic> map) {
    return GetRegionRouteEntriesEntry(
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      nextHopId: pulumi.Input.fromValue(map['nextHopId'] as String),
      nextHopRegionId: pulumi.Input.fromValue(map['nextHopRegionId'] as String),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}
