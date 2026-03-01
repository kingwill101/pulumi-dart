// ignore_for_file: unused_element, unnecessary_cast


class GetRegionRouteEntriesEntry {
  /// The destination CIDR block of the route entry.
  final String cidrBlock;
  /// ID of the next hop.
  final String nextHopId;
  /// ID of the region where the next hop is located.
  final String nextHopRegionId;
  /// Type of the next hop.
  final String nextHopType;
  /// Type of the route entry.
  final String type;

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
      cidrBlock: map['cidrBlock'] as String,
      nextHopId: map['nextHopId'] as String,
      nextHopRegionId: map['nextHopRegionId'] as String,
      nextHopType: map['nextHopType'] as String,
      type: map['type'] as String,
    );
  }
}

