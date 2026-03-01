// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// {@template pulumi_ec2_local_gateway_route_table_vpc_association_local_gateway_route_table_vpc_association_args_doc}
/// The set of arguments for LocalGatewayRouteTableVpcAssociation.
/// {@endtemplate}
/// {@macro pulumi_ec2_local_gateway_route_table_vpc_association_local_gateway_route_table_vpc_association_args_doc}
class LocalGatewayRouteTableVpcAssociationArgs {
  /// Identifier of EC2 Local Gateway Route Table.
  final pulumi.Input<String> localGatewayRouteTableId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// Identifier of EC2 VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  /// Creates a new [LocalGatewayRouteTableVpcAssociationArgs].
  /// [localGatewayRouteTableId] Identifier of EC2 Local Gateway Route Table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] Identifier of EC2 VPC.
  LocalGatewayRouteTableVpcAssociationArgs({
    required pulumi.Output<String> localGatewayRouteTableId,
    pulumi.Output<String>? region,
    pulumi.Output<Map<String, String>>? tags,
    required pulumi.Output<String> vpcId,
  }) :
      localGatewayRouteTableId = pulumi.Input.asInput<String>(localGatewayRouteTableId),
      region = pulumi.Input.asOptionalInput<String>(region),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      vpcId = pulumi.Input.asInput<String>(vpcId);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'localGatewayRouteTableId': localGatewayRouteTableId,
      'region': ?region,
      'tags': ?tags,
      'vpcId': vpcId,
    };
  }

  factory LocalGatewayRouteTableVpcAssociationArgs.fromMap(Map<String, dynamic> map) {
    return LocalGatewayRouteTableVpcAssociationArgs(
      localGatewayRouteTableId: pulumi.Output.create<String>(map['localGatewayRouteTableId'] as String),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      vpcId: pulumi.Output.create<String>(map['vpcId'] as String),
    );
  }
}

