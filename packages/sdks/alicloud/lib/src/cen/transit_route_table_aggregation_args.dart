// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_cen_transit_route_table_aggregation_transit_route_table_aggregation_args_doc}
/// The set of arguments for TransitRouteTableAggregation.
/// {@endtemplate}
/// {@macro pulumi_cen_transit_route_table_aggregation_transit_route_table_aggregation_args_doc}
class TransitRouteTableAggregationArgs {
  /// The destination CIDR block of the aggregate route.
  ///
  /// &gt; **NOTE:**   The following CIDR blocks are not supported:
  ///
  /// &gt; **NOTE:** *   CIDR blocks that start with 0 or 100.64.
  ///
  /// &gt; **NOTE:** *   Multicast CIDR blocks, including 224.0.0.1 to 239.255.255.254.
  final pulumi.Input<String> transitRouteTableAggregationCidr;
  /// The list of propagation ranges of the aggregation route.
  ///
  /// &gt; **NOTE:**   You must specify at least one of the following attributes: Aggregation Scope and Aggregate Scope List. We recommend that you specify the latter. The elements in the two attributes cannot be duplicate.
  final pulumi.Input<String>? transitRouteTableAggregationDescription;
  /// The name of the aggregate route.
  /// The name can be empty or 1 to 128 characters in length, and cannot start with http:// or https://.
  final pulumi.Input<String>? transitRouteTableAggregationName;
  /// The scope of networks that you want to advertise the aggregate route.
  /// The valid value is `VPC`, which indicates that the aggregate route is advertised to all VPCs that have associated forwarding correlation with the Enterprise Edition transit router and have route synchronization enabled.
  final pulumi.Input<String>? transitRouteTableAggregationScope;
  /// Aggregation Route Scopes
  final pulumi.Input<List<String>>? transitRouteTableAggregationScopeLists;
  /// The list of route table IDs of the Enterprise Edition transit router.
  final pulumi.Input<String> transitRouteTableId;

  /// Creates a new [TransitRouteTableAggregationArgs].
  /// [transitRouteTableAggregationCidr] The destination CIDR block of the aggregate route.
  /// [transitRouteTableAggregationDescription] The list of propagation ranges of the aggregation route.
  /// [transitRouteTableAggregationName] The name of the aggregate route.
  /// [transitRouteTableAggregationScope] The scope of networks that you want to advertise the aggregate route.
  /// [transitRouteTableAggregationScopeLists] Aggregation Route Scopes
  /// [transitRouteTableId] The list of route table IDs of the Enterprise Edition transit router.
  const TransitRouteTableAggregationArgs({
    required this.transitRouteTableAggregationCidr,
    this.transitRouteTableAggregationDescription,
    this.transitRouteTableAggregationName,
    this.transitRouteTableAggregationScope,
    this.transitRouteTableAggregationScopeLists,
    required this.transitRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'transitRouteTableAggregationCidr': transitRouteTableAggregationCidr,
      'transitRouteTableAggregationDescription': ?transitRouteTableAggregationDescription,
      'transitRouteTableAggregationName': ?transitRouteTableAggregationName,
      'transitRouteTableAggregationScope': ?transitRouteTableAggregationScope,
      'transitRouteTableAggregationScopeLists': ?transitRouteTableAggregationScopeLists,
      'transitRouteTableId': transitRouteTableId,
    };
  }

  factory TransitRouteTableAggregationArgs.fromMap(Map<String, dynamic> map) {
    return TransitRouteTableAggregationArgs(
      transitRouteTableAggregationCidr: pulumi.Input.fromValue(map['transitRouteTableAggregationCidr'] as String),
      transitRouteTableAggregationDescription: (() { final guardedValue = map['transitRouteTableAggregationDescription']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouteTableAggregationName: (() { final guardedValue = map['transitRouteTableAggregationName']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouteTableAggregationScope: (() { final guardedValue = map['transitRouteTableAggregationScope']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      transitRouteTableAggregationScopeLists: (() { final guardedValue = map['transitRouteTableAggregationScopeLists']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as List).cast<String>()); })(),
      transitRouteTableId: pulumi.Input.fromValue(map['transitRouteTableId'] as String),
    );
  }
}

