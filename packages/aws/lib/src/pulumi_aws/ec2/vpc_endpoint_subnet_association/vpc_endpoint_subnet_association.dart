import 'package:pulumi/pulumi.dart';
import 'vpc_endpoint_subnet_association_args.dart';

/// Provides a resource to create an association between a VPC endpoint and a subnet.
///
/// > **NOTE on VPC Endpoints and VPC Endpoint Subnet Associations:** This provider provides
/// both a standalone VPC Endpoint Subnet Association (an association between a VPC endpoint
/// and a single `subnet_id`) and a VPC Endpoint resource with a `subnet_ids`
/// attribute. Do not use the same subnet ID in both a VPC Endpoint resource and a VPC Endpoint Subnet
/// Association resource. Doing so will cause a conflict of associations and will overwrite the association.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import VPC Endpoint Subnet Associations using `vpc_endpoint_id` together with `subnet_id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation example vpce-aaaaaaaa/subnet-bbbbbbbbbbbbbbbbb
/// ```
class VpcEndpointSubnetAssociation extends CustomResource {
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the subnet to be associated with the VPC endpoint.
  late final Output<String> subnetId;

  /// The ID of the VPC endpoint with which the subnet will be associated.
  late final Output<String> vpcEndpointId;

  VpcEndpointSubnetAssociation(
    String name, {
    VpcEndpointSubnetAssociationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcEndpointSubnetAssociation:VpcEndpointSubnetAssociation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.region = registerOutput<String>('region');
    this.subnetId = registerOutput<String>('subnetId');
    this.vpcEndpointId = registerOutput<String>('vpcEndpointId');
  }
}
