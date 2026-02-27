import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipv4_cidr_block_association_args.dart';

/// Provides a resource to associate additional IPv4 CIDR blocks with a VPC.
///
/// When a VPC is created, a primary IPv4 CIDR block for the VPC must be specified.
/// The `aws.ec2.VpcIpv4CidrBlockAssociation` resource allows further IPv4 CIDR blocks to be added to the VPC.
///
/// ## Example Usage
///
///
///
/// ## Import
///
/// or
///
///
/// or
///
///
/// Using `pulumi import`, import `aws.ec2.VpcIpv4CidrBlockAssociation` using the VPC CIDR association ID and optionally the IPv4 IPAM pool ID and netmask length. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv4CidrBlockAssociation:VpcIpv4CidrBlockAssociation example vpc-cidr-assoc-021e8461d70ed08be
/// ```
///
/// or
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv4CidrBlockAssociation:VpcIpv4CidrBlockAssociation example vpc-cidr-assoc-021e8461d70ed08be,ipam-pool-0a07c432810393463
/// ```
///
/// or
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv4CidrBlockAssociation:VpcIpv4CidrBlockAssociation example vpc-cidr-assoc-021e8461d70ed08be,ipam-pool-0a07c432810393463,28
/// ```
class VpcIpv4CidrBlockAssociation extends pulumi.CustomResource {
  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
  late final pulumi.Output<String> cidrBlock;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  late final pulumi.Output<String?> ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  late final pulumi.Output<int?> ipv4NetmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPC to make the association with.
  late final pulumi.Output<String> vpcId;

  VpcIpv4CidrBlockAssociation(
    String name, {
    VpcIpv4CidrBlockAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpv4CidrBlockAssociation:VpcIpv4CidrBlockAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.ipv4IpamPoolId = registerOutput<String?>('ipv4IpamPoolId');
    this.ipv4NetmaskLength = registerOutput<int?>('ipv4NetmaskLength');
    this.region = registerOutput<String>('region');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
