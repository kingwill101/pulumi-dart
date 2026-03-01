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
    List<String>? ids,
    String? nameRegex,
    String? outputFile,
    int? pageNumber,
    int? pageSize,
    String? resourceGroupId,
    String? routeTableName,
    String? routeTableType,
    String? routerId,
    String? routerType,
    String? status,
    Map<String, String>? tags,
    String? vpcId,
  }) :
      ids = pulumi.Input.asOptionalInput<List<String>>(ids),
      nameRegex = pulumi.Input.asOptionalInput<String>(nameRegex),
      outputFile = pulumi.Input.asOptionalInput<String>(outputFile),
      pageNumber = pulumi.Input.asOptionalInput<int>(pageNumber),
      pageSize = pulumi.Input.asOptionalInput<int>(pageSize),
      resourceGroupId = pulumi.Input.asOptionalInput<String>(resourceGroupId),
      routeTableName = pulumi.Input.asOptionalInput<String>(routeTableName),
      routeTableType = pulumi.Input.asOptionalInput<String>(routeTableType),
      routerId = pulumi.Input.asOptionalInput<String>(routerId),
      routerType = pulumi.Input.asOptionalInput<String>(routerType),
      status = pulumi.Input.asOptionalInput<String>(status),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

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
      ids: map['ids'] == null ? null : (map['ids'] as List).cast<String>(),
      nameRegex: map['nameRegex'] == null ? null : map['nameRegex'] as String,
      outputFile: map['outputFile'] == null ? null : map['outputFile'] as String,
      pageNumber: map['pageNumber'] == null ? null : map['pageNumber'] as int,
      pageSize: map['pageSize'] == null ? null : map['pageSize'] as int,
      resourceGroupId: map['resourceGroupId'] == null ? null : map['resourceGroupId'] as String,
      routeTableName: map['routeTableName'] == null ? null : map['routeTableName'] as String,
      routeTableType: map['routeTableType'] == null ? null : map['routeTableType'] as String,
      routerId: map['routerId'] == null ? null : map['routerId'] as String,
      routerType: map['routerType'] == null ? null : map['routerType'] as String,
      status: map['status'] == null ? null : map['status'] as String,
      tags: map['tags'] == null ? null : (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] == null ? null : map['vpcId'] as String,
    );
  }
}

