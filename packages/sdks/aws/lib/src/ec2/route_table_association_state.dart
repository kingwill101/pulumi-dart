// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering RouteTableAssociation resources.
class RouteTableAssociationState {
  /// The gateway ID to create an association. Conflicts with `subnet_id`.
  final pulumi.Input<String>? gatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the routing table to associate with.
  ///
  /// > **NOTE:** Please note that one of either `subnet_id` or `gateway_id` is required.
  final pulumi.Input<String>? routeTableId;
  /// The subnet ID to create an association. Conflicts with `gateway_id`.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [RouteTableAssociationState].
  /// [gatewayId] The gateway ID to create an association. Conflicts with `subnet_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the routing table to associate with.
  /// [subnetId] The subnet ID to create an association. Conflicts with `gateway_id`.
  RouteTableAssociationState({
    pulumi.Output<String>? gatewayId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? subnetId,
  }) :
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': ?gatewayId,
      'region': ?region,
      'routeTableId': ?routeTableId,
      'subnetId': ?subnetId,
    };
  }

  factory RouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return RouteTableAssociationState(
      gatewayId: map['gatewayId'] == null ? null : pulumi.Output.create<String>(map['gatewayId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      subnetId: map['subnetId'] == null ? null : pulumi.Output.create<String>(map['subnetId'] as String),
    );
  }
}

