import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_endpoint_route_table_association_args.dart';

/// Manages a VPC Endpoint Route Table Association
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Route Table Associations using `vpc_endpoint_id` together with `route_table_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointRouteTableAssociation:VpcEndpointRouteTableAssociation example vpce-aaaaaaaa/rtb-bbbbbbbb
/// ```
class VpcEndpointRouteTableAssociation extends pulumi.CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Identifier of the EC2 Route Table to be associated with the VPC Endpoint.
  late final pulumi.Output<String> routeTableId;

  /// Identifier of the VPC Endpoint with which the EC2 Route Table will be associated.
  late final pulumi.Output<String> vpcEndpointId;

  VpcEndpointRouteTableAssociation(
    String name, {
    VpcEndpointRouteTableAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointRouteTableAssociation:VpcEndpointRouteTableAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.routeTableId = registerOutput<String>('routeTableId');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
