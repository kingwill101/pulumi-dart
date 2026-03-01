// ignore_for_file: unused_element, unnecessary_cast


class ExpressRouteConnectionRoutingPropagatedRouteTable {
  /// The list of labels to logically group route tables.
  final List<String>? labels;
  /// A list of IDs of the Virtual Hub Route Table to propagate routes from Express Route Connection to the route table.
  final List<String>? routeTableIds;

  /// Creates a new [ExpressRouteConnectionRoutingPropagatedRouteTable].
  /// [labels] The list of labels to logically group route tables.
  /// [routeTableIds] A list of IDs of the Virtual Hub Route Table to propagate routes from Express Route Connection to the route table.
  ExpressRouteConnectionRoutingPropagatedRouteTable({
    this.labels,
    this.routeTableIds,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'labels': ?labels,
      'routeTableIds': ?routeTableIds,
    };
  }

  factory ExpressRouteConnectionRoutingPropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return ExpressRouteConnectionRoutingPropagatedRouteTable(
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
      routeTableIds: map['routeTableIds'] == null ? null : (map['routeTableIds'] as List).cast<String>(),
    );
  }
}

