// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterRouteEntriesEntry {
  final String id;
  final String status;
  final String transitRouterRouteEntryDescription;
  /// The target network segment of the route entry.
  final String transitRouterRouteEntryDestinationCidrBlock;
  final String transitRouterRouteEntryId;
  final String transitRouterRouteEntryName;
  /// ID of the next hop.
  final String transitRouterRouteEntryNextHopId;
  /// Type of the next hop.
  final String transitRouterRouteEntryNextHopType;
  /// Type of the route entry.
  final String transitRouterRouteEntryType;

  /// Creates a new [GetTransitRouterRouteEntriesEntry].
  /// [id] Required.
  /// [status] Required.
  /// [transitRouterRouteEntryDescription] Required.
  /// [transitRouterRouteEntryDestinationCidrBlock] The target network segment of the route entry.
  /// [transitRouterRouteEntryId] Required.
  /// [transitRouterRouteEntryName] Required.
  /// [transitRouterRouteEntryNextHopId] ID of the next hop.
  /// [transitRouterRouteEntryNextHopType] Type of the next hop.
  /// [transitRouterRouteEntryType] Type of the route entry.
  GetTransitRouterRouteEntriesEntry({
    required this.id,
    required this.status,
    required this.transitRouterRouteEntryDescription,
    required this.transitRouterRouteEntryDestinationCidrBlock,
    required this.transitRouterRouteEntryId,
    required this.transitRouterRouteEntryName,
    required this.transitRouterRouteEntryNextHopId,
    required this.transitRouterRouteEntryNextHopType,
    required this.transitRouterRouteEntryType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status,
      'transitRouterRouteEntryDescription': transitRouterRouteEntryDescription,
      'transitRouterRouteEntryDestinationCidrBlock': transitRouterRouteEntryDestinationCidrBlock,
      'transitRouterRouteEntryId': transitRouterRouteEntryId,
      'transitRouterRouteEntryName': transitRouterRouteEntryName,
      'transitRouterRouteEntryNextHopId': transitRouterRouteEntryNextHopId,
      'transitRouterRouteEntryNextHopType': transitRouterRouteEntryNextHopType,
      'transitRouterRouteEntryType': transitRouterRouteEntryType,
    };
  }

  factory GetTransitRouterRouteEntriesEntry.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteEntriesEntry(
      id: map['id'] as String,
      status: map['status'] as String,
      transitRouterRouteEntryDescription: map['transitRouterRouteEntryDescription'] as String,
      transitRouterRouteEntryDestinationCidrBlock: map['transitRouterRouteEntryDestinationCidrBlock'] as String,
      transitRouterRouteEntryId: map['transitRouterRouteEntryId'] as String,
      transitRouterRouteEntryName: map['transitRouterRouteEntryName'] as String,
      transitRouterRouteEntryNextHopId: map['transitRouterRouteEntryNextHopId'] as String,
      transitRouterRouteEntryNextHopType: map['transitRouterRouteEntryNextHopType'] as String,
      transitRouterRouteEntryType: map['transitRouterRouteEntryType'] as String,
    );
  }
}

