// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_vpc_get_route_tables_get_route_tables_args_doc}
/// Arguments for getRouteTables.
/// {@endtemplate}
/// {@macro pulumi_vpc_get_route_tables_get_route_tables_args_doc}
class GetRouteTablesArgs {
  /// A list of Route Tables IDs.
  final pulumi.Input<List<String>>? ids;
  /// A regex string to filter route tables by name.
  final pulumi.Input<String>? nameRegex;
  /// File name where to save data source results (after running `pulumi preview`).
  final pulumi.Input<String>? outputFile;
  final pulumi.Input<int>? pageNumber;
  final pulumi.Input<int>? pageSize;
  /// The Id of resource group which route tables belongs.
  final pulumi.Input<String>? resourceGroupId;
  /// The route table name.
  final pulumi.Input<String>? routeTableName;
  /// The route table type.
  final pulumi.Input<String>? routeTableType;
  /// The router ID.
  final pulumi.Input<String>? routerId;
  /// The route type of route table. Valid values: `VRouter` and `VBR`.
  final pulumi.Input<String>? routerType;
  /// The status of resource. Valid values: `Available` and `Pending`.
  final pulumi.Input<String>? status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>>? tags;
  /// Vpc id of the route table.
  final pulumi.Input<String>? vpcId;

  /// Creates a new [GetRouteTablesArgs].
  /// [ids] A list of Route Tables IDs.
  /// [nameRegex] A regex string to filter route tables by name.
  /// [outputFile] File name where to save data source results (after running `pulumi preview`).
  /// [pageNumber] Optional.
  /// [pageSize] Optional.
  /// [resourceGroupId] The Id of resource group which route tables belongs.
  /// [routeTableName] The route table name.
  /// [routeTableType] The route table type.
  /// [routerId] The router ID.
  /// [routerType] The route type of route table. Valid values: `VRouter` and `VBR`.
  /// [status] The status of resource. Valid values: `Available` and `Pending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] Vpc id of the route table.
  GetRouteTablesArgs({
    this.ids,
    this.nameRegex,
    this.outputFile,
    this.pageNumber,
    this.pageSize,
    this.resourceGroupId,
    this.routeTableName,
    this.routeTableType,
    this.routerId,
    this.routerType,
    this.status,
    this.tags,
    this.vpcId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ?ids,
      'nameRegex': ?nameRegex,
      'outputFile': ?outputFile,
      'pageNumber': ?pageNumber,
      'pageSize': ?pageSize,
      'resourceGroupId': ?resourceGroupId,
      'routeTableName': ?routeTableName,
      'routeTableType': ?routeTableType,
      'routerId': ?routerId,
      'routerType': ?routerType,
      'status': ?status,
      'tags': ?tags,
      'vpcId': ?vpcId,
    };
  }

  factory GetRouteTablesArgs.fromMap(Map<String, dynamic> map) {
    return GetRouteTablesArgs(
      ids: map['ids'] == null ? null : ((map['ids'] as List).cast<String>()).input(),
      nameRegex: map['nameRegex'] == null ? null : (map['nameRegex'] as String).input(),
      outputFile: map['outputFile'] == null ? null : (map['outputFile'] as String).input(),
      pageNumber: map['pageNumber'] == null ? null : (map['pageNumber'] as int).input(),
      pageSize: map['pageSize'] == null ? null : (map['pageSize'] as int).input(),
      resourceGroupId: map['resourceGroupId'] == null ? null : (map['resourceGroupId'] as String).input(),
      routeTableName: map['routeTableName'] == null ? null : (map['routeTableName'] as String).input(),
      routeTableType: map['routeTableType'] == null ? null : (map['routeTableType'] as String).input(),
      routerId: map['routerId'] == null ? null : (map['routerId'] as String).input(),
      routerType: map['routerType'] == null ? null : (map['routerType'] as String).input(),
      status: map['status'] == null ? null : (map['status'] as String).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: map['vpcId'] == null ? null : (map['vpcId'] as String).input(),
    );
  }
}

