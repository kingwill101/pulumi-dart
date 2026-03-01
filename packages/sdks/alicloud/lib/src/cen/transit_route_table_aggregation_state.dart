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
    pulumi.Output<String>? status,
    pulumi.Output<String>? transitRouteTableAggregationCidr,
    pulumi.Output<String>? transitRouteTableAggregationDescription,
    pulumi.Output<String>? transitRouteTableAggregationName,
    pulumi.Output<String>? transitRouteTableAggregationScope,
    pulumi.Output<List<String>>? transitRouteTableAggregationScopeLists,
    pulumi.Output<String>? transitRouteTableId,
  }) :
      status = pulumi.Input.asOptionalInput<String>(status),
      transitRouteTableAggregationCidr = pulumi.Input.asOptionalInput<String>(transitRouteTableAggregationCidr),
      transitRouteTableAggregationDescription = pulumi.Input.asOptionalInput<String>(transitRouteTableAggregationDescription),
      transitRouteTableAggregationName = pulumi.Input.asOptionalInput<String>(transitRouteTableAggregationName),
      transitRouteTableAggregationScope = pulumi.Input.asOptionalInput<String>(transitRouteTableAggregationScope),
      transitRouteTableAggregationScopeLists = pulumi.Input.asOptionalInput<List<String>>(transitRouteTableAggregationScopeLists),
      transitRouteTableId = pulumi.Input.asOptionalInput<String>(transitRouteTableId);

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
      status: map['status'] == null ? null : pulumi.Output.create<String>(map['status'] as String),
      transitRouteTableAggregationCidr: map['transitRouteTableAggregationCidr'] == null ? null : pulumi.Output.create<String>(map['transitRouteTableAggregationCidr'] as String),
      transitRouteTableAggregationDescription: map['transitRouteTableAggregationDescription'] == null ? null : pulumi.Output.create<String>(map['transitRouteTableAggregationDescription'] as String),
      transitRouteTableAggregationName: map['transitRouteTableAggregationName'] == null ? null : pulumi.Output.create<String>(map['transitRouteTableAggregationName'] as String),
      transitRouteTableAggregationScope: map['transitRouteTableAggregationScope'] == null ? null : pulumi.Output.create<String>(map['transitRouteTableAggregationScope'] as String),
      transitRouteTableAggregationScopeLists: map['transitRouteTableAggregationScopeLists'] == null ? null : pulumi.Output.create<List<String>>((map['transitRouteTableAggregationScopeLists'] as List).cast<String>()),
      transitRouteTableId: map['transitRouteTableId'] == null ? null : pulumi.Output.create<String>(map['transitRouteTableId'] as String),
    );
  }
}

