import 'package:pulumi/pulumi.dart' as pulumi;
import 'prefix_list_association_args.dart';
import 'prefix_list_association_state.dart';

/// Associates an EC2 managed prefix list with a Network Manager Cloud WAN core network. Once associated, the prefix list can be referenced in the core network policy document.
///
/// &gt; **NOTE:** The prefix list must be defined in the [Cloud WAN home region](https://docs.aws.amazon.com/network-manager/latest/cloudwan/what-is-cloudwan.html#cloudwan-home-region) (us-west-2). Although defined in the Cloud WAN home region, the prefix-list based policy will apply globally to all the relevant core network edges (regions) in your core network.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const prefixList = new aws.ec2.ManagedPrefixList("prefix_list", {
///     entries: [{
///         cidr: "10.0.0.0/8",
///         description: "Example CIDR",
///     }],
///     name: "example",
///     addressFamily: "IPv4",
///     maxEntries: 5,
/// });
/// const plAssociation = new aws.networkmanager.PrefixListAssociation("pl_association", {
///     coreNetworkId: coreNetwork.id,
///     prefixListArn: prefixList.arn,
///     prefixListAlias: "exampleprefixlist",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// prefix_list = aws.ec2.ManagedPrefixList("prefix_list",
///     entries=[{
///         "cidr": "10.0.0.0/8",
///         "description": "Example CIDR",
///     }],
///     name="example",
///     address_family="IPv4",
///     max_entries=5)
/// pl_association = aws.networkmanager.PrefixListAssociation("pl_association",
///     core_network_id=core_network["id"],
///     prefix_list_arn=prefix_list.arn,
///     prefix_list_alias="exampleprefixlist")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var prefixList = new Aws.Ec2.ManagedPrefixList("prefix_list", new()
///     {
///         Entries = new[]
///         {
///             new Aws.Ec2.Inputs.ManagedPrefixListEntryArgs
///             {
///                 Cidr = "10.0.0.0/8",
///                 Description = "Example CIDR",
///             },
///         },
///         Name = "example",
///         AddressFamily = "IPv4",
///         MaxEntries = 5,
///     });
///
///     var plAssociation = new Aws.NetworkManager.PrefixListAssociation("pl_association", new()
///     {
///         CoreNetworkId = coreNetwork.Id,
///         PrefixListArn = prefixList.Arn,
///         PrefixListAlias = "exampleprefixlist",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/ec2"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/networkmanager"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		prefixList, err := ec2.NewManagedPrefixList(ctx, "prefix_list", &ec2.ManagedPrefixListArgs{
/// 			Entries: ec2.ManagedPrefixListEntryTypeArray{
/// 				&ec2.ManagedPrefixListEntryTypeArgs{
/// 					Cidr:        pulumi.String("10.0.0.0/8"),
/// 					Description: pulumi.String("Example CIDR"),
/// 				},
/// 			},
/// 			Name:          pulumi.String("example"),
/// 			AddressFamily: pulumi.String("IPv4"),
/// 			MaxEntries:    pulumi.Int(5),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = networkmanager.NewPrefixListAssociation(ctx, "pl_association", &networkmanager.PrefixListAssociationArgs{
/// 			CoreNetworkId:   pulumi.Any(coreNetwork.Id),
/// 			PrefixListArn:   prefixList.Arn,
/// 			PrefixListAlias: pulumi.String("exampleprefixlist"),
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
/// resource "aws_ec2_managedprefixlist" "prefix_list" {
///   entries {
///     cidr        = "10.0.0.0/8"
///     description = "Example CIDR"
///   }
///   name           = "example"
///   address_family = "IPv4"
///   max_entries    = 5
/// }
/// resource "aws_networkmanager_prefixlistassociation" "pl_association" {
///   core_network_id   = coreNetwork.id
///   prefix_list_arn   = aws_ec2_managedprefixlist.prefix_list.arn
///   prefix_list_alias = "exampleprefixlist"
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
/// import com.pulumi.aws.networkmanager.PrefixListAssociation;
/// import com.pulumi.aws.networkmanager.PrefixListAssociationArgs;
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
///         var prefixList = new ManagedPrefixList("prefixList", ManagedPrefixListArgs.builder()
///             .entries(ManagedPrefixListEntryArgs.builder()
///                 .cidr("10.0.0.0/8")
///                 .description("Example CIDR")
///                 .build())
///             .name("example")
///             .addressFamily("IPv4")
///             .maxEntries(5)
///             .build());
///
///         var plAssociation = new PrefixListAssociation("plAssociation", PrefixListAssociationArgs.builder()
///             .coreNetworkId(coreNetwork.id())
///             .prefixListArn(prefixList.arn())
///             .prefixListAlias("exampleprefixlist")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   prefixList:
///     type: aws:ec2:ManagedPrefixList
///     name: prefix_list
///     properties:
///       entries:
///         - cidr: 10.0.0.0/8
///           description: Example CIDR
///       name: example
///       addressFamily: IPv4
///       maxEntries: 5
///   plAssociation:
///     type: aws:networkmanager:PrefixListAssociation
///     name: pl_association
///     properties:
///       coreNetworkId: ${coreNetwork.id}
///       prefixListArn: ${prefixList.arn}
///       prefixListAlias: exampleprefixlist
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `coreNetworkId` (String) Core network ID.
/// * `prefixListArn` (String) Prefix list ARN.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
///
///
/// Using `pulumi import`, import `aws.networkmanager.PrefixListAssociation` using the core network ID and prefix list ARN separated by a comma (`,`). For example:
///
/// ```sh
/// $ pulumi import aws:networkmanager/prefixListAssociation:PrefixListAssociation example core-network-0fab1c1e1e1e1e1e1,arn:aws:ec2:us-west-2:123456789012:prefix-list/pl-0123456789abcdef0
/// ```
class PrefixListAssociation extends pulumi.CustomResource {
  /// The ID of the core network to associate the prefix list with.
  late final pulumi.Output<String> coreNetworkId;
  /// An alias for the prefix list association. This alias can be used to reference the prefix list in the core network policy document. Must start with a letter, be less than 64 characters long, and may only include letters and numbers.
  late final pulumi.Output<String> prefixListAlias;
  /// The ARN of the EC2 managed prefix list to associate with the core network.
  late final pulumi.Output<String> prefixListArn;

