import 'package:pulumi/pulumi.dart' as pulumi;
import 'subnet_args.dart';

/// Provides an VPC subnet resource.
///
/// > **NOTE:** Due to [AWS Lambda improved VPC networking changes that began deploying in September 2019](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/), subnets associated with Lambda Functions can take up to 45 minutes to successfully delete. To allow for successful deletion, the provider will wait for at least 45 minutes even if a shorter delete timeout is specified.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Subnet("main", {
///     vpcId: mainAwsVpc.id,
///     cidrBlock: "10.0.1.0/24",
///     tags: {
///         Name: "Main",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Subnet("main",
///     vpc_id=main_aws_vpc["id"],
///     cidr_block="10.0.1.0/24",
///     tags={
///         "Name": "Main",
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
///     var main = new Aws.Ec2.Subnet("main", new()
///     {
///         VpcId = mainAwsVpc.Id,
///         CidrBlock = "10.0.1.0/24",
///         Tags =
///         {
///             { "Name", "Main" },
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
/// 		_, err := ec2.NewSubnet(ctx, "main", &ec2.SubnetArgs{
/// 			VpcId:     pulumi.Any(mainAwsVpc.Id),
/// 			CidrBlock: pulumi.String("10.0.1.0/24"),
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("Main"),
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
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
///         var main = new Subnet("main", SubnetArgs.builder()
///             .vpcId(mainAwsVpc.id())
///             .cidrBlock("10.0.1.0/24")
///             .tags(Map.of("Name", "Main"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:Subnet
///     properties:
///       vpcId: ${mainAwsVpc.id}
///       cidrBlock: 10.0.1.0/24
///       tags:
///         Name: Main
/// ```
///
///
/// ### Subnets In Secondary VPC CIDR Blocks
///
/// When managing subnets in one of a VPC's secondary CIDR blocks created using a `aws.ec2.VpcIpv4CidrBlockAssociation`
/// resource, it is recommended to reference that resource's `vpc_id` attribute to ensure correct dependency ordering.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const secondaryCidr = new aws.ec2.VpcIpv4CidrBlockAssociation("secondary_cidr", {
///     vpcId: main.id,
///     cidrBlock: "172.20.0.0/16",
/// });
/// const inSecondaryCidr = new aws.ec2.Subnet("in_secondary_cidr", {
///     vpcId: secondaryCidr.vpcId,
///     cidrBlock: "172.20.0.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// secondary_cidr = aws.ec2.VpcIpv4CidrBlockAssociation("secondary_cidr",
///     vpc_id=main["id"],
///     cidr_block="172.20.0.0/16")
/// in_secondary_cidr = aws.ec2.Subnet("in_secondary_cidr",
///     vpc_id=secondary_cidr.vpc_id,
///     cidr_block="172.20.0.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var secondaryCidr = new Aws.Ec2.VpcIpv4CidrBlockAssociation("secondary_cidr", new()
///     {
///         VpcId = main.Id,
///         CidrBlock = "172.20.0.0/16",
///     });
///
///     var inSecondaryCidr = new Aws.Ec2.Subnet("in_secondary_cidr", new()
///     {
///         VpcId = secondaryCidr.VpcId,
///         CidrBlock = "172.20.0.0/24",
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
/// 		secondaryCidr, err := ec2.NewVpcIpv4CidrBlockAssociation(ctx, "secondary_cidr", &ec2.VpcIpv4CidrBlockAssociationArgs{
/// 			VpcId:     pulumi.Any(main.Id),
/// 			CidrBlock: pulumi.String("172.20.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSubnet(ctx, "in_secondary_cidr", &ec2.SubnetArgs{
/// 			VpcId:     secondaryCidr.VpcId,
/// 			CidrBlock: pulumi.String("172.20.0.0/24"),
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
/// import com.pulumi.aws.ec2.VpcIpv4CidrBlockAssociation;
/// import com.pulumi.aws.ec2.VpcIpv4CidrBlockAssociationArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
///         var secondaryCidr = new VpcIpv4CidrBlockAssociation("secondaryCidr", VpcIpv4CidrBlockAssociationArgs.builder()
///             .vpcId(main.id())
///             .cidrBlock("172.20.0.0/16")
///             .build());
///
///         var inSecondaryCidr = new Subnet("inSecondaryCidr", SubnetArgs.builder()
///             .vpcId(secondaryCidr.vpcId())
///             .cidrBlock("172.20.0.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   secondaryCidr:
///     type: aws:ec2:VpcIpv4CidrBlockAssociation
///     name: secondary_cidr
///     properties:
///       vpcId: ${main.id}
///       cidrBlock: 172.20.0.0/16
///   inSecondaryCidr:
///     type: aws:ec2:Subnet
///     name: in_secondary_cidr
///     properties:
///       vpcId: ${secondaryCidr.vpcId}
///       cidrBlock: 172.20.0.0/24
/// ```
///
///
/// ### IPAM-Managed Subnets
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
///     locale: current.then(current => current.name),
/// });
/// const testVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("test", {
///     ipamPoolId: testVpcIpamPool.id,
///     cidr: "10.0.0.0/16",
/// });
/// const testVpc = new aws.ec2.Vpc("test", {
///     ipv4IpamPoolId: testVpcIpamPool.id,
///     ipv4NetmaskLength: 24,
/// }, {
///     dependsOn: [testVpcIpamPoolCidr],
/// });
/// const vpc = new aws.ec2.VpcIpamPool("vpc", {
///     addressFamily: "ipv4",
///     ipamScopeId: test.privateDefaultScopeId,
///     locale: current.then(current => current.name),
///     sourceIpamPoolId: testVpcIpamPool.id,
///     sourceResource: {
///         resourceId: testVpc.id,
///         resourceOwner: currentAwsCallerIdentity.accountId,
///         resourceRegion: current.then(current => current.name),
///         resourceType: "vpc",
///     },
/// });
/// const vpcVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("vpc", {
///     ipamPoolId: vpc.id,
///     cidr: testVpc.cidrBlock,
/// });
/// const testSubnet = new aws.ec2.Subnet("test", {
///     vpcId: testVpc.id,
///     ipv4IpamPoolId: vpc.id,
///     ipv4NetmaskLength: 28,
///     availabilityZone: available.names[0],
/// }, {
///     dependsOn: [vpcVpcIpamPoolCidr],
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
///     locale=current.name)
/// test_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("test",
///     ipam_pool_id=test_vpc_ipam_pool.id,
///     cidr="10.0.0.0/16")
/// test_vpc = aws.ec2.Vpc("test",
///     ipv4_ipam_pool_id=test_vpc_ipam_pool.id,
///     ipv4_netmask_length=24,
///     opts = pulumi.ResourceOptions(depends_on=[test_vpc_ipam_pool_cidr]))
/// vpc = aws.ec2.VpcIpamPool("vpc",
///     address_family="ipv4",
///     ipam_scope_id=test.private_default_scope_id,
///     locale=current.name,
///     source_ipam_pool_id=test_vpc_ipam_pool.id,
///     source_resource={
///         "resource_id": test_vpc.id,
///         "resource_owner": current_aws_caller_identity["accountId"],
///         "resource_region": current.name,
///         "resource_type": "vpc",
///     })
/// vpc_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("vpc",
///     ipam_pool_id=vpc.id,
///     cidr=test_vpc.cidr_block)
/// test_subnet = aws.ec2.Subnet("test",
///     vpc_id=test_vpc.id,
///     ipv4_ipam_pool_id=vpc.id,
///     ipv4_netmask_length=28,
///     availability_zone=available["names"][0],
///     opts = pulumi.ResourceOptions(depends_on=[vpc_vpc_ipam_pool_cidr]))
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
///         Locale = current.Apply(getRegionResult => getRegionResult.Name),
///     });
///
///     var testVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("test", new()
///     {
///         IpamPoolId = testVpcIpamPool.Id,
///         Cidr = "10.0.0.0/16",
///     });
///
///     var testVpc = new Aws.Ec2.Vpc("test", new()
///     {
///         Ipv4IpamPoolId = testVpcIpamPool.Id,
///         Ipv4NetmaskLength = 24,
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             testVpcIpamPoolCidr,
///         },
///     });
///
///     var vpc = new Aws.Ec2.VpcIpamPool("vpc", new()
///     {
///         AddressFamily = "ipv4",
///         IpamScopeId = test.PrivateDefaultScopeId,
///         Locale = current.Apply(getRegionResult => getRegionResult.Name),
///         SourceIpamPoolId = testVpcIpamPool.Id,
///         SourceResource = new Aws.Ec2.Inputs.VpcIpamPoolSourceResourceArgs
///         {
///             ResourceId = testVpc.Id,
///             ResourceOwner = currentAwsCallerIdentity.AccountId,
///             ResourceRegion = current.Apply(getRegionResult => getRegionResult.Name),
///             ResourceType = "vpc",
///         },
///     });
///
///     var vpcVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("vpc", new()
///     {
///         IpamPoolId = vpc.Id,
///         Cidr = testVpc.CidrBlock,
///     });
///
///     var testSubnet = new Aws.Ec2.Subnet("test", new()
///     {
///         VpcId = testVpc.Id,
///         Ipv4IpamPoolId = vpc.Id,
///         Ipv4NetmaskLength = 28,
///         AvailabilityZone = available.Names[0],
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             vpcVpcIpamPoolCidr,
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
/// 			Locale:        pulumi.String(current.Name),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "test", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId: testVpcIpamPool.ID(),
/// 			Cidr:       pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpc, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			Ipv4IpamPoolId:    testVpcIpamPool.ID(),
/// 			Ipv4NetmaskLength: pulumi.Int(24),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testVpcIpamPoolCidr,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpc, err := ec2.NewVpcIpamPool(ctx, "vpc", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily:    pulumi.String("ipv4"),
/// 			IpamScopeId:      test.PrivateDefaultScopeId,
/// 			Locale:           pulumi.String(current.Name),
/// 			SourceIpamPoolId: testVpcIpamPool.ID(),
/// 			SourceResource: &ec2.VpcIpamPoolSourceResourceArgs{
/// 				ResourceId:     testVpc.ID(),
/// 				ResourceOwner:  pulumi.Any(currentAwsCallerIdentity.AccountId),
/// 				ResourceRegion: pulumi.String(current.Name),
/// 				ResourceType:   pulumi.String("vpc"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		vpcVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "vpc", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId: vpc.ID(),
/// 			Cidr:       testVpc.CidrBlock,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewSubnet(ctx, "test", &ec2.SubnetArgs{
/// 			VpcId:             testVpc.ID(),
/// 			Ipv4IpamPoolId:    vpc.ID(),
/// 			Ipv4NetmaskLength: pulumi.Int(28),
/// 			AvailabilityZone:  pulumi.Any(available.Names[0]),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			vpcVpcIpamPoolCidr,
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
/// import com.pulumi.aws.ec2.inputs.VpcIpamPoolSourceResourceArgs;
/// import com.pulumi.aws.ec2.Subnet;
/// import com.pulumi.aws.ec2.SubnetArgs;
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
///             .locale(current.name())
///             .build());
///
///         var testVpcIpamPoolCidr = new VpcIpamPoolCidr("testVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(testVpcIpamPool.id())
///             .cidr("10.0.0.0/16")
///             .build());
///
///         var testVpc = new Vpc("testVpc", VpcArgs.builder()
///             .ipv4IpamPoolId(testVpcIpamPool.id())
///             .ipv4NetmaskLength(24)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testVpcIpamPoolCidr)
///                 .build());
///
///         var vpc = new VpcIpamPool("vpc", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv4")
///             .ipamScopeId(test.privateDefaultScopeId())
///             .locale(current.name())
///             .sourceIpamPoolId(testVpcIpamPool.id())
///             .sourceResource(VpcIpamPoolSourceResourceArgs.builder()
///                 .resourceId(testVpc.id())
///                 .resourceOwner(currentAwsCallerIdentity.accountId())
///                 .resourceRegion(current.name())
///                 .resourceType("vpc")
///                 .build())
///             .build());
///
///         var vpcVpcIpamPoolCidr = new VpcIpamPoolCidr("vpcVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(vpc.id())
///             .cidr(testVpc.cidrBlock())
///             .build());
///
///         var testSubnet = new Subnet("testSubnet", SubnetArgs.builder()
///             .vpcId(testVpc.id())
///             .ipv4IpamPoolId(vpc.id())
///             .ipv4NetmaskLength(28)
///             .availabilityZone(available.names()[0])
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(vpcVpcIpamPoolCidr)
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
///       locale: ${current.name}
///   testVpcIpamPoolCidr:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: test
///     properties:
///       ipamPoolId: ${testVpcIpamPool.id}
///       cidr: 10.0.0.0/16
///   testVpc:
///     type: aws:ec2:Vpc
///     name: test
///     properties:
///       ipv4IpamPoolId: ${testVpcIpamPool.id}
///       ipv4NetmaskLength: 24
///     options:
///       dependsOn:
///         - ${testVpcIpamPoolCidr}
///   vpc:
///     type: aws:ec2:VpcIpamPool
///     properties:
///       addressFamily: ipv4
///       ipamScopeId: ${test.privateDefaultScopeId}
///       locale: ${current.name}
///       sourceIpamPoolId: ${testVpcIpamPool.id}
///       sourceResource:
///         resourceId: ${testVpc.id}
///         resourceOwner: ${currentAwsCallerIdentity.accountId}
///         resourceRegion: ${current.name}
///         resourceType: vpc
///   vpcVpcIpamPoolCidr:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: vpc
///     properties:
///       ipamPoolId: ${vpc.id}
///       cidr: ${testVpc.cidrBlock}
///   testSubnet:
///     type: aws:ec2:Subnet
///     name: test
///     properties:
///       vpcId: ${testVpc.id}
///       ipv4IpamPoolId: ${vpc.id}
///       ipv4NetmaskLength: 28
///       availabilityZone: ${available.names[0]}
///     options:
///       dependsOn:
///         - ${vpcVpcIpamPoolCidr}
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
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) ID of the subnet.
///
/// #### Optional
///
/// * `account_id` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import subnets using the subnet `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/subnet:Subnet example subnet-9d4a7b6c
/// ```
class Subnet extends pulumi.CustomResource {
  /// The ARN of the subnet.
  late final pulumi.Output<String> arn;

