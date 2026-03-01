// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_entries_entry_conflict.dart';

class GetRouteEntriesEntry {
  /// The destination CIDR block of the route entry to query.
  final String cidrBlock;
  /// A list of conflicted Route Entries. Each element contains the following attributes:
  final List<GetRouteEntriesEntryConflict> conflicts;
  /// ID of the next hop.
  final String nextHopId;
  /// Type of the next hop, including "Instance", "HaVip" and "RouterInterface".
  final String nextHopType;
  /// Whether to allow the route entry to be published or removed to or from CEN.
  final bool operationalMode;
  /// The publish status of the route entry in CEN, including "Published" and "NonPublished".
  final String publishStatus;
  /// ID of the route table of the VPC or VBR.
  final String routeTableId;
  /// Type of the route entry, including "System", "Custom" and "BGP".
  final String routeType;

  /// Creates a new [GetRouteEntriesEntry].
  /// [cidrBlock] The destination CIDR block of the route entry to query.
  /// [conflicts] A list of conflicted Route Entries. Each element contains the following attributes:
  /// [nextHopId] ID of the next hop.
  /// [nextHopType] Type of the next hop, including "Instance", "HaVip" and "RouterInterface".
  /// [operationalMode] Whether to allow the route entry to be published or removed to or from CEN.
  /// [publishStatus] The publish status of the route entry in CEN, including "Published" and "NonPublished".
  /// [routeTableId] ID of the route table of the VPC or VBR.
  /// [routeType] Type of the route entry, including "System", "Custom" and "BGP".
  GetRouteEntriesEntry({
    required this.cidrBlock,
    required this.conflicts,
    required this.nextHopId,
    required this.nextHopType,
    required this.operationalMode,
    required this.publishStatus,
    required this.routeTableId,
    required this.routeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'cidrBlock': cidrBlock,
      'conflicts': pulumi.Input.encodeList<GetRouteEntriesEntryConflict, Map<String, dynamic>>(conflicts, (value) => value.toMap()),
      'nextHopId': nextHopId,
      'nextHopType': nextHopType,
      'operationalMode': operationalMode,
      'publishStatus': publishStatus,
      'routeTableId': routeTableId,
      'routeType': routeType,
    };
  }

  factory GetRouteEntriesEntry.fromMap(Map<String, dynamic> map) {
    return GetRouteEntriesEntry(
      cidrBlock: map['cidrBlock'] as String,
      conflicts: pulumi.Input.decodeList<GetRouteEntriesEntryConflict>(map['conflicts'], (value) => GetRouteEntriesEntryConflict.fromMap((value as Map).cast<String, dynamic>())),
      nextHopId: map['nextHopId'] as String,
      nextHopType: map['nextHopType'] as String,
      operationalMode: map['operationalMode'] as bool,
      publishStatus: map['publishStatus'] as String,
      routeTableId: map['routeTableId'] as String,
      routeType: map['routeType'] as String,
    );
  }
}

