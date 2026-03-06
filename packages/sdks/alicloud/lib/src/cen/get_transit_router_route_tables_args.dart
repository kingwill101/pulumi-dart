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
  const GetTransitRouterRouteTablesArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterId: pulumi.Input.fromValue(map['transitRouterId'] as String),
      transitRouterRouteTableIds: (() { final guardedValue = map['transitRouterRouteTableIds']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitRouterRouteTableNames: (() { final guardedValue = map['transitRouterRouteTableNames']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitRouterRouteTableStatus: (() { final guardedValue = map['transitRouterRouteTableStatus']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouterRouteTableType: (() { final guardedValue = map['transitRouterRouteTableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

