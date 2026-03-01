// ignore_for_file: unused_element, unnecessary_cast


class GetRouteTablesTable {
  /// The description of the route table instance.
  final String description;
  /// ID of the Route Table.
  final String id;
  /// Name of the route table.
  final String name;
  /// The Id of resource group which route tables belongs.
  final String resourceGroupId;
  /// The route table id.
  final String routeTableId;
  /// The route table name.
  final String routeTableName;
  /// The route table type.
  final String routeTableType;
  /// The router ID.
  final String routerId;
  /// The route type of route table. Valid values: `VRouter` and `VBR`.
  final String routerType;
  /// The status of resource. Valid values: `Available` and `Pending`.
  final String status;
  /// A mapping of tags to assign to the resource.
  final Map<String, String> tags;
  /// Vpc id of the route table.
  final String vpcId;
  /// A list of vswitch id.
  final List<String> vswitchIds;

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
      description: map['description'] as String,
      id: map['id'] as String,
      name: map['name'] as String,
      resourceGroupId: map['resourceGroupId'] as String,
      routeTableId: map['routeTableId'] as String,
      routeTableName: map['routeTableName'] as String,
      routeTableType: map['routeTableType'] as String,
      routerId: map['routerId'] as String,
      routerType: map['routerType'] as String,
      status: map['status'] as String,
      tags: (map['tags'] as Map).cast<String, String>(),
      vpcId: map['vpcId'] as String,
      vswitchIds: (map['vswitchIds'] as List).cast<String>(),
    );
  }
}

