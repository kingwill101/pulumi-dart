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
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// const secondaryCidr = new aws.ec2.VpcIpv4CidrBlockAssociation("secondary_cidr", {
///     vpcId: main.id,
///     cidrBlock: "172.20.0.0/16",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
/// secondary_cidr = aws.ec2.VpcIpv4CidrBlockAssociation("secondary_cidr",
///     vpc_id=main.id,
///     cidr_block="172.20.0.0/16")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var main = new Aws.Ec2.Vpc("main", new()
///     {
///         CidrBlock = "10.0.0.0/16",
///     });
///
///     var secondaryCidr = new Aws.Ec2.VpcIpv4CidrBlockAssociation("secondary_cidr", new()
///     {
///         VpcId = main.Id,
///         CidrBlock = "172.20.0.0/16",
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
/// 		main, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpv4CidrBlockAssociation(ctx, "secondary_cidr", &ec2.VpcIpv4CidrBlockAssociationArgs{
/// 			VpcId:     main.ID(),
/// 			CidrBlock: pulumi.String("172.20.0.0/16"),
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
/// import com.pulumi.aws.ec2.VpcIpv4CidrBlockAssociation;
/// import com.pulumi.aws.ec2.VpcIpv4CidrBlockAssociationArgs;
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
///         var main = new Vpc("main", VpcArgs.builder()
///             .cidrBlock("10.0.0.0/16")
///             .build());
///
///         var secondaryCidr = new VpcIpv4CidrBlockAssociation("secondaryCidr", VpcIpv4CidrBlockAssociationArgs.builder()
///             .vpcId(main.id())
///             .cidrBlock("172.20.0.0/16")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
///   secondaryCidr:
///     type: aws:ec2:VpcIpv4CidrBlockAssociation
///     name: secondary_cidr
///     properties:
///       vpcId: ${main.id}
///       cidrBlock: 172.20.0.0/16
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

  /// Creates a new [VpcIpv4CidrBlockAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpv4CidrBlockAssociation]. {@macro pulumi_ec2_vpc_ipv4_cidr_block_association_vpc_ipv4_cidr_block_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
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
