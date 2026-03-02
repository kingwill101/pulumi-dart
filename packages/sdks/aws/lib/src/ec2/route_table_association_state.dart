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
    this.gatewayId,
    this.region,
    this.routeTableId,
    this.subnetId,
  });

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
      gatewayId: map['gatewayId'] == null ? null : (map['gatewayId'] as String).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      routeTableId: map['routeTableId'] == null ? null : (map['routeTableId'] as String).input(),
      subnetId: map['subnetId'] == null ? null : (map['subnetId'] as String).input(),
    );
  }
}

