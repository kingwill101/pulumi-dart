// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_entries_entry_conflict.dart';

class GetRouteEntriesEntry {
  /// The destination CIDR block of the route entry to query.
  final pulumi.Input<String> cidrBlock;
  /// A list of conflicted Route Entries. Each element contains the following attributes:
  final pulumi.Input<List<GetRouteEntriesEntryConflict>> conflicts;
  /// ID of the next hop.
  final pulumi.Input<String> nextHopId;
  /// Type of the next hop, including "Instance", "HaVip" and "RouterInterface".
  final pulumi.Input<String> nextHopType;
  /// Whether to allow the route entry to be published or removed to or from CEN.
  final pulumi.Input<bool> operationalMode;
  /// The publish status of the route entry in CEN, including "Published" and "NonPublished".
  final pulumi.Input<String> publishStatus;
  /// ID of the route table of the VPC or VBR.
  final pulumi.Input<String> routeTableId;
  /// Type of the route entry, including "System", "Custom" and "BGP".
  final pulumi.Input<String> routeType;

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
      'conflicts': pulumi.Input.mapInputValue<List<GetRouteEntriesEntryConflict>, List<Map<String, dynamic>>>(conflicts, (value) => pulumi.Input.encodeList<GetRouteEntriesEntryConflict, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      cidrBlock: (map['cidrBlock'] as String).input(),
      conflicts: (pulumi.Input.decodeList<GetRouteEntriesEntryConflict>(map['conflicts'], (value) => GetRouteEntriesEntryConflict.fromMap((value as Map).cast<String, dynamic>()))).input(),
      nextHopId: (map['nextHopId'] as String).input(),
      nextHopType: (map['nextHopType'] as String).input(),
      operationalMode: (map['operationalMode'] as bool).input(),
      publishStatus: (map['publishStatus'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
      routeType: (map['routeType'] as String).input(),
    );
  }
}

