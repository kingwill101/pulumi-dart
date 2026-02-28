// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_vpc_endpoint_route_table_association_vpc_endpoint_route_table_association_args_doc}
/// The set of arguments for VpcEndpointRouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_vpc_endpoint_route_table_association_vpc_endpoint_route_table_association_args_doc}
class VpcEndpointRouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the EC2 Route Table to be associated with the VPC Endpoint.
  final pulumi.Input<String> routeTableId;
  /// Identifier of the VPC Endpoint with which the EC2 Route Table will be associated.
  final pulumi.Input<String> vpcEndpointId;

  /// Creates a new [VpcEndpointRouteTableAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] Identifier of the EC2 Route Table to be associated with the VPC Endpoint.
  /// [vpcEndpointId] Identifier of the VPC Endpoint with which the EC2 Route Table will be associated.
  VpcEndpointRouteTableAssociationArgs({
    String? region,
    required String routeTableId,
    required String vpcEndpointId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asInput<String>(routeTableId),
      vpcEndpointId = pulumi.Input.asInput<String>(vpcEndpointId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeTableId': routeTableId,
      'vpcEndpointId': vpcEndpointId,
    };
  }

  factory VpcEndpointRouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return VpcEndpointRouteTableAssociationArgs(
      region: map['region'] == null ? null : map['region'] as String,
      routeTableId: map['routeTableId'] as String,
      vpcEndpointId: map['vpcEndpointId'] as String,
    );
  }
}

