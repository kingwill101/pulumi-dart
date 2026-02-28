import 'package:pulumi/pulumi.dart' as pulumi;
import 'managed_prefix_list_args.dart';
import 'managed_prefix_list_entry.dart';

/// Provides a managed prefix list resource.
///
/// > **NOTE on Managed Prefix Lists and Managed Prefix List Entries:** The provider
/// currently provides both a standalone Managed Prefix List Entry resource (a single entry),
/// and a Managed Prefix List resource with entries defined in-line. At this time you
/// cannot use a Managed Prefix List with in-line rules in conjunction with any Managed
/// Prefix List Entry resources. Doing so will cause a conflict of entries and will overwrite entries.
///
/// > **NOTE on `max_entries`:** When you reference a Prefix List in a resource,
/// the maximum number of entries for the prefix lists counts as the same number of rules
/// or entries for the resource. For example, if you create a prefix list with a maximum
/// of 20 entries and you reference that prefix list in a security group rule, this counts
/// as 20 rules for the security group.
///
/// ## Example Usage
///
/// Basic usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.ManagedPrefixList("example", {
///     name: "All VPC CIDR-s",
///     addressFamily: "IPv4",
///     maxEntries: 5,
///     entries: [
///         {
///             cidr: exampleAwsVpc.cidrBlock,
///             description: "Primary",
///         },
///         {
///             cidr: exampleAwsVpcIpv4CidrBlockAssociation.cidrBlock,
///             description: "Secondary",
///         },
///     ],
///     tags: {
///         Env: "live",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.ManagedPrefixList("example",
///     name="All VPC CIDR-s",
///     address_family="IPv4",
///     max_entries=5,
///     entries=[
///         {
///             "cidr": example_aws_vpc["cidrBlock"],
///             "description": "Primary",
///         },
///         {
///             "cidr": example_aws_vpc_ipv4_cidr_block_association["cidrBlock"],
///             "description": "Secondary",
///         },
///     ],
///     tags={
///         "Env": "live",
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
///     var example = new Aws.Ec2.ManagedPrefixList("example", new()
///     {
///         Name = "All VPC CIDR-s",
///         AddressFamily = "IPv4",
///         MaxEntries = 5,
///         Entries = new[]
///         {
///             new Aws.Ec2.Inputs.ManagedPrefixListEntryArgs
///             {
///                 Cidr = exampleAwsVpc.CidrBlock,
///                 Description = "Primary",
///             },
///             new Aws.Ec2.Inputs.ManagedPrefixListEntryArgs
///             {
///                 Cidr = exampleAwsVpcIpv4CidrBlockAssociation.CidrBlock,
///                 Description = "Secondary",
///             },
///         },
///         Tags =
///         {
///             { "Env", "live" },
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
/// 		_, err := ec2.NewManagedPrefixList(ctx, "example", &ec2.ManagedPrefixListArgs{
/// 			Name:          pulumi.String("All VPC CIDR-s"),
/// 			AddressFamily: pulumi.String("IPv4"),
/// 			MaxEntries:    pulumi.Int(5),
/// 			Entries: ec2.ManagedPrefixListEntryTypeArray{
/// 				&ec2.ManagedPrefixListEntryTypeArgs{
/// 					Cidr:        pulumi.Any(exampleAwsVpc.CidrBlock),
/// 					Description: pulumi.String("Primary"),
/// 				},
/// 				&ec2.ManagedPrefixListEntryTypeArgs{
/// 					Cidr:        pulumi.Any(exampleAwsVpcIpv4CidrBlockAssociation.CidrBlock),
/// 					Description: pulumi.String("Secondary"),
/// 				},
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("live"),
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
/// import com.pulumi.aws.ec2.ManagedPrefixList;
/// import com.pulumi.aws.ec2.ManagedPrefixListArgs;
/// import com.pulumi.aws.ec2.inputs.ManagedPrefixListEntryArgs;
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
///         var example = new ManagedPrefixList("example", ManagedPrefixListArgs.builder()
///             .name("All VPC CIDR-s")
///             .addressFamily("IPv4")
///             .maxEntries(5)
///             .entries(
///                 ManagedPrefixListEntryArgs.builder()
///                     .cidr(exampleAwsVpc.cidrBlock())
///                     .description("Primary")
///                     .build(),
///                 ManagedPrefixListEntryArgs.builder()
///                     .cidr(exampleAwsVpcIpv4CidrBlockAssociation.cidrBlock())
///                     .description("Secondary")
///                     .build())
///             .tags(Map.of("Env", "live"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:ec2:ManagedPrefixList
///     properties:
///       name: All VPC CIDR-s
///       addressFamily: IPv4
///       maxEntries: 5
///       entries:
///         - cidr: ${exampleAwsVpc.cidrBlock}
///           description: Primary
///         - cidr: ${exampleAwsVpcIpv4CidrBlockAssociation.cidrBlock}
///           description: Secondary
///       tags:
///         Env: live
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import Prefix Lists using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:ec2/managedPrefixList:ManagedPrefixList default pl-0570a1d2d725c16be
/// ```
class ManagedPrefixList extends pulumi.CustomResource {
  /// Address family (`IPv4` or `IPv6`) of this prefix list.
  late final pulumi.Output<String> addressFamily;
  /// ARN of the prefix list.
  late final pulumi.Output<String> arn;
  /// Configuration block for prefix list entry. Detailed below. Different entries may have overlapping CIDR blocks, but a particular CIDR should not be duplicated.
  late final pulumi.Output<List<ManagedPrefixListEntry>> entries;
  /// Maximum number of entries that this prefix list can contain.
  late final pulumi.Output<int> maxEntries;
  /// Name of this resource. The name must not start with `com.amazonaws`.
  late final pulumi.Output<String> name;
  /// ID of the AWS account that owns this prefix list.
  late final pulumi.Output<String> ownerId;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Map of tags to assign to this resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Latest version of this prefix list.
  late final pulumi.Output<int> version;

  /// Creates a new [ManagedPrefixList].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ManagedPrefixList]. {@macro pulumi_ec2_managed_prefix_list_managed_prefix_list_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ManagedPrefixList(
    String name, {
    ManagedPrefixListArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:ec2/managedPrefixList:ManagedPrefixList',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.addressFamily = registerOutput<String>('addressFamily');
    this.arn = registerOutput<String>('arn');
    this.entries = registerOutput<List<ManagedPrefixListEntry>>('entries');
    this.maxEntries = registerOutput<int>('maxEntries');
    this.name = registerOutput<String>('name');
    this.ownerId = registerOutput<String>('ownerId');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
    this.version = registerOutput<int>('version');
  }
}