  /// Specify true to indicate
  /// that network interfaces created in the specified subnet should be
  /// assigned an IPv6 address. Default is `false`
  late final pulumi.Output<bool?> assignIpv6AddressOnCreation;

  /// AZ for the subnet.
  late final pulumi.Output<String> availabilityZone;

  /// AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use `availability_zone` instead.
  late final pulumi.Output<String> availabilityZoneId;

  /// The IPv4 CIDR block for the subnet.
  late final pulumi.Output<String> cidrBlock;

  /// The customer owned IPv4 address pool. Typically used with the `map_customer_owned_ip_on_launch` argument. The `outpost_arn` argument must be specified when configured.
  late final pulumi.Output<String?> customerOwnedIpv4Pool;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: `false`.
  late final pulumi.Output<bool?> enableDns64;

  /// Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  late final pulumi.Output<int?> enableLniAtDeviceIndex;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: `false`.
  late final pulumi.Output<bool?> enableResourceNameDnsARecordOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: `false`.
  late final pulumi.Output<bool?> enableResourceNameDnsAaaaRecordOnLaunch;

  /// ID of an IPv4 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  late final pulumi.Output<String?> ipv4IpamPoolId;

  /// Netmask. Requires specifying a `ipv4_ipam_pool_id`.
  late final pulumi.Output<int?> ipv4NetmaskLength;

