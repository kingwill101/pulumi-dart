// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class GetTransitRouteTableAggregationsTransitRouteTableAggregation {
  /// The ID of the Transit Route Table Aggregation. It formats as `&lt;transit_route_table_id&gt;:&lt;transit_route_table_aggregation_cidr&gt;`.
  final pulumi.Input<String> id;
  /// The route type of the aggregate route.
  final pulumi.Input<String> routeType;
  /// The status of Transit Route Table Aggregation. Valid Values: `AllConfigured`, `Configuring`, `ConfigFailed`, `PartialConfigured`, `Deleting`.
  final pulumi.Input<String> status;
  /// The destination CIDR block of the aggregate route.
  final pulumi.Input<String> transitRouteTableAggregationCidr;
  /// The description of the aggregate route.
  final pulumi.Input<String> transitRouteTableAggregationDescription;
  /// The name of the aggregate route.
  final pulumi.Input<String> transitRouteTableAggregationName;
  /// The scope of networks that you want to advertise the aggregate route.
  final pulumi.Input<String> transitRouteTableAggregationScope;
  /// The ID of the route table of the Enterprise Edition transit router.
  final pulumi.Input<String> transitRouteTableId;

  /// Creates a new [GetTransitRouteTableAggregationsTransitRouteTableAggregation].
  /// [id] The ID of the Transit Route Table Aggregation. It formats as `&lt;transit_route_table_id&gt;:&lt;transit_route_table_aggregation_cidr&gt;`.
  /// [routeType] The route type of the aggregate route.
  /// [status] The status of Transit Route Table Aggregation. Valid Values: `AllConfigured`, `Configuring`, `ConfigFailed`, `PartialConfigured`, `Deleting`.
  /// [transitRouteTableAggregationCidr] The destination CIDR block of the aggregate route.
  /// [transitRouteTableAggregationDescription] The description of the aggregate route.
  /// [transitRouteTableAggregationName] The name of the aggregate route.
  /// [transitRouteTableAggregationScope] The scope of networks that you want to advertise the aggregate route.
  /// [transitRouteTableId] The ID of the route table of the Enterprise Edition transit router.
  const GetTransitRouteTableAggregationsTransitRouteTableAggregation({
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
      id: pulumi.Input.fromValue(map['id'] as String),
      routeType: pulumi.Input.fromValue(map['routeType'] as String),
      status: pulumi.Input.fromValue(map['status'] as String),
      transitRouteTableAggregationCidr: pulumi.Input.fromValue(map['transitRouteTableAggregationCidr'] as String),
      transitRouteTableAggregationDescription: pulumi.Input.fromValue(map['transitRouteTableAggregationDescription'] as String),
      transitRouteTableAggregationName: pulumi.Input.fromValue(map['transitRouteTableAggregationName'] as String),
      transitRouteTableAggregationScope: pulumi.Input.fromValue(map['transitRouteTableAggregationScope'] as String),
      transitRouteTableId: pulumi.Input.fromValue(map['transitRouteTableId'] as String),
    );
  }
}

