// ignore_for_file: unused_element, unnecessary_cast


class GetTransitRouteTableAggregationsTransitRouteTableAggregation {
  /// The ID of the Transit Route Table Aggregation. It formats as `<transit_route_table_id>:<transit_route_table_aggregation_cidr>`.
  final String id;
  /// The route type of the aggregate route.
  final String routeType;
  /// The status of Transit Route Table Aggregation. Valid Values: `AllConfigured`, `Configuring`, `ConfigFailed`, `PartialConfigured`, `Deleting`.
  final String status;
  /// The destination CIDR block of the aggregate route.
  final String transitRouteTableAggregationCidr;
  /// The description of the aggregate route.
  final String transitRouteTableAggregationDescription;
  /// The name of the aggregate route.
  final String transitRouteTableAggregationName;
  /// The scope of networks that you want to advertise the aggregate route.
  final String transitRouteTableAggregationScope;
  /// The ID of the route table of the Enterprise Edition transit router.
  final String transitRouteTableId;

  /// Creates a new [GetTransitRouteTableAggregationsTransitRouteTableAggregation].
  /// [id] The ID of the Transit Route Table Aggregation. It formats as `<transit_route_table_id>:<transit_route_table_aggregation_cidr>`.
  /// [routeType] The route type of the aggregate route.
  /// [status] The status of Transit Route Table Aggregation. Valid Values: `AllConfigured`, `Configuring`, `ConfigFailed`, `PartialConfigured`, `Deleting`.
  /// [transitRouteTableAggregationCidr] The destination CIDR block of the aggregate route.
  /// [transitRouteTableAggregationDescription] The description of the aggregate route.
  /// [transitRouteTableAggregationName] The name of the aggregate route.
  /// [transitRouteTableAggregationScope] The scope of networks that you want to advertise the aggregate route.
  /// [transitRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  GetTransitRouteTableAggregationsTransitRouteTableAggregation({
    required this.id,
    required this.routeType,
    required this.status,
    required this.transitRouteTableAggregationCidr,
    required this.transitRouteTableAggregationDescription,
    required this.transitRouteTableAggregationName,
    required this.transitRouteTableAggregationScope,
    required this.transitRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'id': id,
      'routeType': routeType,
      'status': status,
      'transitRouteTableAggregationCidr': transitRouteTableAggregationCidr,
      'transitRouteTableAggregationDescription': transitRouteTableAggregationDescription,
      'transitRouteTableAggregationName': transitRouteTableAggregationName,
      'transitRouteTableAggregationScope': transitRouteTableAggregationScope,
      'transitRouteTableId': transitRouteTableId,
    };
  }

  factory GetTransitRouteTableAggregationsTransitRouteTableAggregation.fromMap(Map<String, dynamic> map) {
    return GetTransitRouteTableAggregationsTransitRouteTableAggregation(
      id: map['id'] as String,
      routeType: map['routeType'] as String,
      status: map['status'] as String,
      transitRouteTableAggregationCidr: map['transitRouteTableAggregationCidr'] as String,
      transitRouteTableAggregationDescription: map['transitRouteTableAggregationDescription'] as String,
      transitRouteTableAggregationName: map['transitRouteTableAggregationName'] as String,
      transitRouteTableAggregationScope: map['transitRouteTableAggregationScope'] as String,
      transitRouteTableId: map['transitRouteTableId'] as String,
    );
  }
}

