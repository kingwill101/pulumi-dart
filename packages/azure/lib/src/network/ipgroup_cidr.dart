import 'package:pulumi/pulumi.dart' as pulumi;
import 'ipgroup_cidrargs.dart';

/// Manages IP Group CIDR records.
///
/// > **Note:** Warning Do not use this resource at the same time as the `cidrs` property of the
/// `azure.network.IPGroup` resource for the same IP Group. Doing so will cause a conflict and
/// CIDRS will be removed.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "test-rg",
///     location: "West Europe",
/// });
/// const exampleIPGroup = new azure.network.IPGroup("example", {
///     name: "test-ipgroup",
///     location: example.location,
///     resourceGroupName: example.name,
/// });
/// const exampleIPGroupCIDR = new azure.network.IPGroupCIDR("example", {
///     ipGroupId: exampleIPGroup.id,
///     cidr: "10.10.10.0/24",
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="test-rg",
///     location="West Europe")
/// example_ip_group = azure.network.IPGroup("example",
///     name="test-ipgroup",
///     location=example.location,
///     resource_group_name=example.name)
/// example_ip_group_cidr = azure.network.IPGroupCIDR("example",
///     ip_group_id=example_ip_group.id,
///     cidr="10.10.10.0/24")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "test-rg",
///         Location = "West Europe",
///     });
///
///     var exampleIPGroup = new Azure.Network.IPGroup("example", new()
///     {
///         Name = "test-ipgroup",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///     });
///
///     var exampleIPGroupCIDR = new Azure.Network.IPGroupCIDR("example", new()
///     {
///         IpGroupId = exampleIPGroup.Id,
///         Cidr = "10.10.10.0/24",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/network"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("test-rg"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleIPGroup, err := network.NewIPGroup(ctx, "example", &network.IPGroupArgs{
/// 			Name:              pulumi.String("test-ipgroup"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewIPGroupCIDR(ctx, "example", &network.IPGroupCIDRArgs{
/// 			IpGroupId: exampleIPGroup.ID(),
/// 			Cidr:      pulumi.String("10.10.10.0/24"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.IPGroup;
/// import com.pulumi.azure.network.IPGroupArgs;
/// import com.pulumi.azure.network.IPGroupCIDR;
/// import com.pulumi.azure.network.IPGroupCIDRArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("test-rg")
///             .location("West Europe")
///             .build());
///
///         var exampleIPGroup = new IPGroup("exampleIPGroup", IPGroupArgs.builder()
///             .name("test-ipgroup")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .build());
///
///         var exampleIPGroupCIDR = new IPGroupCIDR("exampleIPGroupCIDR", IPGroupCIDRArgs.builder()
///             .ipGroupId(exampleIPGroup.id())
///             .cidr("10.10.10.0/24")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: test-rg
///       location: West Europe
///   exampleIPGroup:
///     type: azure:network:IPGroup
///     name: example
///     properties:
///       name: test-ipgroup
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///   exampleIPGroupCIDR:
///     type: azure:network:IPGroupCIDR
///     name: example
///     properties:
///       ipGroupId: ${exampleIPGroup.id}
///       cidr: 10.10.10.0/24
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.Network` - 2025-01-01
///
/// ## Import
///
/// IP Group CIDRs can be imported using the `resource id` of the IP Group and
/// the CIDR value (`/` characters have to be replaced by `_`), e.g.
///
/// ```sh
/// $ pulumi import azure:network/iPGroupCIDR:IPGroupCIDR example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/test-rg/providers/Microsoft.Network/ipGroups/test-ipgroup/cidrs/10.1.0.0_24
/// ```
class IPGroupCIDR extends pulumi.CustomResource {
  /// The `CIDR` that should be added to the IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  ///
  /// > **Note:** The AzureRM Terraform provider provides cidr support via this standalone resource and in-line within azure.network.IPGroup using the `cidrs` property. You cannot use both methods simultaneously. If cidrs are set via this resource then `ignore_changes` should be used in the resource `azure.network.IPGroupCIDR` configuration.
  late final pulumi.Output<String> cidr;
  /// The ID of the destination IP Group.
  /// Changing this forces a new IP Group CIDR to be created.
  late final pulumi.Output<String> ipGroupId;

  /// Creates a new [IPGroupCIDR].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [IPGroupCIDR]. {@macro pulumi_network_i_pgroup_cidr_ipgroup_cidrargs_doc}
  /// [options] Resource options controlling this resource's behavior.
  IPGroupCIDR(
    String name, {
    IPGroupCIDRArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/iPGroupCIDR:IPGroupCIDR',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.cidr = registerOutput<String>('cidr');
    this.ipGroupId = registerOutput<String>('ipGroupId');
  }
}
