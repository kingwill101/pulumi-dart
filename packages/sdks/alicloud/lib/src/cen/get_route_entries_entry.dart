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
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      conflicts: pulumi.Input.fromValue(pulumi.Input.decodeList<GetRouteEntriesEntryConflict>(map['conflicts']!, (value) => GetRouteEntriesEntryConflict.fromMap((value as Map).cast<String, dynamic>()))),
      nextHopId: pulumi.Input.fromValue(map['nextHopId'] as String),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
      operationalMode: pulumi.Input.fromValue(map['operationalMode'] as bool),
      publishStatus: pulumi.Input.fromValue(map['publishStatus'] as String),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      routeType: pulumi.Input.fromValue(map['routeType'] as String),
    );
  }
}

