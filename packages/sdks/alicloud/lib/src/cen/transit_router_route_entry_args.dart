// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_router_route_entry_transit_router_route_entry_args_doc}
/// The set of arguments for TransitRouterRouteEntry.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_router_route_entry_transit_router_route_entry_args_doc}
class TransitRouterRouteEntryArgs {
  /// The dry run.
  ///
  /// > **NOTE:** If transit_router_route_entry_next_hop_type is `Attachment`, transit_router_route_entry_next_hop_id is required.
  /// If transit_router_route_entry_next_hop_type is `BlackHole`, transit_router_route_entry_next_hop_id cannot be filled.
  final pulumi.Input<bool>? dryRun;
  /// The description of the transit router route entry.
  final pulumi.Input<String>? transitRouterRouteEntryDescription;
  /// The CIDR of the transit router route entry.
  final pulumi.Input<String> transitRouterRouteEntryDestinationCidrBlock;
  /// The name of the transit router route entry.
  final pulumi.Input<String>? transitRouterRouteEntryName;
  /// The ID of the transit router route entry next hop.
  final pulumi.Input<String>? transitRouterRouteEntryNextHopId;
  /// The Type of the transit router route entry next hop,Valid values `Attachment` and `BlackHole`.
  final pulumi.Input<String> transitRouterRouteEntryNextHopType;
  /// The ID of the transit router route table.
  final pulumi.Input<String> transitRouterRouteTableId;

  /// Creates a new [TransitRouterRouteEntryArgs].
  /// [dryRun] The dry run.
  /// [transitRouterRouteEntryDescription] The description of the transit router route entry.
  /// [transitRouterRouteEntryDestinationCidrBlock] The CIDR of the transit router route entry.
  /// [transitRouterRouteEntryName] The name of the transit router route entry.
  /// [transitRouterRouteEntryNextHopId] The ID of the transit router route entry next hop.
  /// [transitRouterRouteEntryNextHopType] The Type of the transit router route entry next hop,Valid values `Attachment` and `BlackHole`.
  /// [transitRouterRouteTableId] The ID of the transit router route table.
  TransitRouterRouteEntryArgs({
    pulumi.Output<bool>? dryRun,
    pulumi.Output<String>? transitRouterRouteEntryDescription,
    required pulumi.Output<String> transitRouterRouteEntryDestinationCidrBlock,
    pulumi.Output<String>? transitRouterRouteEntryName,
    pulumi.Output<String>? transitRouterRouteEntryNextHopId,
    required pulumi.Output<String> transitRouterRouteEntryNextHopType,
    required pulumi.Output<String> transitRouterRouteTableId,
  }) :
      dryRun = pulumi.Input.asOptionalInput<bool>(dryRun),
      transitRouterRouteEntryDescription = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryDescription),
      transitRouterRouteEntryDestinationCidrBlock = pulumi.Input.asInput<String>(transitRouterRouteEntryDestinationCidrBlock),
      transitRouterRouteEntryName = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryName),
      transitRouterRouteEntryNextHopId = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryNextHopId),
      transitRouterRouteEntryNextHopType = pulumi.Input.asInput<String>(transitRouterRouteEntryNextHopType),
      transitRouterRouteTableId = pulumi.Input.asInput<String>(transitRouterRouteTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'dryRun': ?dryRun,
      'transitRouterRouteEntryDescription': ?transitRouterRouteEntryDescription,
      'transitRouterRouteEntryDestinationCidrBlock': transitRouterRouteEntryDestinationCidrBlock,
      'transitRouterRouteEntryName': ?transitRouterRouteEntryName,
      'transitRouterRouteEntryNextHopId': ?transitRouterRouteEntryNextHopId,
      'transitRouterRouteEntryNextHopType': transitRouterRouteEntryNextHopType,
      'transitRouterRouteTableId': transitRouterRouteTableId,
    };
  }

  factory TransitRouterRouteEntryArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouterRouteEntryArgs(
      dryRun: map['dryRun'] == null ? null : pulumi.Output.create<bool>(map['dryRun'] as bool),
      transitRouterRouteEntryDescription: map['transitRouterRouteEntryDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryDescription'] as String),
      transitRouterRouteEntryDestinationCidrBlock: pulumi.Output.create<String>(map['transitRouterRouteEntryDestinationCidrBlock'] as String),
      transitRouterRouteEntryName: map['transitRouterRouteEntryName'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryName'] as String),
      transitRouterRouteEntryNextHopId: map['transitRouterRouteEntryNextHopId'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryNextHopId'] as String),
      transitRouterRouteEntryNextHopType: pulumi.Output.create<String>(map['transitRouterRouteEntryNextHopType'] as String),
      transitRouterRouteTableId: pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

