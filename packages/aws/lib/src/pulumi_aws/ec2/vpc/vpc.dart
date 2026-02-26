import 'package:pulumi/pulumi.dart';
import 'vpc_args.dart';

/// Provides a VPC resource.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
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
/// var main = new Aws.Ec2.Vpc("main", new()
/// {
/// CidrBlock = "10.0.0.0/16",
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
/// _, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// CidrBlock: pulumi.String("10.0.0.0/16"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new Vpc("main", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// ```
/// <!--End PulumiCodeChooser -->
///
/// Basic usage with tags:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const main = new aws.ec2.Vpc("main", {
/// cidrBlock: "10.0.0.0/16",
/// instanceTenancy: "default",
/// tags: {
/// Name: "main",
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// main = aws.ec2.Vpc("main",
/// cidr_block="10.0.0.0/16",
/// instance_tenancy="default",
/// tags={
/// "Name": "main",
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
/// var main = new Aws.Ec2.Vpc("main", new()
/// {
/// CidrBlock = "10.0.0.0/16",
/// InstanceTenancy = "default",
/// Tags =
/// {
/// { "Name", "main" },
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
/// _, err := ec2.NewVpc(ctx, "main", &ec2.VpcArgs{
/// CidrBlock:       pulumi.String("10.0.0.0/16"),
/// InstanceTenancy: pulumi.String("default"),
/// Tags: pulumi.StringMap{
/// "Name": pulumi.String("main"),
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
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var main = new Vpc("main", VpcArgs.builder()
/// .cidrBlock("10.0.0.0/16")
/// .instanceTenancy("default")
/// .tags(Map.of("Name", "main"))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// main:
/// type: aws:ec2:Vpc
/// properties:
/// cidrBlock: 10.0.0.0/16
/// instanceTenancy: default
/// tags:
/// Name: main
/// ```
/// <!--End PulumiCodeChooser -->
///
/// VPC with CIDR from AWS IPAM:
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
/// locale: current.then(current => current.region),
/// });
/// const testVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("test", {
/// ipamPoolId: testVpcIpamPool.id,
/// cidr: "172.20.0.0/16",
/// });
/// const testVpc = new aws.ec2.Vpc("test", {
/// ipv4IpamPoolId: testVpcIpamPool.id,
/// ipv4NetmaskLength: 28,
/// }, {
/// dependsOn: [testVpcIpamPoolCidr],
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
/// locale=current.region)
/// test_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("test",
/// ipam_pool_id=test_vpc_ipam_pool.id,
/// cidr="172.20.0.0/16")
/// test_vpc = aws.ec2.Vpc("test",
/// ipv4_ipam_pool_id=test_vpc_ipam_pool.id,
/// ipv4_netmask_length=28,
/// opts = pulumi.ResourceOptions(depends_on=[test_vpc_ipam_pool_cidr]))
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
/// Locale = current.Apply(getRegionResult => getRegionResult.Region),
/// });
///
/// var testVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("test", new()
/// {
/// IpamPoolId = testVpcIpamPool.Id,
/// Cidr = "172.20.0.0/16",
/// });
///
/// var testVpc = new Aws.Ec2.Vpc("test", new()
/// {
/// Ipv4IpamPoolId = testVpcIpamPool.Id,
/// Ipv4NetmaskLength = 28,
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// testVpcIpamPoolCidr,
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
/// Locale:        pulumi.String(current.Region),
/// })
/// if err != nil {
/// return err
/// }
/// testVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "test", &ec2.VpcIpamPoolCidrArgs{
/// IpamPoolId: testVpcIpamPool.ID(),
/// Cidr:       pulumi.String("172.20.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// Ipv4IpamPoolId:    testVpcIpamPool.ID(),
/// Ipv4NetmaskLength: pulumi.Int(28),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// testVpcIpamPoolCidr,
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
/// .locale(current.region())
/// .build());
///
/// var testVpcIpamPoolCidr = new VpcIpamPoolCidr("testVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
/// .ipamPoolId(testVpcIpamPool.id())
/// .cidr("172.20.0.0/16")
/// .build());
///
/// var testVpc = new Vpc("testVpc", VpcArgs.builder()
/// .ipv4IpamPoolId(testVpcIpamPool.id())
/// .ipv4NetmaskLength(28)
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(testVpcIpamPoolCidr)
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
/// locale: ${current.region}
/// testVpcIpamPoolCidr:
/// type: aws:ec2:VpcIpamPoolCidr
/// name: test
/// properties:
/// ipamPoolId: ${testVpcIpamPool.id}
/// cidr: 172.20.0.0/16
/// testVpc:
/// type: aws:ec2:Vpc
/// name: test
/// properties:
/// ipv4IpamPoolId: ${testVpcIpamPool.id}
/// ipv4NetmaskLength: 28
/// options:
/// dependsOn:
/// - ${testVpcIpamPoolCidr}
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
/// Using `pulumi import`, import VPCs using the VPC <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpc:Vpc test_vpc vpc-a01106c2
/// ```
class Vpc extends CustomResource {
  /// Amazon Resource Name (ARN) of VPC
  late final Output<String> arn;

  /// Requests an Amazon-provided IPv6 CIDR block with a /56 prefix length for the VPC. You cannot specify the range of IP addresses, or the size of the CIDR block. Default is <span pulumi-lang-nodejs="`false`" pulumi-lang-dotnet="`False`" pulumi-lang-go="`false`" pulumi-lang-python="`false`" pulumi-lang-yaml="`false`" pulumi-lang-java="`false`">`false`</span>. Conflicts with <span pulumi-lang-nodejs="`ipv6IpamPoolId`" pulumi-lang-dotnet="`Ipv6IpamPoolId`" pulumi-lang-go="`ipv6IpamPoolId`" pulumi-lang-python="`ipv6_ipam_pool_id`" pulumi-lang-yaml="`ipv6IpamPoolId`" pulumi-lang-java="`ipv6IpamPoolId`">`ipv6_ipam_pool_id`</span>
  late final Output<bool?> assignGeneratedIpv6CidrBlock;

  /// The IPv4 CIDR block for the VPC. CIDR can be explicitly set or it can be derived from IPAM using <span pulumi-lang-nodejs="`ipv4NetmaskLength`" pulumi-lang-dotnet="`Ipv4NetmaskLength`" pulumi-lang-go="`ipv4NetmaskLength`" pulumi-lang-python="`ipv4_netmask_length`" pulumi-lang-yaml="`ipv4NetmaskLength`" pulumi-lang-java="`ipv4NetmaskLength`">`ipv4_netmask_length`</span>.
  late final Output<String> cidrBlock;

  /// The ID of the network ACL created by default on VPC creation
  late final Output<String> defaultNetworkAclId;

  /// The ID of the route table created by default on VPC creation
  late final Output<String> defaultRouteTableId;

  /// The ID of the security group created by default on VPC creation
  late final Output<String> defaultSecurityGroupId;

  /// DHCP options id of the desired VPC.
  late final Output<String> dhcpOptionsId;

  /// A boolean flag to enable/disable DNS hostnames in the VPC. Defaults false.
  late final Output<bool> enableDnsHostnames;

  /// A boolean flag to enable/disable DNS support in the VPC. Defaults to true.
  late final Output<bool?> enableDnsSupport;

  /// Indicates whether Network Address Usage metrics are enabled for your VPC. Defaults to false.
  late final Output<bool> enableNetworkAddressUsageMetrics;

  /// A tenancy option for instances launched into the VPC. Default is <span pulumi-lang-nodejs="`default`" pulumi-lang-dotnet="`Default`" pulumi-lang-go="`default`" pulumi-lang-python="`default`" pulumi-lang-yaml="`default`" pulumi-lang-java="`default`">`default`</span>, which ensures that EC2 instances launched in this VPC use the EC2 instance tenancy attribute specified when the EC2 instance is launched. The only other option is <span pulumi-lang-nodejs="`dedicated`" pulumi-lang-dotnet="`Dedicated`" pulumi-lang-go="`dedicated`" pulumi-lang-python="`dedicated`" pulumi-lang-yaml="`dedicated`" pulumi-lang-java="`dedicated`">`dedicated`</span>, which ensures that EC2 instances launched in this VPC are run on dedicated tenancy instances regardless of the tenancy attribute specified at launch. This has a dedicated per region fee of $2 per hour, plus an hourly per instance usage fee.
  late final Output<String?> instanceTenancy;

  /// The ID of an IPv4 IPAM pool you want to use for allocating this VPC's CIDR. IPAM is a VPC feature that you can use to automate your IP address management workflows including assigning, tracking, troubleshooting, and auditing IP addresses across AWS Regions and accounts. Using IPAM you can monitor IP address usage throughout your AWS Organization.
  late final Output<String?> ipv4IpamPoolId;

  /// The netmask length of the IPv4 CIDR you want to allocate to this VPC. Requires specifying a <span pulumi-lang-nodejs="`ipv4IpamPoolId`" pulumi-lang-dotnet="`Ipv4IpamPoolId`" pulumi-lang-go="`ipv4IpamPoolId`" pulumi-lang-python="`ipv4_ipam_pool_id`" pulumi-lang-yaml="`ipv4IpamPoolId`" pulumi-lang-java="`ipv4IpamPoolId`">`ipv4_ipam_pool_id`</span>.
  late final Output<int?> ipv4NetmaskLength;

  /// The association ID for the IPv6 CIDR block.
  late final Output<String> ipv6AssociationId;

  /// IPv6 CIDR block to request from an IPAM Pool. Can be set explicitly or derived from IPAM using <span pulumi-lang-nodejs="`ipv6NetmaskLength`" pulumi-lang-dotnet="`Ipv6NetmaskLength`" pulumi-lang-go="`ipv6NetmaskLength`" pulumi-lang-python="`ipv6_netmask_length`" pulumi-lang-yaml="`ipv6NetmaskLength`" pulumi-lang-java="`ipv6NetmaskLength`">`ipv6_netmask_length`</span>.
  late final Output<String> ipv6CidrBlock;

  /// By default when an IPv6 CIDR is assigned to a VPC a default<span pulumi-lang-nodejs=" ipv6CidrBlockNetworkBorderGroup " pulumi-lang-dotnet=" Ipv6CidrBlockNetworkBorderGroup " pulumi-lang-go=" ipv6CidrBlockNetworkBorderGroup " pulumi-lang-python=" ipv6_cidr_block_network_border_group " pulumi-lang-yaml=" ipv6CidrBlockNetworkBorderGroup " pulumi-lang-java=" ipv6CidrBlockNetworkBorderGroup "> ipv6_cidr_block_network_border_group </span>will be set to the region of the VPC. This can be changed to restrict advertisement of public addresses to specific Network Border Groups such as LocalZones.
  late final Output<String> ipv6CidrBlockNetworkBorderGroup;

  /// IPAM Pool ID for a IPv6 pool. Conflicts with <span pulumi-lang-nodejs="`assignGeneratedIpv6CidrBlock`" pulumi-lang-dotnet="`AssignGeneratedIpv6CidrBlock`" pulumi-lang-go="`assignGeneratedIpv6CidrBlock`" pulumi-lang-python="`assign_generated_ipv6_cidr_block`" pulumi-lang-yaml="`assignGeneratedIpv6CidrBlock`" pulumi-lang-java="`assignGeneratedIpv6CidrBlock`">`assign_generated_ipv6_cidr_block`</span>.
  late final Output<String?> ipv6IpamPoolId;

  /// Netmask length to request from IPAM Pool. Conflicts with <span pulumi-lang-nodejs="`ipv6CidrBlock`" pulumi-lang-dotnet="`Ipv6CidrBlock`" pulumi-lang-go="`ipv6CidrBlock`" pulumi-lang-python="`ipv6_cidr_block`" pulumi-lang-yaml="`ipv6CidrBlock`" pulumi-lang-java="`ipv6CidrBlock`">`ipv6_cidr_block`</span>. This can be omitted if IPAM pool as a <span pulumi-lang-nodejs="`allocationDefaultNetmaskLength`" pulumi-lang-dotnet="`AllocationDefaultNetmaskLength`" pulumi-lang-go="`allocationDefaultNetmaskLength`" pulumi-lang-python="`allocation_default_netmask_length`" pulumi-lang-yaml="`allocationDefaultNetmaskLength`" pulumi-lang-java="`allocationDefaultNetmaskLength`">`allocation_default_netmask_length`</span> set. Valid values are from <span pulumi-lang-nodejs="`44`" pulumi-lang-dotnet="`44`" pulumi-lang-go="`44`" pulumi-lang-python="`44`" pulumi-lang-yaml="`44`" pulumi-lang-java="`44`">`44`</span> to <span pulumi-lang-nodejs="`60`" pulumi-lang-dotnet="`60`" pulumi-lang-go="`60`" pulumi-lang-python="`60`" pulumi-lang-yaml="`60`" pulumi-lang-java="`60`">`60`</span> in increments of 4.
  late final Output<int?> ipv6NetmaskLength;

  /// The ID of the main route table associated with
  /// this VPC. Note that you can change a VPC's main route table by using an
  /// <span pulumi-lang-nodejs="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-dotnet="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-go="`ec2.MainRouteTableAssociation`" pulumi-lang-python="`ec2.MainRouteTableAssociation`" pulumi-lang-yaml="`aws.ec2.MainRouteTableAssociation`" pulumi-lang-java="`aws.ec2.MainRouteTableAssociation`">`aws.ec2.MainRouteTableAssociation`</span>.
  late final Output<String> mainRouteTableId;

  /// The ID of the AWS account that owns the VPC.
  late final Output<String> ownerId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Vpc(
    String name, {
    VpcArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpc:Vpc',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.assignGeneratedIpv6CidrBlock = Output.createUnknown<bool?>();
    this.cidrBlock = Output.createUnknown<String>();
    this.defaultNetworkAclId = Output.createUnknown<String>();
    this.defaultRouteTableId = Output.createUnknown<String>();
    this.defaultSecurityGroupId = Output.createUnknown<String>();
    this.dhcpOptionsId = Output.createUnknown<String>();
    this.enableDnsHostnames = Output.createUnknown<bool>();
    this.enableDnsSupport = Output.createUnknown<bool?>();
    this.enableNetworkAddressUsageMetrics = Output.createUnknown<bool>();
    this.instanceTenancy = Output.createUnknown<String?>();
    this.ipv4IpamPoolId = Output.createUnknown<String?>();
    this.ipv4NetmaskLength = Output.createUnknown<int?>();
    this.ipv6AssociationId = Output.createUnknown<String>();
    this.ipv6CidrBlock = Output.createUnknown<String>();
    this.ipv6CidrBlockNetworkBorderGroup = Output.createUnknown<String>();
    this.ipv6IpamPoolId = Output.createUnknown<String?>();
    this.ipv6NetmaskLength = Output.createUnknown<int?>();
    this.mainRouteTableId = Output.createUnknown<String>();
    this.ownerId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
