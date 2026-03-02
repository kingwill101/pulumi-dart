// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouterRouteEntry resources.
class TransitRouterRouteEntryState {
  /// The dry run.
  ///
  /// > **NOTE:** If transit_router_route_entry_next_hop_type is `Attachment`, transit_router_route_entry_next_hop_id is required.
  /// If transit_router_route_entry_next_hop_type is `BlackHole`, transit_router_route_entry_next_hop_id cannot be filled.
  final pulumi.Input<bool>? dryRun;
  /// The associating status of the Transit Router.
  final pulumi.Input<String>? status;
  /// The description of the transit router route entry.
  final pulumi.Input<String>? transitRouterRouteEntryDescription;
  /// The CIDR of the transit router route entry.
  final pulumi.Input<String>? transitRouterRouteEntryDestinationCidrBlock;
  /// The ID of the route entry.
  final pulumi.Input<String>? transitRouterRouteEntryId;
  /// The name of the transit router route entry.
  final pulumi.Input<String>? transitRouterRouteEntryName;
  /// The ID of the transit router route entry next hop.
  final pulumi.Input<String>? transitRouterRouteEntryNextHopId;
  /// The Type of the transit router route entry next hop,Valid values `Attachment` and `BlackHole`.
  final pulumi.Input<String>? transitRouterRouteEntryNextHopType;
  /// The ID of the transit router route table.
  final pulumi.Input<String>? transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteEntryState].
  /// [dryRun] The dry run.
  /// [status] The associating status of the Transit Router.
  /// [transitRouterRouteEntryDescription] The description of the transit router route entry.
  /// [transitRouterRouteEntryDestinationCidrBlock] The CIDR of the transit router route entry.
  /// [transitRouterRouteEntryId] The ID of the route entry.
  /// [transitRouterRouteEntryName] The name of the transit router route entry.
  /// [transitRouterRouteEntryNextHopId] The ID of the transit router route entry next hop.
  /// [transitRouterRouteEntryNextHopType] The Type of the transit router route entry next hop,Valid values `Attachment` and `BlackHole`.
  /// [transitRouterRouteTableId] The ID of the transit router route table.
  TransitRouterRouteEntryState({
    this.dryRun,
    this.status,
    this.transitRouterRouteEntryDescription,
    this.transitRouterRouteEntryDestinationCidrBlock,
    this.transitRouterRouteEntryId,
    this.transitRouterRouteEntryName,
    this.transitRouterRouteEntryNextHopId,
    this.transitRouterRouteEntryNextHopType,
    this.transitRouterRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'status': ?status,
      'transitRouterRouteEntryDescription': ?transitRouterRouteEntryDescription,
      'transitRouterRouteEntryDestinationCidrBlock': ?transitRouterRouteEntryDestinationCidrBlock,
      'transitRouterRouteEntryId': ?transitRouterRouteEntryId,
      'transitRouterRouteEntryName': ?transitRouterRouteEntryName,
      'transitRouterRouteEntryNextHopId': ?transitRouterRouteEntryNextHopId,
      'transitRouterRouteEntryNextHopType': ?transitRouterRouteEntryNextHopType,
      'transitRouterRouteTableId': ?transitRouterRouteTableId,
    };
  }

  factory TransitRouterRouteEntryState.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteEntryState(
      dryRun: map['dryRun'] == null ? null : (map['dryRun'] as bool).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transitRouterRouteEntryDescription: map['transitRouterRouteEntryDescription'] == null ? null : (map['transitRouterRouteEntryDescription'] as String).input(),
      transitRouterRouteEntryDestinationCidrBlock: map['transitRouterRouteEntryDestinationCidrBlock'] == null ? null : (map['transitRouterRouteEntryDestinationCidrBlock'] as String).input(),
      transitRouterRouteEntryId: map['transitRouterRouteEntryId'] == null ? null : (map['transitRouterRouteEntryId'] as String).input(),
      transitRouterRouteEntryName: map['transitRouterRouteEntryName'] == null ? null : (map['transitRouterRouteEntryName'] as String).input(),
      transitRouterRouteEntryNextHopId: map['transitRouterRouteEntryNextHopId'] == null ? null : (map['transitRouterRouteEntryNextHopId'] as String).input(),
      transitRouterRouteEntryNextHopType: map['transitRouterRouteEntryNextHopType'] == null ? null : (map['transitRouterRouteEntryNextHopType'] as String).input(),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : (map['transitRouterRouteTableId'] as String).input(),
    );
  }
}

