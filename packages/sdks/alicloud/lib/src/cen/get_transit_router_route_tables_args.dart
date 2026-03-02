// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_get_transit_router_route_tables_get_transit_router_route_tables_args_doc}
/// Arguments for getTransitRouterRouteTables.
/// {@endtemplate}
/// {@macro pulumi_cen_get_transit_router_route_tables_get_transit_router_route_tables_args_doc}
class GetTransitRouterRouteTablesArgs {
  /// A list of Transit Router Route Table IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter results by Transit Router Route Table name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  /// The status of the route table. Valid values: `Creating`, `Active`, `Deleting`.
  final pulumi.Input<String>? status;
  /// The ID of the Enterprise Edition transit router.
  final pulumi.Input<String> transitRouterId;
  /// A list of ID of the CEN Transit Router Route Table.
  final pulumi.Input<List<String>>? transitRouterRouteTableIds;
  /// A list of name of the CEN Transit Router Route Table.
  final pulumi.Input<List<String>>? transitRouterRouteTableNames;
  /// The status of the route table. Valid values: `Creating`, `Active`, `Deleting`.
  final pulumi.Input<String>? transitRouterRouteTableStatus;
  /// The type of the route table. Valid values: `System`, `Custom`.
  final pulumi.Input<String>? transitRouterRouteTableType;

  /// Creates a new [GetTransitRouterRouteTablesArgs].
  /// [ids] A list of Transit Router Route Table IDs.
  /// [nameRegex] A regex string to filter results by Transit Router Route Table name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [status] The status of the route table. Valid values: `Creating`, `Active`, `Deleting`.
  /// [transitRouterId] The ID of the Enterprise Edition transit router.
  /// [transitRouterRouteTableIds] A list of ID of the CEN Transit Router Route Table.
  /// [transitRouterRouteTableNames] A list of name of the CEN Transit Router Route Table.
  /// [transitRouterRouteTableStatus] The status of the route table. Valid values: `Creating`, `Active`, `Deleting`.
  /// [transitRouterRouteTableType] The type of the route table. Valid values: `System`, `Custom`.
  GetTransitRouterRouteTablesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.status,
    required this.transitRouterId,
    this.transitRouterRouteTableIds,
    this.transitRouterRouteTableNames,
    this.transitRouterRouteTableStatus,
    this.transitRouterRouteTableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'status': ?status,
      'transitRouterId': transitRouterId,
      'transitRouterRouteTableIds': ?transitRouterRouteTableIds,
      'transitRouterRouteTableNames': ?transitRouterRouteTableNames,
      'transitRouterRouteTableStatus': ?transitRouterRouteTableStatus,
      'transitRouterRouteTableType': ?transitRouterRouteTableType,
    };
  }

  factory GetTransitRouterRouteTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTablesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      transitRouterId: (map['transitRouterId'] as String).input(),
      transitRouterRouteTableIds: map['transitRouterRouteTableIds'] == null ? null : ((map['transitRouterRouteTableIds'] as List).cast<String>()).input(),
      transitRouterRouteTableNames: map['transitRouterRouteTableNames'] == null ? null : ((map['transitRouterRouteTableNames'] as List).cast<String>()).input(),
      transitRouterRouteTableStatus: map['transitRouterRouteTableStatus'] == null ? null : (map['transitRouterRouteTableStatus'] as String).input(),
      transitRouterRouteTableType: map['transitRouterRouteTableType'] == null ? null : (map['transitRouterRouteTableType'] as String).input(),
    );
  }
}

