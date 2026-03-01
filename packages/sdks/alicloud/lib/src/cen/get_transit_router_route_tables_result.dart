// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_transit_router_route_tables_table.dart';

/// Result data returned by getTransitRouterRouteTables.
class GetTransitRouterRouteTablesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;
  final List<String> ids;
  final String? nameRegex;
  /// A list of Transit Router Route Table names.
  final List<String> names;
  final String? outputFile;
  /// The status of the route table.
  final String? status;
  /// A list of Transit Router Route Tables. Each element contains the following attributes:
  final List<GetTransitRouterRouteTablesTable> tables;
  final String transitRouterId;
  final List<String>? transitRouterRouteTableIds;
  final List<String>? transitRouterRouteTableNames;
  final String? transitRouterRouteTableStatus;
  /// The type of the route table.
  final String? transitRouterRouteTableType;

  /// Creates a new [GetTransitRouterRouteTablesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] Required.
  /// [nameRegex] Optional.
  /// [names] A list of Transit Router Route Table names.
  /// [outputFile] Optional.
  /// [status] The status of the route table.
  /// [tables] A list of Transit Router Route Tables. Each element contains the following attributes:
  /// [transitRouterId] Required.
  /// [transitRouterRouteTableIds] Optional.
  /// [transitRouterRouteTableNames] Optional.
  /// [transitRouterRouteTableStatus] Optional.
  /// [transitRouterRouteTableType] The type of the route table.
  GetTransitRouterRouteTablesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.status,
    required this.tables,
    required this.transitRouterId,
    this.transitRouterRouteTableIds,
    this.transitRouterRouteTableNames,
    this.transitRouterRouteTableStatus,
    this.transitRouterRouteTableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'status': ?status,
      'tables': pulumi.Input.encodeList<GetTransitRouterRouteTablesTable, Map<String, dynamic>>(tables, (value) => value.toMap()),
      'transitRouterId': transitRouterId,
      'transitRouterRouteTableIds': ?transitRouterRouteTableIds,
      'transitRouterRouteTableNames': ?transitRouterRouteTableNames,
      'transitRouterRouteTableStatus': ?transitRouterRouteTableStatus,
      'transitRouterRouteTableType': ?transitRouterRouteTableType,
    };
  }

  factory GetTransitRouterRouteTablesResult.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTablesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      names: (map['names'] as List).cast<String>(),
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tables: pulumi.Input.decodeList<GetTransitRouterRouteTablesTable>(map['tables'], (value) => GetTransitRouterRouteTablesTable.fromMap((value as Map).cast<String, dynamic>())),
      transitRouterId: map['transitRouterId'] as String,
      transitRouterRouteTableIds: map['transitRouterRouteTableIds'] == null ? null : (map['transitRouterRouteTableIds'] as List).cast<String>(),
      transitRouterRouteTableNames: map['transitRouterRouteTableNames'] == null ? null : (map['transitRouterRouteTableNames'] as List).cast<String>(),
      transitRouterRouteTableStatus: map['transitRouterRouteTableStatus'] == null ? null : map['transitRouterRouteTableStatus'] as String,
      transitRouterRouteTableType: map['transitRouterRouteTableType'] == null ? null : map['transitRouterRouteTableType'] as String,
    );
  }
}

