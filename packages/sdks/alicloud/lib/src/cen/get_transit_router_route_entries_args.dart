// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_route_entries_get_transit_router_route_entries_args_doc}
/// Arguments for getTransitRouterRouteEntries.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_route_entries_get_transit_router_route_entries_args_doc}
class GetTransitRouterRouteEntriesArgs {
  /// A list of CEN Transit Router Route Entry IDs.
  final pulumi.Input<List<String>>? ids;
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<String>? status;
  /// A list of ID of the cen transit router route entry.
  final pulumi.Input<List<String>>? transitRouterRouteEntryIds;
  /// A list of name of the cen transit router route entry.
  final pulumi.Input<List<String>>? transitRouterRouteEntryNames;
  /// The status of the resource.Valid values `Creating`, `Active` and `Deleting`.
  final pulumi.Input<String>? transitRouterRouteEntryStatus;
  /// ID of the CEN Transit Router Route Table.
  final pulumi.Input<String> transitRouterRouteTableId;

  /// Creates a new [GetTransitRouterRouteEntriesArgs].
  /// [ids] A list of CEN Transit Router Route Entry IDs.
  /// [nameRegex] Optional.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] Optional.
  /// [transitRouterRouteEntryIds] A list of ID of the cen transit router route entry.
  /// [transitRouterRouteEntryNames] A list of name of the cen transit router route entry.
  /// [transitRouterRouteEntryStatus] The status of the resource.Valid values `Creating`, `Active` and `Deleting`.
  /// [transitRouterRouteTableId] ID of the CEN Transit Router Route Table.
  GetTransitRouterRouteEntriesArgs({
    pulumi.Output<List<String>>? ids,
    pulumi.Output<String>? nameRegex,
    pulumi.Output<String>? outputFile,
    pulumi.Output<String>? status,
    pulumi.Output<List<String>>? transitRouterRouteEntryIds,
    pulumi.Output<List<String>>? transitRouterRouteEntryNames,
    pulumi.Output<String>? transitRouterRouteEntryStatus,
    required pulumi.Output<String> transitRouterRouteTableId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterRouteEntryIds = pulumi.Input.asOptionalInput<List<String>>(transitRouterRouteEntryIds),
      transitRouterRouteEntryNames = pulumi.Input.asOptionalInput<List<String>>(transitRouterRouteEntryNames),
      transitRouterRouteEntryStatus = pulumi.Input.asOptionalInput<String>(transitRouterRouteEntryStatus),
      transitRouterRouteTableId = pulumi.Input.asInput<String>(transitRouterRouteTableId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterRouteEntryIds': ?transitRouterRouteEntryIds,
      'transitRouterRouteEntryNames': ?transitRouterRouteEntryNames,
      'transitRouterRouteEntryStatus': ?transitRouterRouteEntryStatus,
      'transitRouterRouteTableId': transitRouterRouteTableId,
    };
  }

  factory GetTransitRouterRouteEntriesArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteEntriesArgs(
      ids: map['ids'] == null ? null : pulumi.Output.create<List<String>>((map['ids'] as List).cast<String>()),
      nameRegex: map['nameRegex'] == null ? null : pulumi.Output.create<String>(map['nameRegex'] as String),
      outputFile: map['outputFile'] == null ? null : pulumi.Output.create<String>(map['outputFile'] as String),
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouterRouteEntryIds: map['transitRouterRouteEntryIds'] == null ? null : pulumi.Output.create<List<String>>((map['transitRouterRouteEntryIds'] as List).cast<String>()),
      transitRouterRouteEntryNames: map['transitRouterRouteEntryNames'] == null ? null : pulumi.Output.create<List<String>>((map['transitRouterRouteEntryNames'] as List).cast<String>()),
      transitRouterRouteEntryStatus: map['transitRouterRouteEntryStatus'] == null ? null : pulumi.Output.create<String>(map['transitRouterRouteEntryStatus'] as String),
      transitRouterRouteTableId: pulumi.Output.create<String>(map['transitRouterRouteTableId'] as String),
    );
  }
}

