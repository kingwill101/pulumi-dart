import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_pool_args.dart';
import 'vpc_ipam_pool_source_resource.dart';

/// Provides an IP address pool resource for IPAM.
///
/// > **NOTE:** When provisioning resource planning IPAM pools, it can take upto 30 minutes for the CIDR to be managed by IPAM.
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
/// const current = aws.getRegion({});
/// const example = new aws.ec2.VpcIpam("example", {operatingRegions: [{
///     regionName: current.then(current => current.region),
/// }]});
/// const exampleVpcIpamPool = new aws.ec2.VpcIpamPool("example", {
///     addressFamily: "ipv4",
///     ipamScopeId: example.privateDefaultScopeId,
///     locale: current.then(current => current.region),
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.ec2.VpcIpam("example", operating_regions=[{
///     "region_name": current.region,
/// }])
/// example_vpc_ipam_pool = aws.ec2.VpcIpamPool("example",
///     address_family="ipv4",
///     ipam_scope_id=example.private_default_scope_id,
///     locale=current.region)
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
///     var example = new Aws.Ec2.VpcIpam("example", new()
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
///     var exampleVpcIpamPool = new Aws.Ec2.VpcIpamPool("example", new()
///     {
///         AddressFamily = "ipv4",
///         IpamScopeId = example.PrivateDefaultScopeId,
///         Locale = current.Apply(getRegionResult => getRegionResult.Region),
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
/// 		example, err := ec2.NewVpcIpam(ctx, "example", &ec2.VpcIpamArgs{
/// 			OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// 				&ec2.VpcIpamOperatingRegionArgs{
/// 					RegionName: pulumi.String(current.Region),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamPool(ctx, "example", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily: pulumi.String("ipv4"),
/// 			IpamScopeId:   example.PrivateDefaultScopeId,
/// 			Locale:        pulumi.String(current.Region),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpam;
/// import com.pulumi.aws.ec2.VpcIpamArgs;
/// import com.pulumi.aws.ec2.inputs.VpcIpamOperatingRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpamPool;
/// import com.pulumi.aws.ec2.VpcIpamPoolArgs;
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
///         var example = new VpcIpam("example", VpcIpamArgs.builder()
///             .operatingRegions(VpcIpamOperatingRegionArgs.builder()
///                 .regionName(current.region())
///                 .build())
///             .build());
///
///         var exampleVpcIpamPool = new VpcIpamPool("exampleVpcIpamPool", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv4")
///             .ipamScopeId(example.privateDefaultScopeId())
///             .locale(current.region())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcIpam
///     properties:
///       operatingRegions:
///         - regionName: ${current.region}
///   exampleVpcIpamPool:
///     type: aws:ec2:VpcIpamPool
///     name: example
///     properties:
///       addressFamily: ipv4
///       ipamScopeId: ${example.privateDefaultScopeId}
///       locale: ${current.region}
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// Nested Pools:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = new aws.ec2.VpcIpam("example", {operatingRegions: [{
///     regionName: current.then(current => current.region),
/// }]});
/// const parent = new aws.ec2.VpcIpamPool("parent", {
///     addressFamily: "ipv4",
///     ipamScopeId: example.privateDefaultScopeId,
/// });
/// const parentTest = new aws.ec2.VpcIpamPoolCidr("parent_test", {
///     ipamPoolId: parent.id,
///     cidr: "172.20.0.0/16",
/// });
/// const child = new aws.ec2.VpcIpamPool("child", {
///     addressFamily: "ipv4",
///     ipamScopeId: example.privateDefaultScopeId,
///     locale: current.then(current => current.region),
///     sourceIpamPoolId: parent.id,
/// });
/// const childTest = new aws.ec2.VpcIpamPoolCidr("child_test", {
///     ipamPoolId: child.id,
///     cidr: "172.20.0.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.ec2.VpcIpam("example", operating_regions=[{
///     "region_name": current.region,
/// }])
/// parent = aws.ec2.VpcIpamPool("parent",
///     address_family="ipv4",
///     ipam_scope_id=example.private_default_scope_id)
/// parent_test = aws.ec2.VpcIpamPoolCidr("parent_test",
///     ipam_pool_id=parent.id,
///     cidr="172.20.0.0/16")
/// child = aws.ec2.VpcIpamPool("child",
///     address_family="ipv4",
///     ipam_scope_id=example.private_default_scope_id,
///     locale=current.region,
///     source_ipam_pool_id=parent.id)
/// child_test = aws.ec2.VpcIpamPoolCidr("child_test",
///     ipam_pool_id=child.id,
///     cidr="172.20.0.0/24")
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
///     var example = new Aws.Ec2.VpcIpam("example", new()
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
///     var parent = new Aws.Ec2.VpcIpamPool("parent", new()
///     {
///         AddressFamily = "ipv4",
///         IpamScopeId = example.PrivateDefaultScopeId,
///     });
///
///     var parentTest = new Aws.Ec2.VpcIpamPoolCidr("parent_test", new()
///     {
///         IpamPoolId = parent.Id,
///         Cidr = "172.20.0.0/16",
///     });
///
///     var child = new Aws.Ec2.VpcIpamPool("child", new()
///     {
///         AddressFamily = "ipv4",
///         IpamScopeId = example.PrivateDefaultScopeId,
///         Locale = current.Apply(getRegionResult => getRegionResult.Region),
///         SourceIpamPoolId = parent.Id,
///     });
///
///     var childTest = new Aws.Ec2.VpcIpamPoolCidr("child_test", new()
///     {
///         IpamPoolId = child.Id,
///         Cidr = "172.20.0.0/24",
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
/// 		example, err := ec2.NewVpcIpam(ctx, "example", &ec2.VpcIpamArgs{
/// 			OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// 				&ec2.VpcIpamOperatingRegionArgs{
/// 					RegionName: pulumi.String(current.Region),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		parent, err := ec2.NewVpcIpamPool(ctx, "parent", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily: pulumi.String("ipv4"),
/// 			IpamScopeId:   example.PrivateDefaultScopeId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamPoolCidr(ctx, "parent_test", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId: parent.ID(),
/// 			Cidr:       pulumi.String("172.20.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		child, err := ec2.NewVpcIpamPool(ctx, "child", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily:    pulumi.String("ipv4"),
/// 			IpamScopeId:      example.PrivateDefaultScopeId,
/// 			Locale:           pulumi.String(current.Region),
/// 			SourceIpamPoolId: parent.ID(),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamPoolCidr(ctx, "child_test", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId: child.ID(),
/// 			Cidr:       pulumi.String("172.20.0.0/24"),
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
/// import com.pulumi.aws.AwsFunctions;
/// import com.pulumi.aws.inputs.GetRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpam;
/// import com.pulumi.aws.ec2.VpcIpamArgs;
/// import com.pulumi.aws.ec2.inputs.VpcIpamOperatingRegionArgs;
/// import com.pulumi.aws.ec2.VpcIpamPool;
/// import com.pulumi.aws.ec2.VpcIpamPoolArgs;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidr;
/// import com.pulumi.aws.ec2.VpcIpamPoolCidrArgs;
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
///         var example = new VpcIpam("example", VpcIpamArgs.builder()
///             .operatingRegions(VpcIpamOperatingRegionArgs.builder()
///                 .regionName(current.region())
///                 .build())
///             .build());
///
///         var parent = new VpcIpamPool("parent", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv4")
///             .ipamScopeId(example.privateDefaultScopeId())
///             .build());
///
///         var parentTest = new VpcIpamPoolCidr("parentTest", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(parent.id())
///             .cidr("172.20.0.0/16")
///             .build());
///
///         var child = new VpcIpamPool("child", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv4")
///             .ipamScopeId(example.privateDefaultScopeId())
///             .locale(current.region())
///             .sourceIpamPoolId(parent.id())
///             .build());
///
///         var childTest = new VpcIpamPoolCidr("childTest", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(child.id())
///             .cidr("172.20.0.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcIpam
///     properties:
///       operatingRegions:
///         - regionName: ${current.region}
///   parent:
///     type: aws:ec2:VpcIpamPool
///     properties:
///       addressFamily: ipv4
///       ipamScopeId: ${example.privateDefaultScopeId}
///   parentTest:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: parent_test
///     properties:
///       ipamPoolId: ${parent.id}
///       cidr: 172.20.0.0/16
///   child:
///     type: aws:ec2:VpcIpamPool
///     properties:
///       addressFamily: ipv4
///       ipamScopeId: ${example.privateDefaultScopeId}
///       locale: ${current.region}
///       sourceIpamPoolId: ${parent.id}
///   childTest:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: child_test
///     properties:
///       ipamPoolId: ${child.id}
///       cidr: 172.20.0.0/24
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// Resource Planning Pools:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const current = aws.getRegion({});
/// const example = new aws.ec2.VpcIpam("example", {operatingRegions: [{
///     regionName: current.then(current => current.region),
/// }]});
/// const test = new aws.ec2.VpcIpamPool("test", {
///     addressFamily: "ipv4",
///     ipamScopeId: example.privateDefaultScopeId,
/// });
/// const testVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("test", {
///     ipamPoolId: parent.id,
///     cidr: "10.0.0.0/16",
/// });
/// const testVpc = new aws.ec2.Vpc("test", {
///     ipv4IpamPoolId: test.id,
///     ipv4NetmaskLength: 24,
/// }, {
///     dependsOn: [testVpcIpamPoolCidr],
/// });
/// const vpc = new aws.ec2.VpcIpamPool("vpc", {
///     addressFamily: "ipv4",
///     ipamScopeId: testAwsVpcIpam.privateDefaultScopeId,
///     locale: current.then(current => current.name),
///     sourceIpamPoolId: test.id,
///     sourceResource: {
///         resourceId: testVpc.id,
///         resourceOwner: currentAwsCallerIdentity.accountId,
///         resourceRegion: current.then(current => current.name),
///         resourceType: "vpc",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// example = aws.ec2.VpcIpam("example", operating_regions=[{
///     "region_name": current.region,
/// }])
/// test = aws.ec2.VpcIpamPool("test",
///     address_family="ipv4",
///     ipam_scope_id=example.private_default_scope_id)
/// test_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("test",
///     ipam_pool_id=parent["id"],
///     cidr="10.0.0.0/16")
/// test_vpc = aws.ec2.Vpc("test",
///     ipv4_ipam_pool_id=test.id,
///     ipv4_netmask_length=24,
///     opts = pulumi.ResourceOptions(depends_on=[test_vpc_ipam_pool_cidr]))
/// vpc = aws.ec2.VpcIpamPool("vpc",
///     address_family="ipv4",
///     ipam_scope_id=test_aws_vpc_ipam["privateDefaultScopeId"],
///     locale=current.name,
///     source_ipam_pool_id=test.id,
///     source_resource={
///         "resource_id": test_vpc.id,
///         "resource_owner": current_aws_caller_identity["accountId"],
///         "resource_region": current.name,
///         "resource_type": "vpc",
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
///     var current = Aws.GetRegion.Invoke();
///
///     var example = new Aws.Ec2.VpcIpam("example", new()
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
///     var test = new Aws.Ec2.VpcIpamPool("test", new()
///     {
///         AddressFamily = "ipv4",
///         IpamScopeId = example.PrivateDefaultScopeId,
///     });
///
///     var testVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("test", new()
///     {
///         IpamPoolId = parent.Id,
///         Cidr = "10.0.0.0/16",
///     });
///
///     var testVpc = new Aws.Ec2.Vpc("test", new()
///     {
///         Ipv4IpamPoolId = test.Id,
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
///         IpamScopeId = testAwsVpcIpam.PrivateDefaultScopeId,
///         Locale = current.Apply(getRegionResult => getRegionResult.Name),
///         SourceIpamPoolId = test.Id,
///         SourceResource = new Aws.Ec2.Inputs.VpcIpamPoolSourceResourceArgs
///         {
///             ResourceId = testVpc.Id,
///             ResourceOwner = currentAwsCallerIdentity.AccountId,
///             ResourceRegion = current.Apply(getRegionResult => getRegionResult.Name),
///             ResourceType = "vpc",
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
/// 		example, err := ec2.NewVpcIpam(ctx, "example", &ec2.VpcIpamArgs{
/// 			OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// 				&ec2.VpcIpamOperatingRegionArgs{
/// 					RegionName: pulumi.String(current.Region),
/// 				},
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		test, err := ec2.NewVpcIpamPool(ctx, "test", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily: pulumi.String("ipv4"),
/// 			IpamScopeId:   example.PrivateDefaultScopeId,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpcIpamPoolCidr, err := ec2.NewVpcIpamPoolCidr(ctx, "test", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId: pulumi.Any(parent.Id),
/// 			Cidr:       pulumi.String("10.0.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		testVpc, err := ec2.NewVpc(ctx, "test", &ec2.VpcArgs{
/// 			Ipv4IpamPoolId:    test.ID(),
/// 			Ipv4NetmaskLength: pulumi.Int(24),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			testVpcIpamPoolCidr,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamPool(ctx, "vpc", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily:    pulumi.String("ipv4"),
/// 			IpamScopeId:      pulumi.Any(testAwsVpcIpam.PrivateDefaultScopeId),
/// 			Locale:           pulumi.String(current.Name),
/// 			SourceIpamPoolId: test.ID(),
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
///         var example = new VpcIpam("example", VpcIpamArgs.builder()
///             .operatingRegions(VpcIpamOperatingRegionArgs.builder()
///                 .regionName(current.region())
///                 .build())
///             .build());
///
///         var test = new VpcIpamPool("test", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv4")
///             .ipamScopeId(example.privateDefaultScopeId())
///             .build());
///
///         var testVpcIpamPoolCidr = new VpcIpamPoolCidr("testVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(parent.id())
///             .cidr("10.0.0.0/16")
///             .build());
///
///         var testVpc = new Vpc("testVpc", VpcArgs.builder()
///             .ipv4IpamPoolId(test.id())
///             .ipv4NetmaskLength(24)
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(testVpcIpamPoolCidr)
///                 .build());
///
///         var vpc = new VpcIpamPool("vpc", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv4")
///             .ipamScopeId(testAwsVpcIpam.privateDefaultScopeId())
///             .locale(current.name())
///             .sourceIpamPoolId(test.id())
///             .sourceResource(VpcIpamPoolSourceResourceArgs.builder()
///                 .resourceId(testVpc.id())
///                 .resourceOwner(currentAwsCallerIdentity.accountId())
///                 .resourceRegion(current.name())
///                 .resourceType("vpc")
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:VpcIpam
///     properties:
///       operatingRegions:
///         - regionName: ${current.region}
///   test:
///     type: aws:ec2:VpcIpamPool
///     properties:
///       addressFamily: ipv4
///       ipamScopeId: ${example.privateDefaultScopeId}
///   testVpcIpamPoolCidr:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: test
///     properties:
///       ipamPoolId: ${parent.id}
///       cidr: 10.0.0.0/16
///   testVpc:
///     type: aws:ec2:Vpc
///     name: test
///     properties:
///       ipv4IpamPoolId: ${test.id}
///       ipv4NetmaskLength: 24
///     options:
///       dependsOn:
///         - ${testVpcIpamPoolCidr}
///   vpc:
///     type: aws:ec2:VpcIpamPool
///     properties:
///       addressFamily: ipv4
///       ipamScopeId: ${testAwsVpcIpam.privateDefaultScopeId}
///       locale: ${current.name}
///       sourceIpamPoolId: ${test.id}
///       sourceResource:
///         resourceId: ${testVpc.id}
///         resourceOwner: ${currentAwsCallerIdentity.accountId}
///         resourceRegion: ${current.name}
///         resourceType: vpc
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
/// Using `pulumi import`, import IPAMs using the IPAM pool `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamPool:VpcIpamPool example ipam-pool-0958f95207d978e1e
/// ```
class VpcIpamPool extends pulumi.CustomResource {
  /// The IP protocol assigned to this pool. You must choose either IPv4 or IPv6 protocol for a pool.
  late final pulumi.Output<String> addressFamily;

  /// A default netmask length for allocations added to this pool. If, for example, the CIDR assigned to this pool is 10.0.0.0/8 and you enter 16 here, new allocations will default to 10.0.0.0/16 (unless you provide a different netmask value when you create the new allocation).
  late final pulumi.Output<int?> allocationDefaultNetmaskLength;

  /// The maximum netmask length that will be required for CIDR allocations in this pool.
  late final pulumi.Output<int?> allocationMaxNetmaskLength;

  /// The minimum netmask length that will be required for CIDR allocations in this pool.
  late final pulumi.Output<int?> allocationMinNetmaskLength;

  /// Tags that are required for resources that use CIDRs from this IPAM pool. Resources that do not have these tags will not be allowed to allocate space from the pool. If the resources have their tags changed after they have allocated space or if the allocation tagging requirements are changed on the pool, the resource may be marked as noncompliant.
  late final pulumi.Output<Map<String, String>?> allocationResourceTags;

  /// Amazon Resource Name (ARN) of IPAM
  late final pulumi.Output<String> arn;

  /// If you include this argument, IPAM automatically imports any VPCs you have in your scope that fall
  /// within the CIDR range in the pool.
  late final pulumi.Output<bool?> autoImport;

  /// Limits which AWS service the pool can be used in. Only useable on public scopes. Valid Values: `ec2`.
  late final pulumi.Output<String?> awsService;

  /// Enables you to quickly delete an IPAM pool and all resources within that pool, including provisioned CIDRs, allocations, and other pools.
  late final pulumi.Output<bool?> cascade;

  /// A description for the IPAM pool.
  late final pulumi.Output<String?> description;

  /// The ID of the scope in which you would like to create the IPAM pool.
  late final pulumi.Output<String> ipamScopeId;
  late final pulumi.Output<String> ipamScopeType;

  /// The locale in which you would like to create the IPAM pool. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. Possible values: Any AWS region, such as `us-east-1`.
  late final pulumi.Output<String?> locale;
  late final pulumi.Output<int> poolDepth;

  /// The IP address source for pools in the public scope. Only used for provisioning IP address CIDRs to pools in the public scope. Valid values are `byoip` or `amazon`. Default is `byoip`.
  late final pulumi.Output<String?> publicIpSource;

  /// Defines whether or not IPv6 pool space is publicly advertisable over the internet. This argument is required if `address_family = "ipv6"` and `public_ip_source = "byoip"`, default is `false`. This option is not available for IPv4 pool space or if `public_ip_source = "amazon"`. Setting this argument to `true` when it is not available may result in erroneous differences being reported.
  late final pulumi.Output<bool?> publiclyAdvertisable;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The ID of the source IPAM pool. Use this argument to create a child pool within an existing pool.
  late final pulumi.Output<String?> sourceIpamPoolId;

  /// Resource to use to use to configure a resource planning IPAM Pool. If configured, the `locale` of the parent pool must match the region that the vpc resides in.
  late final pulumi.Output<VpcIpamPoolSourceResource?> sourceResource;

  /// The ID of the IPAM
  late final pulumi.Output<String> state;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [VpcIpamPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpamPool]. {@macro pulumi_ec2_vpc_ipam_pool_vpc_ipam_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIpamPool(
    String name, {
    VpcIpamPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamPool:VpcIpamPool',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressFamily = registerOutput<String>('addressFamily');
    this.allocationDefaultNetmaskLength =
        registerOutput<int?>('allocationDefaultNetmaskLength');
    this.allocationMaxNetmaskLength =
        registerOutput<int?>('allocationMaxNetmaskLength');
    this.allocationMinNetmaskLength =
        registerOutput<int?>('allocationMinNetmaskLength');
    this.allocationResourceTags =
        registerOutput<Map<String, String>?>('allocationResourceTags');
    this.arn = registerOutput<String>('arn');
    this.autoImport = registerOutput<bool?>('autoImport');
    this.awsService = registerOutput<String?>('awsService');
    this.cascade = registerOutput<bool?>('cascade');
    this.description = registerOutput<String?>('description');
    this.ipamScopeId = registerOutput<String>('ipamScopeId');
    this.ipamScopeType = registerOutput<String>('ipamScopeType');
    this.locale = registerOutput<String?>('locale');
    this.poolDepth = registerOutput<int>('poolDepth');
    this.publicIpSource = registerOutput<String?>('publicIpSource');
    this.publiclyAdvertisable = registerOutput<bool?>('publiclyAdvertisable');
    this.region = registerOutput<String>('region');
    this.sourceIpamPoolId = registerOutput<String?>('sourceIpamPoolId');
    this.sourceResource =
        registerOutput<VpcIpamPoolSourceResource?>('sourceResource');
    this.state = registerOutput<String>('state');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