  /// The IPv6 network range for the subnet,
  /// in CIDR notation. The subnet size must use a /64 prefix length. If the existing IPv6 subnet was created with `assign_ipv6_address_on_creation = true`, changing this value will force resource recreation.
  late final pulumi.Output<String> ipv6CidrBlock;

  /// The association ID for the IPv6 CIDR block.
  late final pulumi.Output<String> ipv6CidrBlockAssociationId;

  /// ID of an IPv6 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  late final pulumi.Output<String?> ipv6IpamPoolId;

  /// Indicates whether to create an IPv6-only subnet. Default: `false`.
  late final pulumi.Output<bool?> ipv6Native;

  /// Netmask. Requires specifying a `ipv6_ipam_pool_id`. Valid values are from 44 to 64 in increments of 4.
  late final pulumi.Output<int?> ipv6NetmaskLength;

  /// Specify `true` to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The `customer_owned_ipv4_pool` and `outpost_arn` arguments must be specified when set to `true`. Default is `false`.
  late final pulumi.Output<bool?> mapCustomerOwnedIpOnLaunch;

  /// Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is `false`.
  late final pulumi.Output<bool?> mapPublicIpOnLaunch;

  /// The Amazon Resource Name (ARN) of the Outpost.
  late final pulumi.Output<String?> outpostArn;

