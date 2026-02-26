import 'package:pulumi/pulumi.dart';
import 'subnet_args.dart';

/// Provides an VPC subnet resource.
///
/// > **NOTE:** Due to [AWS Lambda improved VPC networking changes that began deploying in September 2019](https://aws.amazon.com/blogs/compute/announcing-improved-vpc-networking-for-aws-lambda-functions/), subnets associated with Lambda Functions can take up to 45 minutes to successfully delete. To allow for successful deletion, the provider will wait for at least 45 minutes even if a shorter delete timeout is specified.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Subnet("main", {
/// vpcId: mainAwsVpc.id,
/// cidrBlock: "10.0.1.0/24",
/// tags: {
/// Name: "Main",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Subnet("main",
/// vpc_id=main_aws_vpc["id"],
/// cidr_block="10.0.1.0/24",
/// tags={
/// "Name": "Main",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var main = new Aws.Ec2.Subnet("main", new()
/// {
/// VpcId = mainAwsVpc.Id,
/// CidrBlock = "10.0.1.0/24",
/// Tags =
/// {
/// { "Name", "Main" },
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := ec2.NewSubnet(ctx, "main", &ec2.SubnetArgs{
/// VpcId:     pulumi.Any(mainAwsVpc.Id),
/// CidrBlock: pulumi.String("10.0.1.0/24"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("Main"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new Subnet("main", SubnetArgs.builder()
/// .vpcId(mainAwsVpc.id())
/// .cidrBlock("10.0.1.0/24")
/// .tags(Map.of("Name", "Main"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:ec2:Subnet
/// properties:
/// vpcId: ${mainAwsVpc.id}
/// cidrBlock: 10.0.1.0/24
/// tags:
/// Name: Main
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### Subnets In Secondary VPC CIDR Blocks
///
/// When managing subnets in one of a VPC's secondary CIDR blocks created using a <span pulumi-lang-nodejs="`aws.ec2.VpcIpv4CidrBlockAssociation`" pulumi-lang-dotnet="`aws.ec2.VpcIpv4CidrBlockAssociation`" pulumi-lang-go="`ec2.VpcIpv4CidrBlockAssociation`" pulumi-lang-python="`ec2.VpcIpv4CidrBlockAssociation`" pulumi-lang-yaml="`aws.ec2.VpcIpv4CidrBlockAssociation`" pulumi-lang-java="`aws.ec2.VpcIpv4CidrBlockAssociation`">`aws.ec2.VpcIpv4CidrBlockAssociation`</span>
/// resource, it is recommended to reference that resource's <span pulumi-lang-nodejs="`vpcId`" pulumi-lang-dotnet="`VpcId`" pulumi-lang-go="`vpcId`" pulumi-lang-python="`vpc_id`" pulumi-lang-yaml="`vpcId`" pulumi-lang-java="`vpcId`">`vpc_id`</span> attribute to ensure correct dependency ordering.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const secondaryCidr = new aws.ec2.VpcIpv4CidrBlockAssociation("secondary_cidr", {
/// vpcId: main.id,
/// cidrBlock: "172.20.0.0/16",
/// });
/// const inSecondaryCidr = new aws.ec2.Subnet("in_secondary_cidr", {
/// vpcId: secondaryCidr.vpcId,
/// cidrBlock: "172.20.0.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// secondary_cidr = aws.ec2.VpcIpv4CidrBlockAssociation("secondary_cidr",
/// vpc_id=main["id"],
/// cidr_block="172.20.0.0/16")
/// in_secondary_cidr = aws.ec2.Subnet("in_secondary_cidr",
/// vpc_id=secondary_cidr.vpc_id,
/// cidr_block="172.20.0.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var secondaryCidr = new Aws.Ec2.VpcIpv4CidrBlockAssociation("secondary_cidr", new()
/// {
/// VpcId = main.Id,
/// CidrBlock = "172.20.0.0/16",
/// });
///
/// var inSecondaryCidr = new Aws.Ec2.Subnet("in_secondary_cidr", new()
/// {
/// VpcId = secondaryCidr.VpcId,
/// CidrBlock = "172.20.0.0/24",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// secondaryCidr, err := ec2.NewVpcIpv4CidrBlockAssociation(ctx, "secondary_cidr", &ec2.VpcIpv4CidrBlockAssociationArgs{
/// VpcId:     pulumi.Any(main.Id),
/// CidrBlock: pulumi.String("172.20.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSubnet(ctx, "in_secondary_cidr", &ec2.SubnetArgs{
/// VpcId:     secondaryCidr.VpcId,
/// CidrBlock: pulumi.String("172.20.0.0/24"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var secondaryCidr = new VpcIpv4CidrBlockAssociation("secondaryCidr", VpcIpv4CidrBlockAssociationArgs.builder()
/// .vpcId(main.id())
/// .cidrBlock("172.20.0.0/16")
/// .build());
///
/// var inSecondaryCidr = new Subnet("inSecondaryCidr", SubnetArgs.builder()
/// .vpcId(secondaryCidr.vpcId())
/// .cidrBlock("172.20.0.0/24")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// secondaryCidr:
/// type: aws:ec2:VpcIpv4CidrBlockAssociation
/// name: secondary_cidr
/// properties:
/// vpcId: ${main.id}
/// cidrBlock: 172.20.0.0/16
/// inSecondaryCidr:
/// type: aws:ec2:Subnet
/// name: in_secondary_cidr
/// properties:
/// vpcId: ${secondaryCidr.vpcId}
/// cidrBlock: 172.20.0.0/24
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ### IPAM-Managed Subnets
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const test = new aws.ec2.VpcIpam("test", {operatingRegions: [{
/// regionName: current.then(current => current.region),
/// }]});
/// const testVpcIpamPool = new aws.ec2.VpcIpamPool("test", {
/// addressFamily: "ipv4",
/// ipamScopeId: test.privateDefaultScopeId,
/// locale: current.then(current => current.name),
/// });
/// const testVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("test", {
/// ipamPoolId: testVpcIpamPool.id,
/// cidr: "10.0.0.0/16",
/// });
/// const testVpc = new aws.ec2.Vpc("test", {
/// ipv4IpamPoolId: testVpcIpamPool.id,
/// ipv4NetmaskLength: 24,
/// }, {
/// dependsOn: [testVpcIpamPoolCidr],
/// });
/// const vpc = new aws.ec2.VpcIpamPool("vpc", {
/// addressFamily: "ipv4",
/// ipamScopeId: test.privateDefaultScopeId,
/// locale: current.then(current => current.name),
/// sourceIpamPoolId: testVpcIpamPool.id,
/// sourceResource: {
/// resourceId: testVpc.id,
/// resourceOwner: currentAwsCallerIdentity.accountId,
/// resourceRegion: current.then(current => current.name),
/// resourceType: "vpc",
/// },
/// });
/// const vpcVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("vpc", {
/// ipamPoolId: vpc.id,
/// cidr: testVpc.cidrBlock,
/// });
/// const testSubnet = new aws.ec2.Subnet("test", {
/// vpcId: testVpc.id,
/// ipv4IpamPoolId: vpc.id,
/// ipv4NetmaskLength: 28,
/// availabilityZone: available.names[0],
/// }, {
/// dependsOn: [vpcVpcIpamPoolCidr],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// test = aws.ec2.VpcIpam("test", operating_regions=[{
/// "region_name": current.region,
/// }])
/// test_vpc_ipam_pool = aws.ec2.VpcIpamPool("test",
/// address_family="ipv4",
/// ipam_scope_id=test.private_default_scope_id,
/// locale=current.name)
/// test_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("test",
/// ipam_pool_id=test_vpc_ipam_pool.id,
/// cidr="10.0.0.0/16")
/// test_vpc = aws.ec2.Vpc("test",
/// ipv4_ipam_pool_id=test_vpc_ipam_pool.id,
/// ipv4_netmask_length=24,
/// opts = pulumi.ResourceOptions(depends_on=[test_vpc_ipam_pool_cidr]))
/// vpc = aws.ec2.VpcIpamPool("vpc",
/// address_family="ipv4",
/// ipam_scope_id=test.private_default_scope_id,
/// locale=current.name,
/// source_ipam_pool_id=test_vpc_ipam_pool.id,
/// source_resource={
/// "resource_id": test_vpc.id,
/// "resource_owner": current_aws_caller_identity["accountId"],
/// "resource_region": current.name,
/// "resource_type": "vpc",
/// })
/// vpc_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("vpc",
/// ipam_pool_id=vpc.id,
/// cidr=test_vpc.cidr_block)
/// test_subnet = aws.ec2.Subnet("test",
/// vpc_id=test_vpc.id,
/// ipv4_ipam_pool_id=vpc.id,
/// ipv4_netmask_length=28,
/// availability_zone=available["names"][0],
/// opts = pulumi.ResourceOptions(depends_on=[vpc_vpc_ipam_pool_cidr]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var current = Aws.GetRegion.Invoke();
///
/// var test = new Aws.Ec2.VpcIpam("test", new()
/// {
/// OperatingRegions = new[]
/// {
/// new Aws.Ec2.Inputs.VpcIpamOperatingRegionArgs
/// {
/// RegionName = current.Apply(getRegionResult => getRegionResult.Region),
/// },
/// },
/// });
///
/// var testVpcIpamPool = new Aws.Ec2.VpcIpamPool("test", new()
/// {
/// AddressFamily = "ipv4",
/// IpamScopeId = test.PrivateDefaultScopeId,
/// Locale = current.Apply(getRegionResult => getRegionResult.Name),
/// });
///
/// var testVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("test", new()
/// {
/// IpamPoolId = testVpcIpamPool.Id,
/// Cidr = "10.0.0.0/16",
/// });
///
/// var testVpc = new Aws.Ec2.Vpc("test", new()
/// {
/// Ipv4IpamPoolId = testVpcIpamPool.Id,
/// Ipv4NetmaskLength = 24,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// testVpcIpamPoolCidr,
/// },
/// });
///
/// var vpc = new Aws.Ec2.VpcIpamPool("vpc", new()
/// {
/// AddressFamily = "ipv4",
/// IpamScopeId = test.PrivateDefaultScopeId,
/// Locale = current.Apply(getRegionResult => getRegionResult.Name),
/// SourceIpamPoolId = testVpcIpamPool.Id,
/// SourceResource = new Aws.Ec2.Inputs.VpcIpamPoolSourceResourceArgs
/// {
/// ResourceId = testVpc.Id,
/// ResourceOwner = currentAwsCallerIdentity.AccountId,
/// ResourceRegion = current.Apply(getRegionResult => getRegionResult.Name),
/// ResourceType = "vpc",
/// },
/// });
///
/// var vpcVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("vpc", new()
/// {
/// IpamPoolId = vpc.Id,
/// Cidr = testVpc.CidrBlock,
/// });
///
/// var testSubnet = new Aws.Ec2.Subnet("test", new()
/// {
/// VpcId = testVpc.Id,
/// Ipv4IpamPoolId = vpc.Id,
/// Ipv4NetmaskLength = 28,
/// AvailabilityZone = available.Names[0],
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// vpcVpcIpamPoolCidr,
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws"
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// current, err := aws.GetRegion(ctx, &aws.GetRegionArgs{}, nil)
/// if err != nil {
/// return err
/// }
/// test, err := ec2.NewVpcIpam(ctx, "test", &ec2.VpcIpamArgs{
/// OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// &ec2.VpcIpamOperatingRegionArgs{
/// RegionName: pulumi.String(current.Region),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// testVpcIpamPool, err := ec2.NewVpcIpamPool(ctx, "test", &ec2.VpcIpamPoolArgs{
/// AddressFamily: pulumi.String("ipv4"),
/// IpamScopeId:   test.PrivateDefaultScopeId,
/// Locale:        pulumi.String(current.Name),
/// })
/// if err != nil {
/// return err
/// }
/// testVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "test", &ec2.VpcIpamPoolCidrArgs{
/// IpamPoolId: testVpcIpamPool.ID(),
/// Cidr:       pulumi.String("10.0.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// testVpc, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// Ipv4IpamPoolId:    testVpcIpamPool.ID(),
/// Ipv4NetmaskLength: pulumi.Int(24),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// testVpcIpamPoolCidr,
/// }))
/// if err != nil {
/// return err
/// }
/// vpc, err := ec2.NewVpcIpamPool(ctx, "vpc", &ec2.VpcIpamPoolArgs{
/// AddressFamily:    pulumi.String("ipv4"),
/// IpamScopeId:      test.PrivateDefaultScopeId,
/// Locale:           pulumi.String(current.Name),
/// SourceIpamPoolId: testVpcIpamPool.ID(),
/// SourceResource: &ec2.VpcIpamPoolSourceResourceArgs{
/// ResourceId:     testVpc.ID(),
/// ResourceOwner:  pulumi.Any(currentAwsCallerIdentity.AccountId),
/// ResourceRegion: pulumi.String(current.Name),
/// ResourceType:   pulumi.String("vpc"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// vpcVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "vpc", &ec2.VpcIpamPoolCidrArgs{
/// IpamPoolId: vpc.ID(),
/// Cidr:       testVpc.CidrBlock,
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewSubnet(ctx, "test", &ec2.SubnetArgs{
/// VpcId:             testVpc.ID(),
/// Ipv4IpamPoolId:    vpc.ID(),
/// Ipv4NetmaskLength: pulumi.Int(28),
/// AvailabilityZone:  pulumi.Any(available.Names[0]),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// vpcVpcIpamPoolCidr,
/// }))
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// final var current = AwsFunctions.getRegion(GetRegionArgs.builder()
/// .build());
///
/// var test = new VpcIpam("test", VpcIpamArgs.builder()
/// .operatingRegions(VpcIpamOperatingRegionArgs.builder()
/// .regionName(current.region())
/// .build())
/// .build());
///
/// var testVpcIpamPool = new VpcIpamPool("testVpcIpamPool", VpcIpamPoolArgs.builder()
/// .addressFamily("ipv4")
/// .ipamScopeId(test.privateDefaultScopeId())
/// .locale(current.name())
/// .build());
///
/// var testVpcIpamPoolCidr = new VpcIpamPoolCidr("testVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
/// .ipamPoolId(testVpcIpamPool.id())
/// .cidr("10.0.0.0/16")
/// .build());
///
/// var testVpc = new Vpc("testVpc", VpcArgs.builder()
/// .ipv4IpamPoolId(testVpcIpamPool.id())
/// .ipv4NetmaskLength(24)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(testVpcIpamPoolCidr)
/// .build());
///
/// var vpc = new VpcIpamPool("vpc", VpcIpamPoolArgs.builder()
/// .addressFamily("ipv4")
/// .ipamScopeId(test.privateDefaultScopeId())
/// .locale(current.name())
/// .sourceIpamPoolId(testVpcIpamPool.id())
/// .sourceResource(VpcIpamPoolSourceResourceArgs.builder()
/// .resourceId(testVpc.id())
/// .resourceOwner(currentAwsCallerIdentity.accountId())
/// .resourceRegion(current.name())
/// .resourceType("vpc")
/// .build())
/// .build());
///
/// var vpcVpcIpamPoolCidr = new VpcIpamPoolCidr("vpcVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
/// .ipamPoolId(vpc.id())
/// .cidr(testVpc.cidrBlock())
/// .build());
///
/// var testSubnet = new Subnet("testSubnet", SubnetArgs.builder()
/// .vpcId(testVpc.id())
/// .ipv4IpamPoolId(vpc.id())
/// .ipv4NetmaskLength(28)
/// .availabilityZone(available.names()[0])
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(vpcVpcIpamPoolCidr)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// test:
/// type: aws:ec2:VpcIpam
/// properties:
/// operatingRegions:
/// - regionName: ${current.region}
/// testVpcIpamPool:
/// type: aws:ec2:VpcIpamPool
/// name: test
/// properties:
/// addressFamily: ipv4
/// ipamScopeId: ${test.privateDefaultScopeId}
/// locale: ${current.name}
/// testVpcIpamPoolCidr:
/// type: aws:ec2:VpcIpamPoolCidr
/// name: test
/// properties:
/// ipamPoolId: ${testVpcIpamPool.id}
/// cidr: 10.0.0.0/16
/// testVpc:
/// type: aws:ec2:Vpc
/// name: test
/// properties:
/// ipv4IpamPoolId: ${testVpcIpamPool.id}
/// ipv4NetmaskLength: 24
/// options:
/// dependsOn:
/// - ${testVpcIpamPoolCidr}
/// vpc:
/// type: aws:ec2:VpcIpamPool
/// properties:
/// addressFamily: ipv4
/// ipamScopeId: ${test.privateDefaultScopeId}
/// locale: ${current.name}
/// sourceIpamPoolId: ${testVpcIpamPool.id}
/// sourceResource:
/// resourceId: ${testVpc.id}
/// resourceOwner: ${currentAwsCallerIdentity.accountId}
/// resourceRegion: ${current.name}
/// resourceType: vpc
/// vpcVpcIpamPoolCidr:
/// type: aws:ec2:VpcIpamPoolCidr
/// name: vpc
/// properties:
/// ipamPoolId: ${vpc.id}
/// cidr: ${testVpc.cidrBlock}
/// testSubnet:
/// type: aws:ec2:Subnet
/// name: test
/// properties:
/// vpcId: ${testVpc.id}
/// ipv4IpamPoolId: ${vpc.id}
/// ipv4NetmaskLength: 28
/// availabilityZone: ${available.names[0]}
/// options:
/// dependsOn:
/// - ${vpcVpcIpamPoolCidr}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> (String) ID of the subnet.
///
/// #### Optional
///
/// * <span pulumi-lang-nodejs="`accountId`" pulumi-lang-dotnet="`AccountId`" pulumi-lang-go="`accountId`" pulumi-lang-python="`account_id`" pulumi-lang-yaml="`accountId`" pulumi-lang-java="`accountId`">`account_id`</span> (String) AWS Account where this resource is managed.
/// * <span pulumi-lang-nodejs="`region`" pulumi-lang-dotnet="`Region`" pulumi-lang-go="`region`" pulumi-lang-python="`region`" pulumi-lang-yaml="`region`" pulumi-lang-java="`region`">`region`</span> (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import subnets using the subnet <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/subnet:Subnet example subnet-9d4a7b6c
/// ```
class Subnet extends CustomResource {
  /// The ARN of the subnet.
  late final Output<String> arn;

  /// Specify true to indicate
  /// that network interfaces created in the specified subnet should be
  /// assigned an IPv6 address. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>
  late final Output<bool?> assignIpv6AddressOnCreation;

  /// AZ for the subnet.
  late final Output<String> availabilityZone;

  /// AZ ID of the subnet. This argument is not supported in all regions or partitions. If necessary, use <span pulumi-lang-nodejs="`availabilityZone`" pulumi-lang-dotnet="`AvailabilityZone`" pulumi-lang-go="`availabilityZone`" pulumi-lang-python="`availability_zone`" pulumi-lang-yaml="`availabilityZone`" pulumi-lang-java="`availabilityZone`">`availability_zone`</span> instead.
  late final Output<String> availabilityZoneId;

  /// The IPv4 CIDR block for the subnet.
  late final Output<String> cidrBlock;

  /// The customer owned IPv4 address pool. Typically used with the <span pulumi-lang-nodejs="`mapCustomerOwnedIpOnLaunch`" pulumi-lang-dotnet="`MapCustomerOwnedIpOnLaunch`" pulumi-lang-go="`mapCustomerOwnedIpOnLaunch`" pulumi-lang-python="`map_customer_owned_ip_on_launch`" pulumi-lang-yaml="`mapCustomerOwnedIpOnLaunch`" pulumi-lang-java="`mapCustomerOwnedIpOnLaunch`">`map_customer_owned_ip_on_launch`</span> argument. The <span pulumi-lang-nodejs="`outpostArn`" pulumi-lang-dotnet="`OutpostArn`" pulumi-lang-go="`outpostArn`" pulumi-lang-python="`outpost_arn`" pulumi-lang-yaml="`outpostArn`" pulumi-lang-java="`outpostArn`">`outpost_arn`</span> argument must be specified when configured.
  late final Output<String?> customerOwnedIpv4Pool;

  /// Indicates whether DNS queries made to the Amazon-provided DNS Resolver in this subnet should return synthetic IPv6 addresses for IPv4-only destinations. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableDns64;

  /// Indicates the device position for local network interfaces in this subnet. For example, 1 indicates local network interfaces in this subnet are the secondary network interface (eth1). A local network interface cannot be the primary network interface (eth0).
  late final Output<int?> enableLniAtDeviceIndex;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS A records. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableResourceNameDnsARecordOnLaunch;

  /// Indicates whether to respond to DNS queries for instance hostnames with DNS AAAA records. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> enableResourceNameDnsAaaaRecordOnLaunch;

  /// ID of an IPv4 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  late final Output<String?> ipv4IpamPoolId;

  /// Netmask. Requires specifying a <span pulumi-lang-nodejs="`ipv4IpamPoolId`" pulumi-lang-dotnet="`Ipv4IpamPoolId`" pulumi-lang-go="`ipv4IpamPoolId`" pulumi-lang-python="`ipv4_ipam_pool_id`" pulumi-lang-yaml="`ipv4IpamPoolId`" pulumi-lang-java="`ipv4IpamPoolId`">`ipv4_ipam_pool_id`</span>.
  late final Output<int?> ipv4NetmaskLength;

  /// The IPv6 network range for the subnet,
  /// in CIDR notation. The subnet size must use a /64 prefix length. If the existing IPv6 subnet was created with <span pulumi-lang-nodejs="`assignIpv6AddressOnCreation " pulumi-lang-dotnet="`AssignIpv6AddressOnCreation " pulumi-lang-go="`assignIpv6AddressOnCreation " pulumi-lang-python="`assign_ipv6_address_on_creation " pulumi-lang-yaml="`assignIpv6AddressOnCreation " pulumi-lang-java="`assignIpv6AddressOnCreation ">`assign_ipv6_address_on_creation </span>= true`, changing this value will force resource recreation.
  late final Output<String> ipv6CidrBlock;

  /// The association ID for the IPv6 CIDR block.
  late final Output<String> ipv6CidrBlockAssociationId;

  /// ID of an IPv6 VPC Resource Planning IPAM Pool. The CIDR of this pool is used to allocate the CIDR for the subnet.
  late final Output<String?> ipv6IpamPoolId;

  /// Indicates whether to create an IPv6-only subnet. Default: <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> ipv6Native;

  /// Netmask. Requires specifying a <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>. Valid values are from 44 to 64 in increments of 4.
  late final Output<int?> ipv6NetmaskLength;

  /// Specify <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span> to indicate that network interfaces created in the subnet should be assigned a customer owned IP address. The <span pulumi-lang-nodejs="`customerOwnedIpv4Pool`" pulumi-lang-dotnet="`CustomerOwnedIpv4Pool`" pulumi-lang-go="`customerOwnedIpv4Pool`" pulumi-lang-python="`customer_owned_ipv4_pool`" pulumi-lang-yaml="`customerOwnedIpv4Pool`" pulumi-lang-java="`customerOwnedIpv4Pool`">`customer_owned_ipv4_pool`</span> and <span pulumi-lang-nodejs="`outpostArn`" pulumi-lang-dotnet="`OutpostArn`" pulumi-lang-go="`outpostArn`" pulumi-lang-python="`outpost_arn`" pulumi-lang-yaml="`outpostArn`" pulumi-lang-java="`outpostArn`">`outpost_arn`</span> arguments must be specified when set to <span pulumi-lang-nodejs="`true`" pulumi-lang-dotnet="`True`" pulumi-lang-go="`true`" pulumi-lang-python="`true`" pulumi-lang-yaml="`true`" pulumi-lang-java="`true`">`true`</span>. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> mapCustomerOwnedIpOnLaunch;

  /// Specify true to indicate that instances launched into the subnet should be assigned a public IP address. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>.
  late final Output<bool?> mapPublicIpOnLaunch;

  /// The Amazon Resource Name (ARN) of the Outpost.
  late final Output<String?> outpostArn;

  /// The ID of the AWS account that owns the subnet.
  late final Output<String> ownerId;

  /// The type of hostnames to assign to instances in the subnet at launch. For IPv6-only subnets, an instance DNS name must be based on the instance ID. For dual-stack and IPv4-only subnets, you can specify whether DNS names use the instance IPv4 address or the instance ID. Valid values: `ip-name`, `resource-name`.
  late final Output<String> privateDnsHostnameTypeOnLaunch;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  /// The VPC ID.
  late final Output<String> vpcId;

  Subnet(
    String name, {
    SubnetArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/subnet:Subnet',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.assignIpv6AddressOnCreation = Output.createUnknown<bool?>();
    this.availabilityZone = Output.createUnknown<String>();
    this.availabilityZoneId = Output.createUnknown<String>();
    this.cidrBlock = Output.createUnknown<String>();
    this.customerOwnedIpv4Pool = Output.createUnknown<String?>();
    this.enableDns64 = Output.createUnknown<bool?>();
    this.enableLniAtDeviceIndex = Output.createUnknown<int?>();
    this.enableResourceNameDnsARecordOnLaunch = Output.createUnknown<bool?>();
    this.enableResourceNameDnsAaaaRecordOnLaunch =
        Output.createUnknown<bool?>();
    this.ipv4IpamPoolId = Output.createUnknown<String?>();
    this.ipv4NetmaskLength = Output.createUnknown<int?>();
    this.ipv6CidrBlock = Output.createUnknown<String>();
    this.ipv6CidrBlockAssociationId = Output.createUnknown<String>();
    this.ipv6IpamPoolId = Output.createUnknown<String?>();
    this.ipv6Native = Output.createUnknown<bool?>();
    this.ipv6NetmaskLength = Output.createUnknown<int?>();
    this.mapCustomerOwnedIpOnLaunch = Output.createUnknown<bool?>();
    this.mapPublicIpOnLaunch = Output.createUnknown<bool?>();
    this.outpostArn = Output.createUnknown<String?>();
    this.ownerId = Output.createUnknown<String>();
    this.privateDnsHostnameTypeOnLaunch = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
    this.vpcId = Output.createUnknown<String>();
  }
}
