import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipv6_cidr_block_association_args.dart';

/// Provides a resource to associate additional IPv6 CIDR blocks with a VPC.
///
/// The `aws.ec2.VpcIpv6CidrBlockAssociation` resource allows IPv6 CIDR blocks to be added to the VPC.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const test = new aws.ec2.Vpc("test", {cidrBlock: "10.0.0.0/16"});
/// const testVpcIpv6CidrBlockAssociation = new aws.ec2.VpcIpv6CidrBlockAssociation("test", {
///     ipv6IpamPoolId: testAwsVpcIpamPool.id,
///     vpcId: test.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// test = aws.ec2.Vpc("test", cidr_block="10.0.0.0/16")
/// test_vpc_ipv6_cidr_block_association = aws.ec2.VpcIpv6CidrBlockAssociation("test",
///     ipv6_ipam_pool_id=test_aws_vpc_ipam_pool["id"],
///     vpc_id=test.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var test = new Aws.Ec2.Vpc("test", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var testVpcIpv6CidrBlockAssociation = new Aws.Ec2.VpcIpv6CidrBlockAssociation("test", new()
///     {
///         Ipv6IpamPoolId = testAwsVpcIpamPool.Id,
///         VpcId = test.Id,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		test, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpv6CidrBlockAssociation(ctx, "test", &ec2.VpcIpv6CidrBlockAssociationArgs{
/// 			Ipv6IpamPoolId: pulumi.Any(testAwsVpcIpamPool.Id),
/// 			VpcId:          test.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.aws.ec2.VpcIpv6CidrBlockAssociation;
/// import com.pulumi.aws.ec2.VpcIpv6CidrBlockAssociationArgs;
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var test = new Vpc("test", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var testVpcIpv6CidrBlockAssociation = new VpcIpv6CidrBlockAssociation("testVpcIpv6CidrBlockAssociation", VpcIpv6CidrBlockAssociationArgs.builder()
///             .ipv6IpamPoolId(testAwsVpcIpamPool.id())
///             .vpcId(test.id())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   testVpcIpv6CidrBlockAssociation:
///     type: aws:ec2:VpcIpv6CidrBlockAssociation
///     name: test
///     properties:
///       ipv6IpamPoolId: ${testAwsVpcIpamPool.id}
///       vpcId: ${test.id}
/// ```
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
/// Using `pulumi import`, import `aws.ec2.VpcIpv6CidrBlockAssociation` using the VPC CIDR association ID and optionally the IPv6 IPAM pool ID and netmask length. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation example vpc-cidr-assoc-0754129087e149dcd
/// ```
///
/// or
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation example vpc-cidr-assoc-0754129087e149dcd,ipam-pool-0611d1d6bbc05ce60
/// ```
///
/// or
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation example vpc-cidr-assoc-0754129087e149dcd,ipam-pool-0611d1d6bbc05ce60,56
/// ```
class VpcIpv6CidrBlockAssociation extends pulumi.CustomResource {
  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IPv6 addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`, `ipv6_pool`, `ipv6_cidr_block` and `ipv6_netmask_length`.
  late final pulumi.Output<bool> assignGeneratedIpv6CidrBlock;

  /// The source that allocated the IP address space. Values: `amazon`, `byoip`, `none`.
  late final pulumi.Output<String> ipSource;

  /// Public IPv6 addresses are those advertised on the internet from AWS. Private IP addresses are not and cannot be advertised on the internet from AWS. Values: `public`, `private`.
  late final pulumi.Output<String> ipv6AddressAttribute;

  /// The IPv6 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv6_netmask_length`. This parameter is required if `ipv6_netmask_length` is not set and the IPAM pool does not have `allocation_default_netmask` set. Conflicts with `assign_generated_ipv6_cidr_block`.
  late final pulumi.Output<String> ipv6CidrBlock;

  /// The ID of an IPv6 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Conflict with `assign_generated_ipv6_cidr_block` and `ipv6_pool`.
  late final pulumi.Output<String?> ipv6IpamPoolId;

  /// The netmask length of the IPv6 CIDR you want to allocate to this VPC. Requires specifying a `ipv6_ipam_pool_id`. This parameter is optional if the IPAM pool has `allocation_default_netmask` set, otherwise it or `ipv6_cidr_block` are required. Conflicts with `ipv6_cidr_block`.
  late final pulumi.Output<int?> ipv6NetmaskLength;

  /// The  ID of an IPv6 address pool from which to allocate the IPv6 CIDR block. Conflicts with `assign_generated_ipv6_cidr_block` and `ipv6_ipam_pool_id`.
  late final pulumi.Output<String> ipv6Pool;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the VPC to make the association with.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [VpcIpv6CidrBlockAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpv6CidrBlockAssociation]. {@macro pulumi_ec2_vpc_ipv6_cidr_block_association_vpc_ipv6_cidr_block_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIpv6CidrBlockAssociation(
    String name, {
    VpcIpv6CidrBlockAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcIpv6CidrBlockAssociation:VpcIpv6CidrBlockAssociation',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.assignGeneratedIpv6CidrBlock = registerOutput<bool>(
      'assignGeneratedIpv6CidrBlock',
    );
    this.ipSource = registerOutput<String>('ipSource');
    this.ipv6AddressAttribute = registerOutput<String>('ipv6AddressAttribute');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6IpamPoolId = registerOutput<String?>('ipv6IpamPoolId');
    this.ipv6NetmaskLength = registerOutput<int?>('ipv6NetmaskLength');
    this.ipv6Pool = registerOutput<String>('ipv6Pool');
    this.region = registerOutput<String>('region');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
