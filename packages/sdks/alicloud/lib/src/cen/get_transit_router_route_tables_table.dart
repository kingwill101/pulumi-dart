// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouterRouteTablesTable {
  /// The ID of the Transit Router Route Table.
  final pulumi.Input<String> id;

  /// The status of the route table. Valid values: `Creating`, `Active`, `Deleting`.
  final pulumi.Input<String> status;

  /// The description of the route table.
  final pulumi.Input<String> transitRouterRouteTableDescription;

  /// The ID of the Transit Router Route Table.
  final pulumi.Input<String> transitRouterRouteTableId;

  /// The name of the route table.
  final pulumi.Input<String> transitRouterRouteTableName;

  /// The type of the route table. Valid values: `System`, `Custom`.
  final pulumi.Input<String> transitRouterRouteTableType;

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
      id: pulumi.Input.fromValue(map['id'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouterRouteTableDescription: pulumi.Input.fromValue(
        map['transitRouterRouteTableDescription'] as String,
      ),
      transitRouterRouteTableId: pulumi.Input.fromValue(
        map['transitRouterRouteTableId'] as String,
      ),
      transitRouterRouteTableName: pulumi.Input.fromValue(
        map['transitRouterRouteTableName'] as String,
      ),
      transitRouterRouteTableType: pulumi.Input.fromValue(
        map['transitRouterRouteTableType'] as String,
      ),
    );
  }
}
