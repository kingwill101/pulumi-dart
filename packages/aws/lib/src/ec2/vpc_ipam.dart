import 'package:pulumi/pulumi.dart' as pulumi;
import 'vpc_ipam_args.dart';
import 'vpc_ipam_operating_region.dart';

/// Provides an IPAM resource.
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
/// const main = new aws.ec2.VpcIpam("main", {
///     description: "My IPAM",
///     operatingRegions: [{
///         regionName: current.then(current => current.region),
///     }],
///     tags: {
///         Test: "Main",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// current = aws.get_region()
/// main = aws.ec2.VpcIpam("main",
///     description="My IPAM",
///     operating_regions=[{
///         "region_name": current.region,
///     }],
///     tags={
///         "Test": "Main",
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
///     var main = new Aws.Ec2.VpcIpam("main", new()
///     {
///         Description = "My IPAM",
///         OperatingRegions = new[]
///         {
///             new Aws.Ec2.Inputs.VpcIpamOperatingRegionArgs
///             {
///                 RegionName = current.Apply(getRegionResult => getRegionResult.Region),
///             },
///         },
///         Tags =
///         {
///             { "Test", "Main" },
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
/// 		_, err = ec2.NewVpcIpam(ctx, "main", &ec2.VpcIpamArgs{
/// 			Description: pulumi.String("My IPAM"),
/// 			OperatingRegions: ec2.VpcIpamOperatingRegionArray{
/// 				&ec2.VpcIpamOperatingRegionArgs{
/// 					RegionName: pulumi.String(current.Region),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Test": pulumi.String("Main"),
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
///         var main = new VpcIpam("main", VpcIpamArgs.builder()
///             .description("My IPAM")
///             .operatingRegions(VpcIpamOperatingRegionArgs.builder()
///                 .regionName(current.region())
///                 .build())
///             .tags(Map.of("Test", "Main"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   main:
///     type: aws:ec2:VpcIpam
///     properties:
///       description: My IPAM
///       operatingRegions:
///         - regionName: ${current.region}
///       tags:
///         Test: Main
/// variables:
///   current:
///     fn::invoke:
///       function: aws:getRegion
///       arguments: {}
/// ```
///
///
/// Shared with multiple operating_regions:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
/// import * as std from "@pulumi/std";
///
/// const current = aws.getRegion({});
/// const config = new pulumi.Config();
/// const ipamRegions = config.getObject<Array<any>>("ipamRegions") || [
///     "us-east-1",
///     "us-west-2",
/// ];
/// // ensure current provider region is an operating_regions entry
/// const allIpamRegions = std.concat({
///     input: [
///         [current.then(current => current.region)],
///         ipamRegions,
///     ],
/// }).then(invoke => std.distinct({
///     input: invoke.result,
/// })).then(invoke => invoke.result);
/// const main = new aws.ec2.VpcIpam("main", {
///     operatingRegions: allIpamRegions.map((v, k) => ({key: k, value: v})).apply(entries => entries.map(entry => ({
///         regionName: entry.value,
///     }))),
///     description: "multi region ipam",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
/// import pulumi_std as std
///
/// current = aws.get_region()
/// config = pulumi.Config()
/// ipam_regions = config.get_object("ipamRegions")
/// if ipam_regions is None:
///     ipam_regions = [
///         "us-east-1",
///         "us-west-2",
///     ]
/// # ensure current provider region is an operating_regions entry
/// all_ipam_regions = std.distinct(input=std.concat(input=[
///     [current.region],
///     ipam_regions,
/// ]).result).result
/// main = aws.ec2.VpcIpam("main",
///     operating_regions=[{"key": k, "value": v} for k, v in all_ipam_regions].apply(lambda entries: [{
///         "regionName": entry["value"],
///     } for entry in entries]),
///     description="multi region ipam")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
/// using Std = Pulumi.Std;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var current = Aws.GetRegion.Invoke();
///
///     var config = new Config();
///     var ipamRegions = config.GetObject<dynamic[]>("ipamRegions") ?? new[]
///     {
///         "us-east-1",
///         "us-west-2",
///     };
///     // ensure current provider region is an operating_regions entry
///     var allIpamRegions = Std.Concat.Invoke(new()
///     {
///         Input = new[]
///         {
///             new[]
///             {
///                 current.Apply(getRegionResult => getRegionResult.Region),
///             },
///             ipamRegions,
///         },
///     }).Apply(invoke => Std.Distinct.Invoke(new()
///     {
///         Input = invoke.Result,
///     })).Apply(invoke => invoke.Result);
///
///     var main = new Aws.Ec2.VpcIpam("main", new()
///     {
///         OperatingRegions = .Apply(entries => entries.Select(entry =>
///         {
///             return
///             {
///                 { "regionName", entry.Value },
///             };
///         }).ToList()),
///         Description = "multi region ipam",
///     });
///
/// });
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import IPAMs using the IPAM `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/vpcIpam:VpcIpam example ipam-0178368ad2146a492
/// ```
class VpcIpam extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of IPAM
  late final pulumi.Output<String> arn;

  /// Enables you to quickly delete an IPAM, private scopes, pools in private scopes, and any allocations in the pools in private scopes.
  late final pulumi.Output<bool?> cascade;

  /// The IPAM's default resource discovery association ID.
  late final pulumi.Output<String> defaultResourceDiscoveryAssociationId;

  /// The IPAM's default resource discovery ID.
  late final pulumi.Output<String> defaultResourceDiscoveryId;

  /// A description for the IPAM.
  late final pulumi.Output<String?> description;

  /// Enable this option to use your own GUA ranges as private IPv6 addresses. Default: `false`.
  late final pulumi.Output<bool?> enablePrivateGua;

  /// AWS account that is charged for active IP addresses managed in IPAM. Valid values are `ipam-owner` (default) and `resource-owner`.
  late final pulumi.Output<String> meteredAccount;

  /// Determines which locales can be chosen when you create pools. Locale is the Region where you want to make an IPAM pool available for allocations. You can only create pools with locales that match the operating Regions of the IPAM. You can only create VPCs from a pool whose locale matches the VPC's Region. You specify a region using the region_name parameter. You **must** set your provider block region as an operating_region.
  late final pulumi.Output<List<VpcIpamOperatingRegion>> operatingRegions;

  /// The ID of the IPAM's private scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private IP space. The public scope is intended for all internet-routable IP space.
  late final pulumi.Output<String> privateDefaultScopeId;

  /// The ID of the IPAM's public scope. A scope is a top-level container in IPAM. Each scope represents an IP-independent network. Scopes enable you to represent networks where you have overlapping IP space. When you create an IPAM, IPAM automatically creates two scopes: public and private. The private scope is intended for private
  /// IP space. The public scope is intended for all internet-routable IP space.
  late final pulumi.Output<String> publicDefaultScopeId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The number of scopes in the IPAM.
  late final pulumi.Output<int> scopeCount;

  /// A map of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// specifies the IPAM tier. Valid options include `free` and `advanced`. Default is `advanced`.
  late final pulumi.Output<String?> tier;

  /// Creates a new [VpcIpam].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VpcIpam]. {@macro pulumi_ec2_vpc_ipam_vpc_ipam_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VpcIpam(
    String name, {
    VpcIpamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:ec2/vpcIpam:VpcIpam',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    this.arn = registerOutput<String>('arn');
    this.cascade = registerOutput<bool?>('cascade');
    this.defaultResourceDiscoveryAssociationId = registerOutput<String>(
      'defaultResourceDiscoveryAssociationId',
    );
    this.defaultResourceDiscoveryId = registerOutput<String>(
      'defaultResourceDiscoveryId',
    );
    this.description = registerOutput<String?>('description');
    this.enablePrivateGua = registerOutput<bool?>('enablePrivateGua');
    this.meteredAccount = registerOutput<String>('meteredAccount');
    this.operatingRegions = registerOutput<List<VpcIpamOperatingRegion>>(
      'operatingRegions',
    );
    this.privateDefaultScopeId = registerOutput<String>(
      'privateDefaultScopeId',
    );
    this.publicDefaultScopeId = registerOutput<String>('publicDefaultScopeId');
    this.region = registerOutput<String>('region');
    this.scopeCount = registerOutput<int>('scopeCount');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.tier = registerOutput<String?>('tier');
  }
}
