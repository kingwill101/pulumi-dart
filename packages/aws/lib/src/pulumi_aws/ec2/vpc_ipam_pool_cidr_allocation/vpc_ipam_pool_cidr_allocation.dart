import 'package:pulumi/pulumi.dart';
import 'vpc_ipam_pool_cidr_allocation_args.dart';

/// Allocates (reserves) a CIDR from an IPAM address pool, preventing usage by IPAM. Only works for private IPv4.
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
/// const current = aws.getRegion({});
/// const exampleVpcIpam = new aws.ec2.VpcIpam("example", {operatingRegions: [{
/// regionName: current.then(current => current.region),
/// }]});
/// const exampleVpcIpamPool = new aws.ec2.VpcIpamPool("example", {
/// addressFamily: "ipv4",
/// ipamScopeId: exampleVpcIpam.privateDefaultScopeId,
/// locale: current.then(current => current.region),
/// });
/// const exampleVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("example", {
/// ipamPoolId: exampleVpcIpamPool.id,
/// cidr: "172.20.0.0/16",
/// });
/// const example = new aws.ec2.VpcIpamPoolCidrAllocation("example", {
/// ipamPoolId: exampleVpcIpamPool.id,
/// cidr: "172.20.0.0/24",
/// }, {
/// dependsOn: [exampleVpcIpamPoolCidr],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example_vpc_ipam = aws.ec2.VpcIpam("example", operating_regions=[{
/// "region_name": current.region,
/// }])
/// example_vpc_ipam_pool = aws.ec2.VpcIpamPool("example",
/// address_family="ipv4",
/// ipam_scope_id=example_vpc_ipam.private_default_scope_id,
/// locale=current.region)
/// example_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("example",
/// ipam_pool_id=example_vpc_ipam_pool.id,
/// cidr="172.20.0.0/16")
/// example = aws.ec2.VpcIpamPoolCidrAllocation("example",
/// ipam_pool_id=example_vpc_ipam_pool.id,
/// cidr="172.20.0.0/24",
/// opts = pulumi.ResourceOptions(depends_on=[example_vpc_ipam_pool_cidr]))
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
/// var exampleVpcIpam = new Aws.Ec2.VpcIpam("example", new()
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
/// var exampleVpcIpamPool = new Aws.Ec2.VpcIpamPool("example", new()
/// {
/// AddressFamily = "ipv4",
/// IpamScopeId = exampleVpcIpam.PrivateDefaultScopeId,
/// Locale = current.Apply(getRegionResult => getRegionResult.Region),
/// });
///
/// var exampleVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("example", new()
/// {
/// IpamPoolId = exampleVpcIpamPool.Id,
/// Cidr = "172.20.0.0/16",
/// });
///
/// var example = new Aws.Ec2.VpcIpamPoolCidrAllocation("example", new()
/// {
/// IpamPoolId = exampleVpcIpamPool.Id,
/// Cidr = "172.20.0.0/24",
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleVpcIpamPoolCidr,
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
/// exampleVpcIpam, err := ec2.NewVpcIpam(ctx, "example", &ec2.VpcIpamArgs{
/// OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// &ec2.VpcIpamOperatingRegionArgs{
/// RegionName: pulumi.String(current.Region),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpcIpamPool, err := ec2.NewVpcIpamPool(ctx, "example", &ec2.VpcIpamPoolArgs{
/// AddressFamily: pulumi.String("ipv4"),
/// IpamScopeId:   exampleVpcIpam.PrivateDefaultScopeId,
/// Locale:        pulumi.String(current.Region),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "example", &ec2.VpcIpamPoolCidrArgs{
/// IpamPoolId: exampleVpcIpamPool.ID(),
/// Cidr:       pulumi.String("172.20.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcIpamPoolCidrAllocation(ctx, "example", &ec2.VpcIpamPoolCidrAllocationArgs{
/// IpamPoolId: exampleVpcIpamPool.ID(),
/// Cidr:       pulumi.String("172.20.0.0/24"),
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleVpcIpamPoolCidr,
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
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocation;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocationArgs;
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
/// var exampleVpcIpam = new VpcIpam("exampleVpcIpam", VpcIpamArgs.builder()
/// .operatingRegions(VpcIpamOperatingRegionArgs.builder()
/// .regionName(current.region())
/// .build())
/// .build());
///
/// var exampleVpcIpamPool = new VpcIpamPool("exampleVpcIpamPool", VpcIpamPoolArgs.builder()
/// .addressFamily("ipv4")
/// .ipamScopeId(exampleVpcIpam.privateDefaultScopeId())
/// .locale(current.region())
/// .build());
///
/// var exampleVpcIpamPoolCidr = new VpcIpamPoolCidr("exampleVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
/// .ipamPoolId(exampleVpcIpamPool.id())
/// .cidr("172.20.0.0/16")
/// .build());
///
/// var example = new VpcIpamPoolCidrAllocation("example", VpcIpamPoolCidrAllocationArgs.builder()
/// .ipamPoolId(exampleVpcIpamPool.id())
/// .cidr("172.20.0.0/24")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleVpcIpamPoolCidr)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcIpamPoolCidrAllocation
/// properties:
/// ipamPoolId: ${exampleVpcIpamPool.id}
/// cidr: 172.20.0.0/24
/// options:
/// dependsOn:
/// - ${exampleVpcIpamPoolCidr}
/// exampleVpcIpamPoolCidr:
/// type: aws:ec2:VpcIpamPoolCidr
/// name: example
/// properties:
/// ipamPoolId: ${exampleVpcIpamPool.id}
/// cidr: 172.20.0.0/16
/// exampleVpcIpamPool:
/// type: aws:ec2:VpcIpamPool
/// name: example
/// properties:
/// addressFamily: ipv4
/// ipamScopeId: ${exampleVpcIpam.privateDefaultScopeId}
/// locale: ${current.region}
/// exampleVpcIpam:
/// type: aws:ec2:VpcIpam
/// name: example
/// properties:
/// operatingRegions:
/// - regionName: ${current.region}
/// variables:
/// current:
/// fn::invoke:
/// function: aws:getRegion
/// arguments: {}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// With the <span pulumi-lang-nodejs="`disallowedCidrs`" pulumi-lang-dotnet="`DisallowedCidrs`" pulumi-lang-go="`disallowedCidrs`" pulumi-lang-python="`disallowed_cidrs`" pulumi-lang-yaml="`disallowedCidrs`" pulumi-lang-java="`disallowedCidrs`">`disallowed_cidrs`</span> attribute:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const exampleVpcIpam = new aws.ec2.VpcIpam("example", {operatingRegions: [{
/// regionName: current.then(current => current.region),
/// }]});
/// const exampleVpcIpamPool = new aws.ec2.VpcIpamPool("example", {
/// addressFamily: "ipv4",
/// ipamScopeId: exampleVpcIpam.privateDefaultScopeId,
/// locale: current.then(current => current.region),
/// });
/// const exampleVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("example", {
/// ipamPoolId: exampleVpcIpamPool.id,
/// cidr: "172.20.0.0/16",
/// });
/// const example = new aws.ec2.VpcIpamPoolCidrAllocation("example", {
/// ipamPoolId: exampleVpcIpamPool.id,
/// netmaskLength: 28,
/// disallowedCidrs: ["172.20.0.0/28"],
/// }, {
/// dependsOn: [exampleVpcIpamPoolCidr],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example_vpc_ipam = aws.ec2.VpcIpam("example", operating_regions=[{
/// "region_name": current.region,
/// }])
/// example_vpc_ipam_pool = aws.ec2.VpcIpamPool("example",
/// address_family="ipv4",
/// ipam_scope_id=example_vpc_ipam.private_default_scope_id,
/// locale=current.region)
/// example_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("example",
/// ipam_pool_id=example_vpc_ipam_pool.id,
/// cidr="172.20.0.0/16")
/// example = aws.ec2.VpcIpamPoolCidrAllocation("example",
/// ipam_pool_id=example_vpc_ipam_pool.id,
/// netmask_length=28,
/// disallowed_cidrs=["172.20.0.0/28"],
/// opts = pulumi.ResourceOptions(depends_on=[example_vpc_ipam_pool_cidr]))
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
/// var exampleVpcIpam = new Aws.Ec2.VpcIpam("example", new()
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
/// var exampleVpcIpamPool = new Aws.Ec2.VpcIpamPool("example", new()
/// {
/// AddressFamily = "ipv4",
/// IpamScopeId = exampleVpcIpam.PrivateDefaultScopeId,
/// Locale = current.Apply(getRegionResult => getRegionResult.Region),
/// });
///
/// var exampleVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("example", new()
/// {
/// IpamPoolId = exampleVpcIpamPool.Id,
/// Cidr = "172.20.0.0/16",
/// });
///
/// var example = new Aws.Ec2.VpcIpamPoolCidrAllocation("example", new()
/// {
/// IpamPoolId = exampleVpcIpamPool.Id,
/// NetmaskLength = 28,
/// DisallowedCidrs = new[]
/// {
/// "172.20.0.0/28",
/// },
/// }, new CustomResourceOptions
/// {
/// DependsOn =
/// {
/// exampleVpcIpamPoolCidr,
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
/// exampleVpcIpam, err := ec2.NewVpcIpam(ctx, "example", &ec2.VpcIpamArgs{
/// OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// &ec2.VpcIpamOperatingRegionArgs{
/// RegionName: pulumi.String(current.Region),
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpcIpamPool, err := ec2.NewVpcIpamPool(ctx, "example", &ec2.VpcIpamPoolArgs{
/// AddressFamily: pulumi.String("ipv4"),
/// IpamScopeId:   exampleVpcIpam.PrivateDefaultScopeId,
/// Locale:        pulumi.String(current.Region),
/// })
/// if err != nil {
/// return err
/// }
/// exampleVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "example", &ec2.VpcIpamPoolCidrArgs{
/// IpamPoolId: exampleVpcIpamPool.ID(),
/// Cidr:       pulumi.String("172.20.0.0/16"),
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewVpcIpamPoolCidrAllocation(ctx, "example", &ec2.VpcIpamPoolCidrAllocationArgs{
/// IpamPoolId:    exampleVpcIpamPool.ID(),
/// NetmaskLength: pulumi.Int(28),
/// DisallowedCidrs: pulumi.StringArray{
/// pulumi.String("172.20.0.0/28"),
/// },
/// }, pulumi.DependsOn([]pulumi.Resource{
/// exampleVpcIpamPoolCidr,
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
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocation;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrAllocationArgs;
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
/// var exampleVpcIpam = new VpcIpam("exampleVpcIpam", VpcIpamArgs.builder()
/// .operatingRegions(VpcIpamOperatingRegionArgs.builder()
/// .regionName(current.region())
/// .build())
/// .build());
///
/// var exampleVpcIpamPool = new VpcIpamPool("exampleVpcIpamPool", VpcIpamPoolArgs.builder()
/// .addressFamily("ipv4")
/// .ipamScopeId(exampleVpcIpam.privateDefaultScopeId())
/// .locale(current.region())
/// .build());
///
/// var exampleVpcIpamPoolCidr = new VpcIpamPoolCidr("exampleVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
/// .ipamPoolId(exampleVpcIpamPool.id())
/// .cidr("172.20.0.0/16")
/// .build());
///
/// var example = new VpcIpamPoolCidrAllocation("example", VpcIpamPoolCidrAllocationArgs.builder()
/// .ipamPoolId(exampleVpcIpamPool.id())
/// .netmaskLength(28)
/// .disallowedCidrs("172.20.0.0/28")
/// .build(), CustomResourceOptions.builder()
/// .dependsOn(exampleVpcIpamPoolCidr)
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:VpcIpamPoolCidrAllocation
/// properties:
/// ipamPoolId: ${exampleVpcIpamPool.id}
/// netmaskLength: 28
/// disallowedCidrs:
/// - 172.20.0.0/28
/// options:
/// dependsOn:
/// - ${exampleVpcIpamPoolCidr}
/// exampleVpcIpamPoolCidr:
/// type: aws:ec2:VpcIpamPoolCidr
/// name: example
/// properties:
/// ipamPoolId: ${exampleVpcIpamPool.id}
/// cidr: 172.20.0.0/16
/// exampleVpcIpamPool:
/// type: aws:ec2:VpcIpamPool
/// name: example
/// properties:
/// addressFamily: ipv4
/// ipamScopeId: ${exampleVpcIpam.privateDefaultScopeId}
/// locale: ${current.region}
/// exampleVpcIpam:
/// type: aws:ec2:VpcIpam
/// name: example
/// properties:
/// operatingRegions:
/// - regionName: ${current.region}
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
/// Using `pulumi import`, import IPAM allocations using the allocation <span pulumi-lang-nodejs="`id`" pulumi-lang-dotnet="`Id`" pulumi-lang-go="`id`" pulumi-lang-python="`id`" pulumi-lang-yaml="`id`" pulumi-lang-java="`id`">`id`</span> and `pool id`, separated by `_`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamPoolCidrAllocation:VpcIpamPoolCidrAllocation example ipam-pool-alloc-0dc6d196509c049ba8b549ff99f639736_ipam-pool-07cfb559e0921fcbe
/// ```
class VpcIpamPoolCidrAllocation extends CustomResource {
  /// The CIDR you want to assign to the pool.
  late final Output<String> cidr;

  /// The description for the allocation.
  late final Output<String?> description;

  /// Exclude a particular CIDR range from being returned by the pool.
  late final Output<List<String>?> disallowedCidrs;
  late final Output<String> ipamPoolAllocationId;

  /// The ID of the pool to which you want to assign a CIDR.
  late final Output<String> ipamPoolId;

  /// The netmask length of the CIDR you would like to allocate to the IPAM pool. Valid Values: `0-128`.
  late final Output<int> netmaskLength;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ID of the resource.
  late final Output<String> resourceId;

  /// The owner of the resource.
  late final Output<String> resourceOwner;

  /// The type of the resource.
  late final Output<String> resourceType;

  VpcIpamPoolCidrAllocation(
    String name, {
    VpcIpamPoolCidrAllocationArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamPoolCidrAllocation:VpcIpamPoolCidrAllocation',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.description = registerOutput<String?>('description');
    this.disallowedCidrs = registerOutput<List<String>?>('disallowedCidrs');
    this.ipamPoolAllocationId = registerOutput<String>('ipamPoolAllocationId');
    this.ipamPoolId = registerOutput<String>('ipamPoolId');
    this.netmaskLength = registerOutput<int>('netmaskLength');
    this.region = registerOutput<String>('region');
    this.resourceId = registerOutput<String>('resourceId');
    this.resourceOwner = registerOutput<String>('resourceOwner');
    this.resourceType = registerOutput<String>('resourceType');
  }
}
