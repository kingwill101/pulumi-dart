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
  const GetRouteTablesArgs({
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
      ids: (() { final guardedValue = map['ids']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      nameRegex: (() { final guardedValue = map['nameRegex']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      outputFile: (() { final guardedValue = map['outputFile']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      pageNumber: (() { final guardedValue = map['pageNumber']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      pageSize: (() { final guardedValue = map['pageSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      resourceGroupId: (() { final guardedValue = map['resourceGroupId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableName: (() { final guardedValue = map['routeTableName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableType: (() { final guardedValue = map['routeTableType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerId: (() { final guardedValue = map['routerId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routerType: (() { final guardedValue = map['routerType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: (() { final guardedValue = map['vpcId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

