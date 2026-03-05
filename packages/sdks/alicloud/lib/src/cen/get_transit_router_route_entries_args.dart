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
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    this.transitRouterRouteEntryIds,
    this.transitRouterRouteEntryNames,
    this.transitRouterRouteEntryStatus,
    required this.transitRouterRouteTableId,
  });

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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteEntryIds: (() { final guardedValue = map['transitRouterRouteEntryIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitRouterRouteEntryNames: (() { final guardedValue = map['transitRouterRouteEntryNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitRouterRouteEntryStatus: (() { final guardedValue = map['transitRouterRouteEntryStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableId: pulumi.Input.fromValue(map['transitRouterRouteTableId'] as String),
    );
  }
}

