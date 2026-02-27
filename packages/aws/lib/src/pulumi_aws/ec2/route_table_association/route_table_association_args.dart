// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for RouteTableAssociation.
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

  RouteTableAssociationArgs({
    this.gatewayId,
    this.region,
    required this.routeTableId,
    this.subnetId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final gatewayIdValue = gatewayId;
    if (gatewayIdValue != null) {
      map['gatewayId'] = gatewayIdValue;
    }
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeTableId'] = routeTableId;
    final subnetIdValue = subnetId;
    if (subnetIdValue != null) {
      map['subnetId'] = subnetIdValue;
    }
    return map;
  }

  factory RouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return RouteTableAssociationArgs(
      gatewayId: pulumi.Input.asOptionalInput<String>(map['gatewayId']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeTableId: pulumi.Input.asInput<String>(map['routeTableId']),
      subnetId: pulumi.Input.asOptionalInput<String>(map['subnetId']),
    );
  }
}
