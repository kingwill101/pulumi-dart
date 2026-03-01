// ignore_for_file: unused_element, unnecessary_cast


class PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable {
  /// The list of Virtual Hub Route Table resource id which the routes will be propagated to.
  final List<String> ids;
  /// The list of labels to logically group Virtual Hub Route Tables which the routes will be propagated to.
  final List<String>? labels;

  /// Creates a new [PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable].
  /// [ids] The list of Virtual Hub Route Table resource id which the routes will be propagated to.
  /// [labels] The list of labels to logically group Virtual Hub Route Tables which the routes will be propagated to.
  PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable({
    required this.ids,
    this.labels,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ids': ids,
      'labels': ?labels,
    };
  }

  factory PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable.fromMap(Map<String, dynamic> map) {
    return PointToPointVpnGatewayConnectionConfigurationRoutePropagatedRouteTable(
      ids: (map['ids'] as List).cast<String>(),
      labels: map['labels'] == null ? null : (map['labels'] as List).cast<String>(),
    );
  }
}

