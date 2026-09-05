// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_route_table_association_route_table_association_args_doc}
/// The set of arguments for RouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_route_table_association_route_table_association_args_doc}
class RouteTableAssociationArgs {
  /// The gateway ID to create an association. Conflicts with `subnetId`.
  final pulumi.Input<String?>? gatewayId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// The ID of the routing table to associate with.
  ///
  /// &gt; **NOTE:** Please note that one of either `subnetId` or `gatewayId` is required.
  final pulumi.Input<String> routeTableId;
  /// The subnet ID to create an association. Conflicts with `gatewayId`.
  final pulumi.Input<String?>? subnetId;

  /// Creates a new [RouteTableAssociationArgs].
  /// [gatewayId] The gateway ID to create an association. Conflicts with `subnetId`.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the routing table to associate with.
  /// [subnetId] The subnet ID to create an association. Conflicts with `gatewayId`.
  const RouteTableAssociationArgs({
    this.gatewayId,
    this.region,
    required this.routeTableId,
    this.subnetId,
  });

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
      gatewayId: (() { final guardedValue = map['gatewayId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      routeTableId: pulumi.Input.fromValue(map['routeTableId'] as String),
      subnetId: (() { final guardedValue = map['subnetId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
