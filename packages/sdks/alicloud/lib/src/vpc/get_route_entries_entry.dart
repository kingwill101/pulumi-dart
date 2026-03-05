// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteEntriesEntry {
  /// The destination CIDR block of the route entry.
  final pulumi.Input<String> cidrBlock;
  /// The instance ID of the next hop.
  final pulumi.Input<String> instanceId;
  /// The type of the next hop.
  final pulumi.Input<String> nextHopType;
  /// The ID of the router table to which the route entry belongs.
  final pulumi.Input<String> routeTableId;
  /// The status of the route entry.
  final pulumi.Input<String> status;
  /// The type of the route entry.
  final pulumi.Input<String> type;

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
      cidrBlock: pulumi.Input.fromValue(map['cidrBlock'] as String),
      instanceId: pulumi.Input.fromValue(map['instanceId'] as String),
      nextHopType: pulumi.Input.fromValue(map['nextHopType'] as String),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      type: pulumi.Input.fromValue(map['type'] as String),
    );
  }
}

