// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_route_table_association_route_table_association_args_doc}
/// The set of arguments for RouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_route_table_association_route_table_association_args_doc}
class RouteTableAssociationArgs {
  /// The gateway ID to create an association. Conflicts with `subnet_id`.
  final pulumi.Input<String>? gatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the routing table to associate with.
  ///
  /// > **NOTE:** Please note that one of either `subnet_id` or `gateway_id` is required.
  final pulumi.Input<String> routeTableId;
  /// The subnet ID to create an association. Conflicts with `gateway_id`.
  final pulumi.Input<String>? subnetId;

  /// Creates a new [RouteTableAssociationArgs].
  /// [gatewayId] The gateway ID to create an association. Conflicts with `subnet_id`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the routing table to associate with.
  /// [subnetId] The subnet ID to create an association. Conflicts with `gateway_id`.
  RouteTableAssociationArgs({
    String? gatewayId,
    String? region,
    required String routeTableId,
    String? subnetId,
  }) :
      gatewayId = pulumi.Input.asOptionalInput<String>(gatewayId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asInput<String>(routeTableId),
      subnetId = pulumi.Input.asOptionalInput<String>(subnetId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'gatewayId': ?gatewayId,
      'region': ?region,
      'routeTableId': routeTableId,
      'subnetId': ?subnetId,
    };
  }

  factory RouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableAssociationArgs(
      gatewayId: map['gatewayId'] == null ? null : map['gatewayId'] as String,
      region: map['region'] == null ? null : map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      subnetId: map['subnetId'] == null ? null : map['subnetId'] as String,
    );
  }
}

