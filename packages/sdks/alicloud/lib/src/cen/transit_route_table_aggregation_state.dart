// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering TransitRouteTableAggregation resources.
class TransitRouteTableAggregationState {
  /// The status of the resource
  final pulumi.Input<String>? status;
  /// The destination CIDR block of the aggregate route.
  ///
  /// > **NOTE:**   The following CIDR blocks are not supported:
  ///
  /// > **NOTE:** *   CIDR blocks that start with 0 or 100.64.
  ///
  /// > **NOTE:** *   Multicast CIDR blocks, including 224.0.0.1 to 239.255.255.254.
  final pulumi.Input<String>? transitRouteTableAggregationCidr;
  /// The list of propagation ranges of the aggregation route.
  ///
  /// > **NOTE:**   You must specify at least one of the following attributes: Aggregation Scope and Aggregate Scope List. We recommend that you specify the latter. The elements in the two attributes cannot be duplicate.
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
  final pulumi.Input<String>? transitRouteTableId;

  /// Creates a new [TransitRouteTableAggregationState].
  /// [status] The status of the resource
  /// [transitRouteTableAggregationCidr] The destination CIDR block of the aggregate route.
  /// [transitRouteTableAggregationDescription] The list of propagation ranges of the aggregation route.
  /// [transitRouteTableAggregationName] The name of the aggregate route.
  /// [transitRouteTableAggregationScope] The scope of networks that you want to advertise the aggregate route.
  /// [transitRouteTableAggregationScopeLists] Aggregation Route Scopes
  /// [transitRouteTableId] The list of route table IDs of the Enterprise Edition transit router.
  TransitRouteTableAggregationState({
    this.status,
    this.transitRouteTableAggregationCidr,
    this.transitRouteTableAggregationDescription,
    this.transitRouteTableAggregationName,
    this.transitRouteTableAggregationScope,
    this.transitRouteTableAggregationScopeLists,
    this.transitRouteTableId,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'status': ?status,
      'transitRouteTableAggregationCidr': ?transitRouteTableAggregationCidr,
      'transitRouteTableAggregationDescription': ?transitRouteTableAggregationDescription,
      'transitRouteTableAggregationName': ?transitRouteTableAggregationName,
      'transitRouteTableAggregationScope': ?transitRouteTableAggregationScope,
      'transitRouteTableAggregationScopeLists': ?transitRouteTableAggregationScopeLists,
      'transitRouteTableId': ?transitRouteTableId,
    };
  }

  factory TransitRouteTableAggregationState.fromMap(Map<String, dynamic> map) {
    return TransitRouteTableAggregationState(
      status: map['status'] == null ? null : (map['status']! as String).input(),
      transitRouteTableAggregationCidr: map['transitRouteTableAggregationCidr'] == null ? null : (map['transitRouteTableAggregationCidr']! as String).input(),
      transitRouteTableAggregationDescription: map['transitRouteTableAggregationDescription'] == null ? null : (map['transitRouteTableAggregationDescription']! as String).input(),
      transitRouteTableAggregationName: map['transitRouteTableAggregationName'] == null ? null : (map['transitRouteTableAggregationName']! as String).input(),
      transitRouteTableAggregationScope: map['transitRouteTableAggregationScope'] == null ? null : (map['transitRouteTableAggregationScope']! as String).input(),
      transitRouteTableAggregationScopeLists: map['transitRouteTableAggregationScopeLists'] == null ? null : ((map['transitRouteTableAggregationScopeLists']! as List).cast<String>()).input(),
      transitRouteTableId: map['transitRouteTableId'] == null ? null : (map['transitRouteTableId']! as String).input(),
    );
  }
}