  /// The ID of the AWS account that owns the subnet.
  late final pulumi.Output<String> ownerId;

  /// The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  late final pulumi.Output<String> privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// The VPC ID.
  late final pulumi.Output<String> vpcId;

  /// Creates a new [Subnet].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Subnet]. {@macro pulumi_ec2_subnet_subnet_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Subnet(String name, {SubnetArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:ec2/subnet:Subnet',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    this.arn = registerOutput<String>('arn');
    this.assignIpv6AddressOnCreation = registerOutput<bool?>(
      'assignIpv6AddressOnCreation',
    );
    this.availabilityZone = registerOutput<String>('availabilityZone');
    this.availabilityZoneId = registerOutput<String>('availabilityZoneId');
    this.cidrBlock = registerOutput<String>('cidrBlock');
    this.customerOwnedIpv4Pool = registerOutput<String?>(
      'customerOwnedIpv4Pool',
    );
    this.enableDns64 = registerOutput<bool?>('enableDns64');
    this.enableLniAtDeviceIndex = registerOutput<int?>(
      'enableLniAtDeviceIndex',
    );
    this.enableResourceNameDnsARecordOnLaunch = registerOutput<bool?>(
      'enableResourceNameDnsARecordOnLaunch',
    );
    this.enableResourceNameDnsAaaaRecordOnLaunch = registerOutput<bool?>(
      'enableResourceNameDnsAaaaRecordOnLaunch',
    );
    this.ipv4IpamPoolId = registerOutput<String?>('ipv4IpamPoolId');
    this.ipv4NetmaskLength = registerOutput<int?>('ipv4NetmaskLength');
    this.ipv6CidrBlock = registerOutput<String>('ipv6CidrBlock');
    this.ipv6CidrBlockAssociationId = registerOutput<String>(
      'ipv6CidrBlockAssociationId',
    );
    this.ipv6IpamPoolId = registerOutput<String?>('ipv6IpamPoolId');
    this.ipv6Native = registerOutput<bool?>('ipv6Native');
    this.ipv6NetmaskLength = registerOutput<int?>('ipv6NetmaskLength');
    this.mapCustomerOwnedIpOnLaunch = registerOutput<bool?>(
      'mapCustomerOwnedIpOnLaunch',
    );
    this.mapPublicIpOnLaunch = registerOutput<bool?>('mapPublicIpOnLaunch');
    this.outpostArn = registerOutput<String?>('outpostArn');
    this.ownerId = registerOutput<String>('ownerId');
    this.privateDnsHostnameTypeOnLaunch = registerOutput<String>(
      'privateDnsHostnameTypeOnLaunch',
    );
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.vpcId = registerOutput<String>('vpcId');
  }
}
