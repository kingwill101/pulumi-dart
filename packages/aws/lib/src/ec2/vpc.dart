import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_args.dart';

/// Provides a VPC resource.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {cidrBlock: "10.0.0.0/16"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main", cidr_block="10.0.0.0/16")
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
/// 		_, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock: pulumi.String("10.0.0.0/16"),
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
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:Vpc
///     properties:
///       cidrBlock: 10.0.0.0/16
/// ```
///
///
/// Basic usage with tags:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {
///     cidrBlock: "10.0.0.0/16",
///     instanceTenancy: "default",
///     tags: {
///         Name: "main",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main",
///     cidr_block="10.0.0.0/16",
///     instance_tenancy="default",
///     tags={
///         "Name": "main",
///     })
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
///         InstanceTenancy = "default",
///         Tags =
///         {
///             { "Name", "main" },
///         },
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
/// 		_, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// 			CidrBlock:       pulumi.String("10.0.0.0/16"),
/// 			InstanceTenancy: pulumi.String("default"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("main"),
/// 			},
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
///             .instanceTenancy("default")
///             .tags(Map.of("Name", "main"))
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
///       instanceTenancy: default
///       tags:
///         Name: main
/// ```
///
///
/// VPC with CIDR from AWS IPAM:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const test = new aws.ec2.VpcIpam("test", {operatingRegions: [{
///     regionName: current.then(current => current.region),
/// }]});
/// const testVpcIpamPool = new aws.ec2.VpcIpamPool("test", {
///     addressFamily: "ipv4",
///     ipamScopeId: test.privateDefaultScopeId,
///     locale: current.then(current => current.region),
/// });
/// const testVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("test", {
///     ipamPoolId: testVpcIpamPool.id,
///     cidr: "172.20.0.0/16",
/// });
/// const testVpc = new aws.ec2.Vpc("test", {
///     ipv4IpamPoolId: testVpcIpamPool.id,
///     ipv4NetmaskLength: 28,
/// }, {
///     dependsOn: [testVpcIpamPoolCidr],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// test = aws.ec2.VpcIpam("test", operating_regions=[{
///     "region_name": current.region,
/// }])
/// test_vpc_ipam_pool = aws.ec2.VpcIpamPool("test",
///     address_family="ipv4",
///     ipam_scope_id=test.private_default_scope_id,
///     locale=current.region)
/// test_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("test",
///     ipam_pool_id=test_vpc_ipam_pool.id,
///     cidr="172.20.0.0/16")
/// test_vpc = aws.ec2.Vpc("test",
///     ipv4_ipam_pool_id=test_vpc_ipam_pool.id,
///     ipv4_netmask_length=28,
///     opts = pulumi.ResourceOptions(depends_on=[test_vpc_ipam_pool_cidr]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var test = new Aws.Ec2.VpcIpam("test", new()
///     {
///         OperatingRegions = new[]
///         {
///             new Aws.Ec2.Inputs.VpcIpamOperatingRegionArgs
///             {
///                 RegionName = current.Apply(getRegionResult => getRegionResult.Region),
///             },
///         },
///     });
///
///     var testVpcIpamPool = new Aws.Ec2.VpcIpamPool("test", new()
///     {
///         AddressFamily = "ipv4",
///         IpamScopeId = test.PrivateDefaultScopeId,
///         Locale = current.Apply(getRegionResult => getRegionResult.Region),
///     });
///
///     var testVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("test", new()
///     {
///         IpamPoolId = testVpcIpamPool.Id,
///         Cidr = "172.20.0.0/16",
///     });
///
///     var testVpc = new Aws.Ec2.Vpc("test", new()
///     {
///         Ipv4IpamPoolId = testVpcIpamPool.Id,
///         Ipv4NetmaskLength = 28,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testVpcIpamPoolCidr,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := ec2.NewVpcIpam(ctx, "test", &ec2.VpcIpamArgs{
/// 			OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// 				&ec2.VpcIpamOperatingRegionArgs{
/// 					RegionName: pulumi.String(current.Region),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpcIpamPool, err := ec2.NewVpcIpamPool(ctx, "test", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily: pulumi.String("ipv4"),
/// 			IpamScopeId:   test.PrivateDefaultScopeId,
/// 			Locale:        pulumi.String(current.Region),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "test", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId: testVpcIpamPool.ID(),
/// 			Cidr:       pulumi.String("172.20.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			Ipv4IpamPoolId:    testVpcIpamPool.ID(),
/// 			Ipv4NetmaskLength: pulumi.Int(28),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testVpcIpamPoolCidr,
/// 		}))
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpam;
/// import com.pulumi.aws.ec2.VpcIpamArgs;
/// import com.pulumi.aws.ec2.inputs.VpcIpamOperatingRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpamPool;
/// import com.pulumi.aws.ec2.VpcIpamPoolArgs;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidr;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrArgs;
/// import com.pulumi.aws.ec2.Vpc;
/// import com.pulumi.aws.ec2.VpcArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
///             .build());
///
///         var test = new VpcIpam("test", VpcIpamArgs.builder()
///             .operatingRegions(VpcIpamOperatingRegionArgs.builder()
///                 .regionName(current.region())
///                 .build())
///             .build());
///
///         var testVpcIpamPool = new VpcIpamPool("testVpcIpamPool", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv4")
///             .ipamScopeId(test.privateDefaultScopeId())
///             .locale(current.region())
///             .build());
///
///         var testVpcIpamPoolCidr = new VpcIpamPoolCidr("testVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(testVpcIpamPool.id())
///             .cidr("172.20.0.0/16")
///             .build());
///
///         var testVpc = new Vpc("testVpc", VpcArgs.builder()
///             .ipv4IpamPoolId(testVpcIpamPool.id())
///             .ipv4NetmaskLength(28)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testVpcIpamPoolCidr)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   test:
///     type: aws:ec2:VpcIpam
///     properties:
///       operatingRegions:
///         - regionName: ${current.region}
///   testVpcIpamPool:
///     type: aws:ec2:VpcIpamPool
///     name: test
///     properties:
///       addressFamily: ipv4
///       ipamScopeId: ${test.privateDefaultScopeId}
///       locale: ${current.region}
///   testVpcIpamPoolCidr:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: test
///     properties:
///       ipamPoolId: ${testVpcIpamPool.id}
///       cidr: 172.20.0.0/16
///   testVpc:
///     type: aws:ec2:Vpc
///     name: test
///     properties:
///       ipv4IpamPoolId: ${testVpcIpamPool.id}
///       ipv4NetmaskLength: 28
///     options:
///       dependsOn:
///         - ${testVpcIpamPoolCidr}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import VPCs using the VPC `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpc:Vpc test_vpc vpc-a01106c2
/// ```
class Vpc extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of VPC
  late final pulumi.Output<String> arn;

  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is `false`. Conflicts with `ipv6_ipam_pool_id`
  late final pulumi.Output<bool?> assignGeneratedIpv6CidrBlock;

  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using `ipv4_netmask_length`.
  late final pulumi.Output<String> cidrBlock;

  /// The ID of the network ACL created by default on VPC creation
  late final pulumi.Output<String> defaultNetworkAclId;

  /// The ID of the route table created by default on VPC creation
  late final pulumi.Output<String> defaultRouteTableId;

  /// The ID of the security group created by default on VPC creation
  late final pulumi.Output<String> defaultSecurityGroupId;

  /// DHCP options id of the desired VPC.
  late final pulumi.Output<String> dhcpOptionsId;

  /// A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  late final pulumi.Output<bool> enableDnsHostnames;

  /// A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  late final pulumi.Output<bool?> enableDnsSupport;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  late final pulumi.Output<bool> enableNetworkAddressUsageMetrics;

  /// A tenancy option for instances launched into the VPC. Default is `default`, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is `dedicated`, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  late final pulumi.Output<String?> instanceTenancy;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  late final pulumi.Output<String?> ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a `ipv4_ipam_pool_id`.
  late final pulumi.Output<int?> ipv4NetmaskLength;

  /// The association ID for the IPv6 CIDR block.
  late final pulumi.Output<String> ipv6AssociationId;

  /// IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using `ipv6_netmask_length`.
  late final pulumi.Output<String> ipv6CidrBlock;

  /// By default when an IPv6 CIDR is assigned to a VPC a default ipv6_cidr_block_network_border_group will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  late final pulumi.Output<String> ipv6CidrBlockNetworkBorderGroup;

  /// IPAM Pool ID for a IPv6 pool. Conflicts with `assign_generated_ipv6_cidr_block`.
  late final pulumi.Output<String?> ipv6IpamPoolId;

  /// Netmask length to request from IPAM Pool. Conflicts with `ipv6_cidr_block`. This can be omitted if IPAM pool as a `allocation_default_netmask_length` set. Valid values are from `44` to `60` in increments of 4.
  late final pulumi.Output<int?> ipv6NetmaskLength;

  /// The ID of the main route table associated with
  /// this VPC. Note that you can change a VPC's main route table by using an
  /// `aws.ec2.MainRouteTableAssociation`.
  late final pulumi.Output<String> mainRouteTableId;

  /// The ID of the AWS account that owns the VPC.
  late final pulumi.Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Vpc].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Vpc]. {@macro pulumi_ec2_vpc_vpc_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Vpc(
    String name, {
    VpcArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpc:Vpc',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.arn = registerOutput<String>('arn');
    this.assignGeneratedIpv6CidrBlock =
        registerOutput<bool?>('assignGeneratedIpv6CidrBlock');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.defaultNetworkAclId = registerOutput<String>('defaultNetworkAclId');
    this.defaultRouteTableId = registerOutput<String>('defaultRouteTableId');
    this.defaultSecurityGroupId =
        registerOutput<String>('defaultSecurityGroupId');
    this.dhcpOptionsId = registerOutput<String>('dhcpOptionsId');
    this.enableDnsHostnames = registerOutput<bool>('enableDnsHostnames');
    this.enableDnsSupport = registerOutput<bool?>('enableDnsSupport');
    this.enableNetworkAddressUsageMetrics =
        registerOutput<bool>('enableNetworkAddressUsageMetrics');
    this.instanceTenancy = registerOutput<String?>('instanceTenancy');
    this.ipv4IpamPoolId = registerOutput<String?>('ipv4IpamPoolId');
    this.ipv4NetmaskLength = registerOutput<int?>('ipv4NetmaskLength');
    this.ipv6AssociationId = registerOutput<String>('ipv6AssociationId');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockNetworkBorderGroup =
        registerOutput<String>('ipv6CidrBlockNetworkBorderGroup');
    this.ipv6IpamPoolId = registerOutput<String?>('ipv6IpamPoolId');
    this.ipv6NetmaskLength = registerOutput<int?>('ipv6NetmaskLength');
    this.mainRouteTableId = registerOutput<String>('mainRouteTableId');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
