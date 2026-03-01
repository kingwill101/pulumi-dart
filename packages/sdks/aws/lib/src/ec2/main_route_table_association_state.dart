// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Input properties used for looking up and filtering MainRouteTableAssociation resources.
class MainRouteTableAssociationState {
  /// Used internally, see **Notes** below
  final pulumi.Input<String>? originalRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  final pulumi.Input<String>? routeTableId;
  /// The ID of the VPC whose main route table should be set
  final pulumi.Input<String>? vpcId;

  /// Creates a new [MainRouteTableAssociationState].
  /// [originalRouteTableId] Used internally, see **Notes** below
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the Route Table to set as the new
  /// [vpcId] The ID of the VPC whose main route table should be set
  MainRouteTableAssociationState({
    pulumi.Output<String>? originalRouteTableId,
    pulumi.Output<String>? region,
    pulumi.Output<String>? routeTableId,
    pulumi.Output<String>? vpcId,
  }) :
      originalRouteTableId = pulumi.Input.asOptionalInput<String>(originalRouteTableId),
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asOptionalInput<String>(routeTableId),
      vpcId = pulumi.Input.asOptionalInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'originalRouteTableId': ?originalRouteTableId,
      'region': ?region,
      'routeTableId': ?routeTableId,
      'vpcId': ?vpcId,
    };
  }

  factory MainRouteTableAssociationState.fromMap(Map<String, dynamic> map) {
    return MainRouteTableAssociationState(
      originalRouteTableId: map['originalRouteTableId'] == null ? null : pulumi.Output.create<String>(map['originalRouteTableId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: map['routeTableId'] == null ? null : pulumi.Output.create<String>(map['routeTableId'] as String),
      vpcId: map['vpcId'] == null ? null : pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

