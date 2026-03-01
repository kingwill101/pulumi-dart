// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering VpcEndpointRouteTableAssociation resources.
class VpcEndpointRouteTableAssociationState {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Identifier of the EC2 Route Table to be associated with the VPC Endpoint.
  final pulumi.Input<String>? routeTableId;
  /// Identifier of the VPC Endpoint with which the EC2 Route Table will be associated.
  final pulumi.Input<String>? vpcEndpointId;

  /// Creates a new [VpcEndpointRouteTableAssociationState].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] Identifier of the EC2 Route Table to be associated with the VPC Endpoint.
  /// [vpcEndpointId] Identifier of the VPC Endpoint with which the EC2 Route Table will be associated.
  VpcEndpointRouteTableAssociationState({
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? vpcEndpointId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      vpcEndpointId = pulumi.Input.asOptionalInput<String>(vpcEndpointId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeTableId': ?routeTableId,
      'vpcEndpointId': ?vpcEndpointId,
    };
  }

  factory VpcEndpointRouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return VpcEndpointRouteTableAssociationState(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      vpcEndpointId: map['vpcEndpointId'] == null ? null : pulumi.Output.create<String>(map['vpcEndpointId'] as String),
    );
  }
}

