// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_route_tables_table.dart';

/// Result data returned by getRouteTables.
class GetRouteTablesResult {
  /// The provider-assigned unique ID for this managed resource.
  final String id;

  /// (Optional) A list of Route Tables IDs.
  final List<String> ids;
  final String? nameRegex;

  /// A list of Route Tables names.
  final List<String> names;
  final String? outputFile;
  final int? pageNumber;
  final int? pageSize;

  /// The Id of resource group which route tables belongs.
  final String? resourceGroupId;

  /// The route table name.
  final String? routeTableName;

  /// The type of route table.
  final String? routeTableType;

  /// Router Id of the route table.
  final String? routerId;

  /// The route type.
  final String? routerType;

  /// The status of route table.
  final String? status;

  /// A list of Route Tables. Each element contains the following attributes:
  final List<GetRouteTablesTable> tables;

  /// A mapping of tags to assign to the resource.
  final Map<String, String>? tags;
  final int totalCount;

  /// The VPC ID.
  final String? vpcId;

  /// Creates a new [GetRouteTablesResult].
  /// [id] The provider-assigned unique ID for this managed resource.
  /// [ids] (Optional) A list of Route Tables IDs.
  /// [nameRegex] Optional.
  /// [names] A list of Route Tables names.
  /// [outputFile] Optional.
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The Id of resource group which route tables belongs.
  /// [routeTableName] The route table name.
  /// [routeTableType] The type of route table.
  /// [routerId] Router Id of the route table.
  /// [routerType] The route type.
  /// [status] The status of route table.
  /// [tables] A list of Route Tables. Each element contains the following attributes:
  /// [tags] A mapping of tags to assign to the resource.
  /// [totalCount] Required.
  /// [vpcId] The VPC ID.
  GetRouteTablesResult({
    required this.id,
    required this.ids,
    this.nameRegex,
    required this.names,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.routeTableName,
    this.routeTableType,
    this.routerId,
    this.routerType,
    this.status,
    required this.tables,
    this.tags,
    required this.totalCount,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'ids': ids,
      'nameRegex': ?nameRegex,
      'names': names,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'routeTableName': ?routeTableName,
      'routeTableType': ?routeTableType,
      'routerId': ?routerId,
      'routerType': ?routerType,
      'status': ?status,
      'tables':
          pulumi.Input.encodeList<GetRouteTablesTable, Map<String, dynamic>>(
            tables,
            (value) => value.toMap(),
          ),
      'tags': ?tags,
      'totalCount': totalCount,
      'vpcId': ?vpcId,
    };
  }

  factory GetRouteTablesResult.fromMap(Map<String, dynamic> map) {
    return GetRouteTablesResult(
      id: map['id'] as String,
      ids: (map['ids'] as List).cast<String>(),
      nameRegex: (() {
        final guardedValue = map['nameRegex'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      names: (map['names'] as List).cast<String>(),
      outputFile: (() {
        final guardedValue = map['outputFile'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      pageNumber: (() {
        final guardedValue = map['pageNumber'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      pageSize: (() {
        final guardedValue = map['pageSize'];
        if (guardedValue == null) return null;
        return guardedValue as int;
      })(),
      resourceGroupId: (() {
        final guardedValue = map['resourceGroupId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      routeTableName: (() {
        final guardedValue = map['routeTableName'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      routeTableType: (() {
        final guardedValue = map['routeTableType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      routerId: (() {
        final guardedValue = map['routerId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      routerType: (() {
        final guardedValue = map['routerType'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      status: (() {
        final guardedValue = map['status'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
      tables: pulumi.Input.decodeList<GetRouteTablesTable>(
        map['tables']!,
        (value) =>
            GetRouteTablesTable.fromMap((value as Map).cast<String, dynamic>()),
      ),
      tags: (() {
        final guardedValue = map['tags'];
        if (guardedValue == null) return null;
        return (guardedValue as Map).cast<String, String>();
      })(),
      totalCount: map['totalCount'] as int,
      vpcId: (() {
        final guardedValue = map['vpcId'];
        if (guardedValue == null) return null;
        return guardedValue as String;
      })(),
    );
  }
}
