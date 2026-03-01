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
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouterRouteEntryDescription,
    pulumi.Output<String>? transitRouterRouteEntryDestinationCidrBlock,
    pulumi.Output<String>? transitRouterRouteEntryId,
    pulumi.Output<String>? transitRouterRouteEntryName,
    pulumi.Output<String>? transitRouterRouteEntryNextHopId,
    pulumi.Output<String>? transitRouterRouteEntryNextHopType,
    pulumi.Output<String>? transitRouterRouteTableId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterRouteEntryDescription = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryDescription),
      transitRouterRouteEntryDestinationCidrBlock = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryDestinationCidrBlock),
      transitRouterRouteEntryId = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryId),
      transitRouterRouteEntryName = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryName),
      transitRouterRouteEntryNextHopId = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryNextHopId),
      transitRouterRouteEntryNextHopType = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryNextHopType),
      transitRouterRouteTableId = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableId);

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
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterRouteEntryDescription: map['transitRouterRouteEntryDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryDescription'] as String),
      transitRouterRouteEntryDestinationCidrBlock: map['transitRouterRouteEntryDestinationCidrBlock'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryDestinationCidrBlock'] as String),
      transitRouterRouteEntryId: map['transitRouterRouteEntryId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryId'] as String),
      transitRouterRouteEntryName: map['transitRouterRouteEntryName'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryName'] as String),
      transitRouterRouteEntryNextHopId: map['transitRouterRouteEntryNextHopId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryNextHopId'] as String),
      transitRouterRouteEntryNextHopType: map['transitRouterRouteEntryNextHopType'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryNextHopType'] as String),
      transitRouterRouteTableId: map['transitRouterRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

