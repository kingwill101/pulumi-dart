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
  final pulumi.Input<String?>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Identifier of EC2 VPC.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> vpcId;

  /// Creates a new [LocalGatewayRouteTableVpcAssociationArgs].
  /// [localGatewayRouteTableId] Identifier of EC2 Local Gateway Route Table.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [vpcId] Identifier of EC2 VPC.
  const LocalGatewayRouteTableVpcAssociationArgs({
    required this.localGatewayRouteTableId,
    this.region,
    this.tags,
    required this.vpcId,
  });

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
      localGatewayRouteTableId: pulumi.Input.fromValue(map['localGatewayRouteTableId'] as String),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      vpcId: pulumi.Input.fromValue(map['vpcId'] as String),
    );
  }
}
