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
    bool? dryRun,
    String? transitRouterRouteEntryDescription,
    required String transitRouterRouteEntryDestinationCidrBlock,
    String? transitRouterRouteEntryName,
    String? transitRouterRouteEntryNextHopId,
    required String transitRouterRouteEntryNextHopType,
    required String transitRouterRouteTableId,
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
      dryRun: map['dryRun'] == null ? null : map['dryRun'] as bool,
      transitRouterRouteEntryDescription: map['transitRouterRouteEntryDescription'] == null ? null : map['transitRouterRouteEntryDescription'] as String,
      transitRouterRouteEntryDestinationCidrBlock: map['transitRouterRouteEntryDestinationCidrBlock'] as String,
      transitRouterRouteEntryName: map['transitRouterRouteEntryName'] == null ? null : map['transitRouterRouteEntryName'] as String,
      transitRouterRouteEntryNextHopId: map['transitRouterRouteEntryNextHopId'] == null ? null : map['transitRouterRouteEntryNextHopId'] as String,
      transitRouterRouteEntryNextHopType: map['transitRouterRouteEntryNextHopType'] as String,
      transitRouterRouteTableId: map['transitRouterRouteTableId'] as String,
    );
  }
}

