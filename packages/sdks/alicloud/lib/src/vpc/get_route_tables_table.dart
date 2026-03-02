// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetRouteTablesTable {
  /// The description of the route table instance.
  final pulumi.Input<String> description;
  /// ID of the Route Table.
  final pulumi.Input<String> id;
  /// Name of the route table.
  final pulumi.Input<String> name;
  /// The Id of resource group which route tables belongs.
  final pulumi.Input<String> resourceGroupId;
  /// The route table id.
  final pulumi.Input<String> routeTableId;
  /// The route table name.
  final pulumi.Input<String> routeTableName;
  /// The route table type.
  final pulumi.Input<String> routeTableType;
  /// The router ID.
  final pulumi.Input<String> routerId;
  /// The route type of route table. Valid values: `VRouter` and `VBR`.
  final pulumi.Input<String> routerType;
  /// The status of resource. Valid values: `Available` and `Pending`.
  final pulumi.Input<String> status;
  /// A mapping of tags to assign to the resource.
  final pulumi.Input<Map<String, String>> tags;
  /// Vpc id of the route table.
  final pulumi.Input<String> vpcId;
  /// A list of vswitch id.
  final pulumi.Input<List<String>> vswitchIds;

  /// Creates a new [GetRouteTablesTable].
  /// [description] The description of the route table instance.
  /// [id] ID of the Route Table.
  /// [name] Name of the route table.
  /// [resourceGroupId] The Id of resource group which route tables belongs.
  /// [routeTableId] The route table id.
  /// [routeTableName] The route table name.
  /// [routeTableType] The route table type.
  /// [routerId] The router ID.
  /// [routerType] The route type of route table. Valid values: `VRouter` and `VBR`.
  /// [status] The status of resource. Valid values: `Available` and `Pending`.
  /// [tags] A mapping of tags to assign to the resource.
  /// [vpcId] Vpc id of the route table.
  /// [vswitchIds] A list of vswitch id.
  GetRouteTablesTable({
    required this.description,
    required this.id,
    required this.name,
    required this.resourceGroupId,
    required this.routeTableId,
    required this.routeTableName,
    required this.routeTableType,
    required this.routerId,
    required this.routerType,
    required this.status,
    required this.tags,
    required this.vpcId,
    required this.vswitchIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'description': description,
      'id': id,
      'name': name,
      'resourceGroupId': resourceGroupId,
      'routeTableId': routeTableId,
      'routeTableName': routeTableName,
      'routeTableType': routeTableType,
      'routerId': routerId,
      'routerType': routerType,
      'status': status,
      'tags': tags,
      'vpcId': vpcId,
      'vswitchIds': vswitchIds,
    };
  }

  factory GetRouteTablesTable.fromMap(Map<String, dynamic> map) {
    return GetRouteTablesTable(
      description: (map['description'] as String).input(),
      id: (map['id'] as String).input(),
      name: (map['name'] as String).input(),
      resourceGroupId: (map['resourceGroupId'] as String).input(),
      routeTableId: (map['routeTableId'] as String).input(),
      routeTableName: (map['routeTableName'] as String).input(),
      routeTableType: (map['routeTableType'] as String).input(),
      routerId: (map['routerId'] as String).input(),
      routerType: (map['routerType'] as String).input(),
      status: (map['status'] as String).input(),
      tags: ((map['tags'] as Map).cast<String, String>()).input(),
      vpcId: (map['vpcId'] as String).input(),
      vswitchIds: ((map['vswitchIds'] as List).cast<String>()).input(),
    );
  }
}

