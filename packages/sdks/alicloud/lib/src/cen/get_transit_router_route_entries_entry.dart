// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterRouteEntriesEntry {
  final pulumi.Input<String> id;
  final pulumi.Input<String> status;
  final pulumi.Input<String> transitRouterRouteEntryDescription;
  /// The target network segment of the route entry.
  final pulumi.Input<String> transitRouterRouteEntryDestinationCidrBlock;
  final pulumi.Input<String> transitRouterRouteEntryId;
  final pulumi.Input<String> transitRouterRouteEntryName;
  /// ID of the next hop.
  final pulumi.Input<String> transitRouterRouteEntryNextHopId;
  /// Type of the next hop.
  final pulumi.Input<String> transitRouterRouteEntryNextHopType;
  /// Type of the route entry.
  final pulumi.Input<String> transitRouterRouteEntryType;

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
  const GetTransitRouterRouteEntriesEntry({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterRouteEntryDescription: pulumi.Input.fromValue(map['transitRouterRouteEntryDescription'] as String),
      transitRouterRouteEntryDestinationCidrBlock: pulumi.Input.fromValue(map['transitRouterRouteEntryDestinationCidrBlock'] as String),
      transitRouterRouteEntryId: pulumi.Input.fromValue(map['transitRouterRouteEntryId'] as String),
      transitRouterRouteEntryName: pulumi.Input.fromValue(map['transitRouterRouteEntryName'] as String),
      transitRouterRouteEntryNextHopId: pulumi.Input.fromValue(map['transitRouterRouteEntryNextHopId'] as String),
      transitRouterRouteEntryNextHopType: pulumi.Input.fromValue(map['transitRouterRouteEntryNextHopType'] as String),
      transitRouterRouteEntryType: pulumi.Input.fromValue(map['transitRouterRouteEntryType'] as String),
    );
  }
}

