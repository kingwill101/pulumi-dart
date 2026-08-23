import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_pool_cidr_args.dart';
import 'vpc_ipam_pool_cidr_cidr_authorization_context.dart';
import 'vpc_ipam_pool_cidr_state.dart';

/// Provisions a CIDR from an IPAM address pool.
///
/// &gt; **NOTE:** Provisioning Public IPv4 or Public IPv6 require [steps outside the scope of this resource](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ec2-byoip.html#prepare-for-byoip). The resource accepts `message` and `signature` as part of the `cidrAuthorizationContext` attribute but those must be generated ahead of time. Public IPv6 CIDRs that are provisioned into a Pool with `publiclyAdvertisable = true` and all public IPv4 CIDRs also require creating a Route Origin Authorization (ROA) object in your Regional Internet Registry (RIR).
///
/// &gt; **NOTE:** In order to deprovision CIDRs all Allocations must be released. Allocations created by a VPC take up to 30 minutes to be released. However, for IPAM to properly manage the removal of allocation records created by VPCs and other resources, you must [grant it permissions](https://docs.aws.amazon.com/vpc/latest/ipam/choose-single-user-or-orgs-ipam.html) in
/// either a single account or organizationally. If you are unable to deprovision a cidr after waiting over 30 minutes, you may be missing the Service Linked Role.
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
/// const exampleVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("example", {
///     ipamPoolId: exampleVpcIpamPool.id,
///     cidr: "172.20.0.0/16",
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
/// example_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("example",
///     ipam_pool_id=example_vpc_ipam_pool.id,
///     cidr="172.20.0.0/16")
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
///     var exampleVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("example", new()
///     {
///         IpamPoolId = exampleVpcIpamPool.Id,
///         Cidr = "172.20.0.0/16",
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
/// 		exampleVpcIpamPool, err := ec2.NewVpcIpamPool(ctx, "example", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily: pulumi.String("ipv4"),
/// 			IpamScopeId:   example.PrivateDefaultScopeId,
/// 			Locale:        pulumi.String(current.Region),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamPoolCidr(ctx, "example", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId: exampleVpcIpamPool.ID().ToIDOutput().ToStringOutput(),
/// 			Cidr:       pulumi.String("172.20.0.0/16"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getregion" "current" {
/// }
///
/// resource "aws_ec2_vpcipam" "example" {
///   operating_regions {
///     region_name = data.aws_getregion.current.region
///   }
/// }
/// resource "aws_ec2_vpcipampool" "example" {
///   address_family = "ipv4"
///   ipam_scope_id  = aws_ec2_vpcipam.example.private_default_scope_id
///   locale         = data.aws_getregion.current.region
/// }
/// resource "aws_ec2_vpcipampoolcidr" "example" {
///   ipam_pool_id = aws_ec2_vpcipampool.example.id
///   cidr         = "172.20.0.0/16"
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var exampleVpcIpamPoolCidr = new VpcIpamPoolCidr("exampleVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(exampleVpcIpamPool.id())
///             .cidr("172.20.0.0/16")
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
///   exampleVpcIpamPoolCidr:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: example
///     properties:
///       ipamPoolId: ${exampleVpcIpamPool.id}
///       cidr: 172.20.0.0/16
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// Provision Public IPv6 Pool CIDRs:
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
/// const ipv6TestPublic = new aws.ec2.VpcIpamPool("ipv6_test_public", {
///     addressFamily: "ipv6",
///     ipamScopeId: example.publicDefaultScopeId,
///     locale: "us-east-1",
///     description: "public ipv6",
///     publiclyAdvertisable: false,
///     publicIpSource: "amazon",
///     awsService: "ec2",
/// });
/// const ipv6TestPublicVpcIpamPoolCidr = new aws.ec2.VpcIpamPoolCidr("ipv6_test_public", {
///     ipamPoolId: ipv6TestPublic.id,
///     netmaskLength: 52,
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
/// ipv6_test_public = aws.ec2.VpcIpamPool("ipv6_test_public",
///     address_family="ipv6",
///     ipam_scope_id=example.public_default_scope_id,
///     locale="us-east-1",
///     description="public ipv6",
///     publicly_advertisable=False,
///     public_ip_source="amazon",
///     aws_service="ec2")
/// ipv6_test_public_vpc_ipam_pool_cidr = aws.ec2.VpcIpamPoolCidr("ipv6_test_public",
///     ipam_pool_id=ipv6_test_public.id,
///     netmask_length=52)
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
///     var ipv6TestPublic = new Aws.Ec2.VpcIpamPool("ipv6_test_public", new()
///     {
///         AddressFamily = "ipv6",
///         IpamScopeId = example.PublicDefaultScopeId,
///         Locale = "us-east-1",
///         Description = "public ipv6",
///         PubliclyAdvertisable = false,
///         PublicIpSource = "amazon",
///         AwsService = "ec2",
///     });
///
///     var ipv6TestPublicVpcIpamPoolCidr = new Aws.Ec2.VpcIpamPoolCidr("ipv6_test_public", new()
///     {
///         IpamPoolId = ipv6TestPublic.Id,
///         NetmaskLength = 52,
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
/// 		ipv6TestPublic, err := ec2.NewVpcIpamPool(ctx, "ipv6_test_public", &ec2.VpcIpamPoolArgs{
/// 			AddressFamily:        pulumi.String("ipv6"),
/// 			IpamScopeId:          example.PublicDefaultScopeId,
/// 			Locale:               pulumi.String("us-east-1"),
/// 			Description:          pulumi.String("public ipv6"),
/// 			PubliclyAdvertisable: pulumi.Bool(false),
/// 			PublicIpSource:       pulumi.String("amazon"),
/// 			AwsService:           pulumi.String("ec2"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = ec2.NewVpcIpamPoolCidr(ctx, "ipv6_test_public", &ec2.VpcIpamPoolCidrArgs{
/// 			IpamPoolId:    ipv6TestPublic.ID().ToIDOutput().ToStringOutput(),
/// 			NetmaskLength: pulumi.Int(52),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// data "aws_getregion" "current" {
/// }
///
/// resource "aws_ec2_vpcipam" "example" {
///   operating_regions {
///     region_name = data.aws_getregion.current.region
///   }
/// }
/// resource "aws_ec2_vpcipampool" "ipv6_test_public" {
///   address_family        = "ipv6"
///   ipam_scope_id         = aws_ec2_vpcipam.example.public_default_scope_id
///   locale                = "us-east-1"
///   description           = "public ipv6"
///   publicly_advertisable = false
///   public_ip_source      = "amazon"
///   aws_service           = "ec2"
/// }
/// resource "aws_ec2_vpcipampoolcidr" "ipv6_test_public" {
///   ipam_pool_id   = aws_ec2_vpcipampool.ipv6_test_public.id
///   netmask_length = 52
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
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var ipv6TestPublic = new VpcIpamPool("ipv6TestPublic", VpcIpamPoolArgs.builder()
///             .addressFamily("ipv6")
///             .ipamScopeId(example.publicDefaultScopeId())
///             .locale("us-east-1")
///             .description("public ipv6")
///             .publiclyAdvertisable(false)
///             .publicIpSource("amazon")
///             .awsService("ec2")
///             .build());
///
///         var ipv6TestPublicVpcIpamPoolCidr = new VpcIpamPoolCidr("ipv6TestPublicVpcIpamPoolCidr", VpcIpamPoolCidrArgs.builder()
///             .ipamPoolId(ipv6TestPublic.id())
///             .netmaskLength(52)
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
///   ipv6TestPublic:
///     type: aws:ec2:VpcIpamPool
///     name: ipv6_test_public
///     properties:
///       addressFamily: ipv6
///       ipamScopeId: ${example.publicDefaultScopeId}
///       locale: us-east-1
///       description: public ipv6
///       publiclyAdvertisable: false
///       publicIpSource: amazon
///       awsService: ec2
///   ipv6TestPublicVpcIpamPoolCidr:
///     type: aws:ec2:VpcIpamPoolCidr
///     name: ipv6_test_public
///     properties:
///       ipamPoolId: ${ipv6TestPublic.id}
///       netmaskLength: 52
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
/// Using `pulumi import`, import IPAMs using the `&lt;cidr&gt;_&lt;ipam-pool-id&gt;`. For example:
///
/// **NOTE:** Do not use the IPAM Pool Cidr ID as this was introduced after the resource already existed.
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpamPoolCidr:VpcIpamPoolCidr example 172.20.0.0/24_ipam-pool-0e634f5a1517cccdc
/// ```
class VpcIpamPoolCidr extends pulumi.CustomResource {
  /// The CIDR you want to assign to the pool. Conflicts with `netmaskLength`.
  late final pulumi.Output<String> cidr;
  /// A signed document that proves that you are authorized to bring the specified IP address range to Amazon using BYOIP. This is not stored in the state file. See cidrAuthorizationContext for more information.
  late final pulumi.Output<VpcIpamPoolCidrCidrAuthorizationContext?> cidrAuthorizationContext;
  /// The unique ID generated by AWS for the pool cidr. Typically this is the resource `id` but this attribute was added to the API calls after the fact and is therefore not used as the resource id.
  late final pulumi.Output<String> ipamPoolCidrId;
  /// The ID of the pool to which you want to assign a CIDR.
  late final pulumi.Output<String> ipamPoolId;
  /// If provided, the cidr provisioned into the specified pool will be the next available cidr given this declared netmask length. Conflicts with `cidr`.
  late final pulumi.Output<int> netmaskLength;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// Creates a new [VpcIpamPoolCidr].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpamPoolCidr]. {@macro pulumi_ec2_vpc_ipam_pool_cidr_vpc_ipam_pool_cidr_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIpamPoolCidr(
    String name, {
    VpcIpamPoolCidrArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamPoolCidr:VpcIpamPoolCidr',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    cidrAuthorizationContext = registerOutput<VpcIpamPoolCidrCidrAuthorizationContext?>('cidrAuthorizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcIpamPoolCidrCidrAuthorizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipamPoolCidrId = registerOutput<String>('ipamPoolCidrId');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    netmaskLength = registerOutput<int>('netmaskLength');
    region = registerOutput<String>('region');
  }

  /// Gets an existing [VpcIpamPoolCidr] resource's state with the given [name] and [id].
  static VpcIpamPoolCidr get(
    String name,
    pulumi.Input<String> id, {
    VpcIpamPoolCidrState? state,
  }) {
    return VpcIpamPoolCidr._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  VpcIpamPoolCidr._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/vpcIpamPoolCidr:VpcIpamPoolCidr',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    cidr = registerOutput<String>('cidr');
    cidrAuthorizationContext = registerOutput<VpcIpamPoolCidrCidrAuthorizationContext?>('cidrAuthorizationContext', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return VpcIpamPoolCidrCidrAuthorizationContext.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    ipamPoolCidrId = registerOutput<String>('ipamPoolCidrId');
    ipamPoolId = registerOutput<String>('ipamPoolId');
    netmaskLength = registerOutput<int>('netmaskLength');
    region = registerOutput<String>('region');
  }
}
