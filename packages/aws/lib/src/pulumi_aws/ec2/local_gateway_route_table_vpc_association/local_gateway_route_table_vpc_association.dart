import 'package:pulumi/pulumi.dart';
import 'local_gateway_route_table_vpc_association_args.dart';

/// Manages an EC2 Local Gateway Route Table VPC Association. More information can be found in the [Outposts User Guide](https://docs.aws.amazon.com/outposts/latest/userguide/outposts-local-gateways.html#vpc-associations).
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.ec2.LocalGatewayRouteTableVpcAssociation` using the Local Gateway Route Table VPC Association identifier. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation example lgw-vpc-assoc-1234567890abcdef
/// ```
class LocalGatewayRouteTableVpcAssociation extends CustomResource {
  late final Output<String> localGatewayId;

  /// Identifier of EC2 Local Gateway Route Table.
  late final Output<String> localGatewayRouteTableId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// Key-value map of resource tags. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// Identifier of EC2 VPC.
  ///
  /// The following arguments are optional:
  late final Output<String> vpcId;

  LocalGatewayRouteTableVpcAssociation(
    String name, {
    LocalGatewayRouteTableVpcAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/localGatewayRouteTableVpcAssociation:LocalGatewayRouteTableVpcAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.localGatewayId = registerOutput<String>('localGatewayId');
    this.localGatewayRouteTableId =
        registerOutput<String>('localGatewayRouteTableId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
