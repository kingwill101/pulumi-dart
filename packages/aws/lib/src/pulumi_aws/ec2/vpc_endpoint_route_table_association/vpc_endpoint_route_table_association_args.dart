// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// The set of arguments for VpcEndpointRouteTableAssociation.
class VpcEndpointRouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;

  /// Identifier of the EC2 Route Table to be associated with the VPC Endpoint.
  final pulumi.Input<String> routeTableId;

  /// Identifier of the VPC Endpoint with which the EC2 Route Table will be associated.
  final pulumi.Input<String> vpcEndpointId;

  VpcEndpointRouteTableAssociationArgs({
    this.region,
    required this.routeTableId,
    required this.vpcEndpointId,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['routeTableId'] = routeTableId;
    map['vpcEndpointId'] = vpcEndpointId;
    return map;
  }

  factory VpcEndpointRouteTableAssociationArgs.fromMap(
      Map<String, dynamic> map) {
    return VpcEndpointRouteTableAssociationArgs(
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      routeTableId: pulumi.Input.asInput<String>(map['routeTableId']),
      vpcEndpointId: pulumi.Input.asInput<String>(map['vpcEndpointId']),
    );
  }
}
