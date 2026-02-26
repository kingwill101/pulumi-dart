import 'package:pulumi/pulumi.dart';
import 'managed_prefix_list_entry_args.dart';

/// Use the <span pulumi-lang-nodejs="`awsPrefixListEntry`" pulumi-lang-dotnet="`AwsPrefixListEntry`" pulumi-lang-go="`awsPrefixListEntry`" pulumi-lang-python="`aws_prefix_list_entry`" pulumi-lang-yaml="`awsPrefixListEntry`" pulumi-lang-java="`awsPrefixListEntry`">`aws_prefix_list_entry`</span> resource to manage a managed prefix list entry.
///
/// > **NOTE:** Pulumi currently provides two resources for managing Managed Prefix Lists and Managed Prefix List Entries. The standalone resource, Managed Prefix List Entry, is used to manage a single entry. The Managed Prefix List resource is used to manage multiple entries defined in-line. It is important to note that you cannot use a Managed Prefix List with in-line rules in conjunction with any Managed Prefix List Entry resources. This will result in a conflict of entries and will cause the entries to be overwritten.
///
/// > **NOTE:** To improve execution times on larger updates, it is recommended to use the inline <span pulumi-lang-nodejs="`entry`" pulumi-lang-dotnet="`Entry`" pulumi-lang-go="`entry`" pulumi-lang-python="`entry`" pulumi-lang-yaml="`entry`" pulumi-lang-java="`entry`">`entry`</span> block as part of the Managed Prefix List resource when creating a prefix list with more than 100 entries. You can find more information about the resource here.
///
/// ## Example Usage
///
/// Basic usage.
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.ec2.ManagedPrefixList("example", {
/// name: "All VPC CIDR-s",
/// addressFamily: "IPv4",
/// maxEntries: 5,
/// tags: {
/// Env: "live",
/// },
/// });
/// const entry1 = new aws.ec2.ManagedPrefixListEntry("entry_1", {
/// cidr: exampleAwsVpc.cidrBlock,
/// description: "Primary",
/// prefixListId: example.id,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.ec2.ManagedPrefixList("example",
/// name="All VPC CIDR-s",
/// address_family="IPv4",
/// max_entries=5,
/// tags={
/// "Env": "live",
/// })
/// entry1 = aws.ec2.ManagedPrefixListEntry("entry_1",
/// cidr=example_aws_vpc["cidrBlock"],
/// description="Primary",
/// prefix_list_id=example.id)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
/// var example = new Aws.Ec2.ManagedPrefixList("example", new()
/// {
/// Name = "All VPC CIDR-s",
/// AddressFamily = "IPv4",
/// MaxEntries = 5,
/// Tags =
/// {
/// { "Env", "live" },
/// },
/// });
///
/// var entry1 = new Aws.Ec2.ManagedPrefixListEntry("entry_1", new()
/// {
/// Cidr = exampleAwsVpc.CidrBlock,
/// Description = "Primary",
/// PrefixListId = example.Id,
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
/// example, err := ec2.NewManagedPrefixList(ctx, "example", &ec2.ManagedPrefixListArgs{
/// Name:          pulumi.String("All VPC CIDR-s"),
/// AddressFamily: pulumi.String("IPv4"),
/// MaxEntries:    pulumi.Int(5),
/// Tags: pulumi.StringMap{
/// "Env": pulumi.String("live"),
/// },
/// })
/// if err != nil {
/// return err
/// }
/// _, err = ec2.NewManagedPrefixListEntry(ctx, "entry_1", &ec2.ManagedPrefixListEntryArgs{
/// Cidr:         pulumi.Any(exampleAwsVpc.CidrBlock),
/// Description:  pulumi.String("Primary"),
/// PrefixListId: example.ID(),
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
/// import com.pulumi.aws.ec2.ManagedPrefixList;
/// import com.pulumi.aws.ec2.ManagedPrefixListArgs;
/// import com.pulumi.aws.ec2.ManagedPrefixListEntry;
/// import com.pulumi.aws.ec2.ManagedPrefixListEntryArgs;
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
/// var example = new ManagedPrefixList("example", ManagedPrefixListArgs.builder()
/// .name("All VPC CIDR-s")
/// .addressFamily("IPv4")
/// .maxEntries(5)
/// .tags(Map.of("Env", "live"))
/// .build());
///
/// var entry1 = new ManagedPrefixListEntry("entry1", ManagedPrefixListEntryArgs.builder()
/// .cidr(exampleAwsVpc.cidrBlock())
/// .description("Primary")
/// .prefixListId(example.id())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:ec2:ManagedPrefixList
/// properties:
/// name: All VPC CIDR-s
/// addressFamily: IPv4
/// maxEntries: 5
/// tags:
/// Env: live
/// entry1:
/// type: aws:ec2:ManagedPrefixListEntry
/// name: entry_1
/// properties:
/// cidr: ${exampleAwsVpc.cidrBlock}
/// description: Primary
/// prefixListId: ${example.id}
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import prefix list entries using <span pulumi-lang-nodejs="`prefixListId`" pulumi-lang-dotnet="`PrefixListId`" pulumi-lang-go="`prefixListId`" pulumi-lang-python="`prefix_list_id`" pulumi-lang-yaml="`prefixListId`" pulumi-lang-java="`prefixListId`">`prefix_list_id`</span> and <span pulumi-lang-nodejs="`cidr`" pulumi-lang-dotnet="`Cidr`" pulumi-lang-go="`cidr`" pulumi-lang-python="`cidr`" pulumi-lang-yaml="`cidr`" pulumi-lang-java="`cidr`">`cidr`</span> separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:ec2/managedPrefixListEntry:ManagedPrefixListEntry default pl-0570a1d2d725c16be,10.0.3.0/24
/// ```
class ManagedPrefixListEntry2 extends CustomResource {
  /// CIDR block of this entry.
  late final Output<String> cidr;

  /// Description of this entry. Please note that due to API limitations, updating only the description of an entry will require recreating the entry.
  late final Output<String?> description;

  /// The ID of the prefix list.
  late final Output<String> prefixListId;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  ManagedPrefixListEntry2(
    String name, {
    ManagedPrefixListEntryArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:ec2/managedPrefixListEntry:ManagedPrefixListEntry',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.cidr = Output.createUnknown<String>();
    this.description = Output.createUnknown<String?>();
    this.prefixListId = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
  }
}