  /// Creates a new [PrefixListAssociation].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PrefixListAssociation]. {@macro pulumi_networkmanager_prefix_list_association_prefix_list_association_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PrefixListAssociation(
    String name, {
    PrefixListAssociationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/prefixListAssociation:PrefixListAssociation',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    coreNetworkId = registerOutput<String>('coreNetworkId');
    prefixListAlias = registerOutput<String>('prefixListAlias');
    prefixListArn = registerOutput<String>('prefixListArn');
  }

  /// Gets an existing [PrefixListAssociation] resource's state with the given [name] and [id].
  static PrefixListAssociation get(
    String name,
    pulumi.Input<String> id, {
    PrefixListAssociationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return PrefixListAssociation._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  PrefixListAssociation._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:networkmanager/prefixListAssociation:PrefixListAssociation',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    coreNetworkId = registerOutput<String>('coreNetworkId');
    prefixListAlias = registerOutput<String>('prefixListAlias');
    prefixListArn = registerOutput<String>('prefixListArn');
  }

  /// Creates a typed reference to an existing [PrefixListAssociation] resource.
  PrefixListAssociation.reference(String urn)
    : super(
        'aws:networkmanager/prefixListAssociation:PrefixListAssociation',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    coreNetworkId = registerOutput<String>('coreNetworkId');
    prefixListAlias = registerOutput<String>('prefixListAlias');
    prefixListArn = registerOutput<String>('prefixListArn');
  }
}
