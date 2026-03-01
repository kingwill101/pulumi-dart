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
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    String? status,
    required String transitRouterId,
    List<String>? transitRouterRouteTableIds,
    List<String>? transitRouterRouteTableNames,
    String? transitRouterRouteTableStatus,
    String? transitRouterRouteTableType,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouterId = pulumi.Input.asInput<String>(transitRouterId),
      transitRouterRouteTableIds = pulumi.Input.asOptionalInput<List<String>>(transitRouterRouteTableIds),
      transitRouterRouteTableNames = pulumi.Input.asOptionalInput<List<String>>(transitRouterRouteTableNames),
      transitRouterRouteTableStatus = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableStatus),
      transitRouterRouteTableType = pulumi.Input.asOptionalInput<String>(transitRouterRouteTableType);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      transitRouterId: map['transitRouterId'] as String,
      transitRouterRouteTableIds: map['transitRouterRouteTableIds'] == null ? null : (map['transitRouterRouteTableIds'] as List).cast<String>(),
      transitRouterRouteTableNames: map['transitRouterRouteTableNames'] == null ? null : (map['transitRouterRouteTableNames'] as List).cast<String>(),
      transitRouterRouteTableStatus: map['transitRouterRouteTableStatus'] == null ? null : map['transitRouterRouteTableStatus'] as String,
      transitRouterRouteTableType: map['transitRouterRouteTableType'] == null ? null : map['transitRouterRouteTableType'] as String,
    );
  }
}

