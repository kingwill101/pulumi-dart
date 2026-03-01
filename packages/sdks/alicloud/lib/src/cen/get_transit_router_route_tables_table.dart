// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouterRouteTablesTable {
  /// The ID of the Transit Router Route Table.
  final String id;
  /// The status of the route table. Valid values: `Creating`, `Active`, `Deleting`.
  final String status;
  /// The description of the route table.
  final String transitRouterRouteTableDescription;
  /// The ID of the Transit Router Route Table.
  final String transitRouterRouteTableId;
  /// The name of the route table.
  final String transitRouterRouteTableName;
  /// The type of the route table. Valid values: `System`, `Custom`.
  final String transitRouterRouteTableType;

  /// Creates a new [GetTransitRouterRouteTablesTable].
  /// [id] The ID of the Transit Router Route Table.
  /// [status] The status of the route table. Valid values: `Creating`, `Active`, `Deleting`.
  /// [transitRouterRouteTableDescription] The description of the route table.
  /// [transitRouterRouteTableId] The ID of the Transit Router Route Table.
  /// [transitRouterRouteTableName] The name of the route table.
  /// [transitRouterRouteTableType] The type of the route table. Valid values: `System`, `Custom`.
  GetTransitRouterRouteTablesTable({
    required this.id,
    required this.status,
    required this.transitRouterRouteTableDescription,
    required this.transitRouterRouteTableId,
    required this.transitRouterRouteTableName,
    required this.transitRouterRouteTableType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'status': status,
      'transitRouterRouteTableDescription': transitRouterRouteTableDescription,
      'transitRouterRouteTableId': transitRouterRouteTableId,
      'transitRouterRouteTableName': transitRouterRouteTableName,
      'transitRouterRouteTableType': transitRouterRouteTableType,
    };
  }

  factory GetTransitRouterRouteTablesTable.fromMap(Map<String, dynamic> map) {
    return GetTransitRouterRouteTablesTable(
      id: map['id'] as String,
      status: map['status'] as String,
      transitRouterRouteTableDescription: map['transitRouterRouteTableDescription'] as String,
      transitRouterRouteTableId: map['transitRouterRouteTableId'] as String,
      transitRouterRouteTableName: map['transitRouterRouteTableName'] as String,
      transitRouterRouteTableType: map['transitRouterRouteTableType'] as String,
    );
  }
}

