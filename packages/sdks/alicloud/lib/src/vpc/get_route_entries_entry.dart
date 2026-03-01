// ignore_for_file: unused_element, unnecessary_cast


class GetRouteEntriesEntry {
  /// The destination CIDR block of the route entry.
  final String cidrBlock;
  /// The instance ID of the next hop.
  final String instanceId;
  /// The type of the next hop.
  final String nextHopType;
  /// The ID of the router table to which the route entry belongs.
  final String routeTableId;
  /// The status of the route entry.
  final String status;
  /// The type of the route entry.
  final String type;

  /// Creates a new [GetRouteEntriesEntry].
  /// [cidrBlock] The destination CIDR block of the route entry.
  /// [instanceId] The instance ID of the next hop.
  /// [nextHopType] The type of the next hop.
  /// [routeTableId] The ID of the router table to which the route entry belongs.
  /// [status] The status of the route entry.
  /// [type] The type of the route entry.
  GetRouteEntriesEntry({
    required this.cidrBlock,
    required this.instanceId,
    required this.nextHopType,
    required this.routeTableId,
    required this.status,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'instanceId': instanceId,
      'nextHopType': nextHopType,
      'routeTableId': routeTableId,
      'status': status,
      'type': type,
    };
  }

  factory GetRouteEntriesEntry.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesEntry(
      cidrBlock: map['cidrBlock'] as String,
      instanceId: map['instanceId'] as String,
      nextHopType: map['nextHopType'] as String,
      routeTableId: map['routeTableId'] as String,
      status: map['status'] as String,
      type: map['type'] as String,
    );
  }
}

