import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ip_prefix_args.dart';

/// Manages a Public IP Prefix.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const examplePublicIpPrefix = new azure.network.PublicIpPrefix("example", {
///     name: "acceptanceTestPublicIpPrefix1",
///     location: example.location,
///     resourceGroupName: example.name,
///     prefixLength: 31,
///     tags: {
///         environment: "Production",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_public_ip_prefix = azure.network.PublicIpPrefix("example",
///     name="acceptanceTestPublicIpPrefix1",
///     location=example.location,
///     resource_group_name=example.name,
///     prefix_length=31,
///     tags={
///         "environment": "Production",
///     })
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
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var examplePublicIpPrefix = new Azure.Network.PublicIpPrefix("example", new()
///     {
///         Name = "acceptanceTestPublicIpPrefix1",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         PrefixLength = 31,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
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
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewPublicIpPrefix(ctx, "example", &network.PublicIpPrefixArgs{
/// 			Name:              pulumi.String("acceptanceTestPublicIpPrefix1"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			PrefixLength:      pulumi.Int(31),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
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
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.network.PublicIpPrefix;
/// import com.pulumi.azure.network.PublicIpPrefixArgs;
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
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var examplePublicIpPrefix = new PublicIpPrefix("examplePublicIpPrefix", PublicIpPrefixArgs.builder()
///             .name("acceptanceTestPublicIpPrefix1")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .prefixLength(31)
///             .tags(Map.of("environment", "Production"))
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
///       name: example-resources
///       location: West Europe
///   examplePublicIpPrefix:
///     type: azure:network:PublicIpPrefix
///     name: example
///     properties:
///       name: acceptanceTestPublicIpPrefix1
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       prefixLength: 31
///       tags:
///         environment: Production
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
/// Public IP Prefixes can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/publicIpPrefix:PublicIpPrefix myPublicIpPrefix /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/publicIPPrefixes/myPublicIpPrefix1
/// ```
class PublicIpPrefix extends pulumi.CustomResource {
  /// The Custom IP Prefix ID associated with the Public IP Prefix. Changing this forces a new resource to be created.
  ///
  /// > **Note:** When `ip_version` is set to `IPv6`, `custom_ip_prefix_id` must reference a regional (child) range rather than a global (parent) range. For more details on creating a Public IP Prefix from a custom IP prefix, see [here](https://learn.microsoft.com/en-us/azure/virtual-network/ip-services/manage-custom-ip-address-prefix#create-a-public-ip-prefix-from-a-custom-ip-prefix).
  late final pulumi.Output<String?> customIpPrefixId;
  /// The IP address prefix value that was allocated.
  late final pulumi.Output<String> ipPrefix;
  /// The IP Version to use, `IPv6` or `IPv4`. Changing this forces a new resource to be created. Default is `IPv4`.
  late final pulumi.Output<String?> ipVersion;
  /// Specifies the supported Azure location where the resource exists. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Public IP Prefix resource . Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the number of bits of the prefix. The value can be set between 0 (4,294,967,296 addresses) and 31 (2 addresses). Defaults to `28`(16 addresses). Changing this forces a new resource to be created.
  ///
  /// > **Note:** There may be Public IP address limits on the subscription . [More information available here](https://docs.microsoft.com/azure/azure-subscription-service-limits?toc=%2fazure%2fvirtual-network%2ftoc.json#publicip-address)
  late final pulumi.Output<int?> prefixLength;
  /// The name of the resource group in which to create the Public IP Prefix. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// The SKU of the Public IP Prefix. Accepted values are `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Public IP Prefix can only be created with Standard SKUs at this time.
  late final pulumi.Output<String?> sku;
  /// The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> skuTier;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Specifies a list of Availability Zones in which this Public IP Prefix should be located. Changing this forces a new Public IP Prefix to be created.
  ///
  /// > **Note:** Availability Zones are [only supported in several regions at this time](https://docs.microsoft.com/azure/availability-zones/az-overview).
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [PublicIpPrefix].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicIpPrefix]. {@macro pulumi_network_public_ip_prefix_public_ip_prefix_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicIpPrefix(
    String name, {
    PublicIpPrefixArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/publicIpPrefix:PublicIpPrefix',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.customIpPrefixId = registerOutput<String?>('customIpPrefixId');
    this.ipPrefix = registerOutput<String>('ipPrefix');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.prefixLength = registerOutput<int?>('prefixLength');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.sku = registerOutput<String?>('sku');
    this.skuTier = registerOutput<String?>('skuTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
