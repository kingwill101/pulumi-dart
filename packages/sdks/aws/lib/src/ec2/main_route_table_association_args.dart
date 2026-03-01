// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_main_route_table_association_main_route_table_association_args_doc}
/// The set of arguments for MainRouteTableAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_main_route_table_association_main_route_table_association_args_doc}
class MainRouteTableAssociationArgs {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// The ID of the Route Table to set as the new
  /// main route table for the target VPC
  final pulumi.Input<String> routeTableId;
  /// The ID of the VPC whose main route table should be set
  final pulumi.Input<String> vpcId;

  /// Creates a new [MainRouteTableAssociationArgs].
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [routeTableId] The ID of the Route Table to set as the new
  /// [vpcId] The ID of the VPC whose main route table should be set
  MainRouteTableAssociationArgs({
    pulumi.Output<String>? region,
    required pulumi.Output<String> routeTableId,
    required pulumi.Output<String> vpcId,
  }) :
      region = pulumi.Input.asOptionalInput<String>(region),
      routeTableId = pulumi.Input.asInput<String>(routeTableId),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'region': ?region,
      'routeTableId': routeTableId,
      'vpcId': vpcId,
    };
  }

  factory MainRouteTableAssociationArgs.fromMap(Map<String, dynamic> map) {
    return MainRouteTableAssociationArgs(
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      routeTableId: pulumi.Output.create<String>(map['routeTableId'] as String),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

