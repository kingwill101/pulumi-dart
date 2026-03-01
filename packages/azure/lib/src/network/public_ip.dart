import 'package:pulumi/pulumi.dart' as pulumi;
import 'public_ip_args.dart';

/// Manages a Public IP Address.
///
/// > **Note** If this resource is to be associated with a resource that requires disassociation before destruction (such as `azure.network.NetworkInterface`) it is recommended to set the `lifecycle` argument `create_before_destroy = true`. Otherwise, it can fail to disassociate on destruction.
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
/// const examplePublicIp = new azure.network.PublicIp("example", {
///     name: "acceptanceTestPublicIp1",
///     resourceGroupName: example.name,
///     location: example.location,
///     allocationMethod: "Static",
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
/// example_public_ip = azure.network.PublicIp("example",
///     name="acceptanceTestPublicIp1",
///     resource_group_name=example.name,
///     location=example.location,
///     allocation_method="Static",
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
///     var examplePublicIp = new Azure.Network.PublicIp("example", new()
///     {
///         Name = "acceptanceTestPublicIp1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         AllocationMethod = "Static",
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
/// 		_, err = network.NewPublicIp(ctx, "example", &network.PublicIpArgs{
/// 			Name:              pulumi.String("acceptanceTestPublicIp1"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			AllocationMethod:  pulumi.String("Static"),
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
/// import com.pulumi.azure.network.PublicIp;
/// import com.pulumi.azure.network.PublicIpArgs;
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
///         var examplePublicIp = new PublicIp("examplePublicIp", PublicIpArgs.builder()
///             .name("acceptanceTestPublicIp1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .allocationMethod("Static")
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
///   examplePublicIp:
///     type: azure:network:PublicIp
///     name: example
///     properties:
///       name: acceptanceTestPublicIp1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       allocationMethod: Static
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
/// Public IPs can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/publicIp:PublicIp myPublicIp /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/publicIPAddresses/myPublicIpAddress1
/// ```
class PublicIp extends pulumi.CustomResource {
  /// Defines the allocation method for this IP address. Possible values are `Static` or `Dynamic`.
  ///
  /// > **Note** `Dynamic` Public IP Addresses aren't allocated until they're assigned to a resource (such as a Virtual Machine or a Load Balancer) by design within Azure. See `ip_address` argument.
  late final pulumi.Output<String> allocationMethod;
  /// The DDoS protection mode of the public IP. Possible values are `Disabled`, `Enabled`, and `VirtualNetworkInherited`. Defaults to `VirtualNetworkInherited`.
  late final pulumi.Output<String?> ddosProtectionMode;
  /// The ID of DDoS protection plan associated with the public IP.
  ///
  /// > **Note:** `ddos_protection_plan_id` can only be set when `ddos_protection_mode` is `Enabled`.
  late final pulumi.Output<String?> ddosProtectionPlanId;
  /// Label for the Domain Name. Will be used to make up the FQDN. If a domain name label is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system.
  late final pulumi.Output<String?> domainNameLabel;
  /// Scope for the domain name label. If a domain name label scope is specified, an A DNS record is created for the public IP in the Microsoft Azure DNS system with a hashed value includes in FQDN. Possible values are `NoReuse`, `ResourceGroupReuse`, `SubscriptionReuse` and `TenantReuse`.
  late final pulumi.Output<String?> domainNameLabelScope;
  /// Specifies the Edge Zone within the Azure Region where this Public IP should exist. Changing this forces a new Public IP to be created.
  late final pulumi.Output<String?> edgeZone;
  /// Fully qualified domain name of the A DNS record associated with the public IP. `domain_name_label` must be specified to get the `fqdn`. This is the concatenation of the `domain_name_label` and the regionalized DNS zone
  late final pulumi.Output<String> fqdn;
  /// Specifies the timeout for the TCP idle connection. The value can be set between 4 and 30 minutes.
  late final pulumi.Output<int?> idleTimeoutInMinutes;
  /// The IP address value that was allocated.
  late final pulumi.Output<String> ipAddress;
  /// A mapping of IP tags to assign to the public IP. Changing this forces a new resource to be created.
  ///
  /// > **Note** IP Tag `RoutingPreference` requires multiple `zones` and `Standard` SKU to be set.
  late final pulumi.Output<Map<String, String>?> ipTags;
  /// The IP Version to use, IPv6 or IPv4. Changing this forces a new resource to be created. Defaults to `IPv4`.
  ///
  /// > **Note** Only `static` IP address allocation is supported for IPv6.
  late final pulumi.Output<String?> ipVersion;
  /// Specifies the supported Azure location where the Public IP should exist. Changing this forces a new resource to be created.
  late final pulumi.Output<String> location;
  /// Specifies the name of the Public IP. Changing this forces a new Public IP to be created.
  late final pulumi.Output<String> name;
  /// If specified then public IP address allocated will be provided from the public IP prefix resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String?> publicIpPrefixId;
  /// The name of the Resource Group where this Public IP should exist. Changing this forces a new Public IP to be created.
  late final pulumi.Output<String> resourceGroupName;
  /// A fully qualified domain name that resolves to this public IP address. If the reverseFqdn is specified, then a PTR DNS record is created pointing from the IP address in the in-addr.arpa domain to the reverse FQDN.
  late final pulumi.Output<String?> reverseFqdn;
  /// The SKU of the Public IP. Accepted values are `Basic` and `Standard`. Defaults to `Standard`. Changing this forces a new resource to be created.
  ///
  /// > **Note** Public IP Standard SKUs require `allocation_method` to be set to `Static`.
  late final pulumi.Output<String?> sku;
  /// The SKU Tier that should be used for the Public IP. Possible values are `Regional` and `Global`. Defaults to `Regional`. Changing this forces a new resource to be created.
  ///
  /// > **Note** When `sku_tier` is set to `Global`, `sku` must be set to `Standard`.
  late final pulumi.Output<String?> skuTier;
  /// A mapping of tags to assign to the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A collection containing the availability zone to allocate the Public IP in. Changing this forces a new resource to be created.
  ///
  /// > **Note:** Availability Zones are only supported with a [Standard SKU](https://docs.microsoft.com/azure/virtual-network/virtual-network-ip-addresses-overview-arm#standard) and [in select regions](https://docs.microsoft.com/azure/availability-zones/az-overview) at this time. Standard SKU Public IP Addresses that do not specify a zone are **not** zone-redundant by default.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [PublicIp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [PublicIp]. {@macro pulumi_network_public_ip_public_ip_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  PublicIp(
    String name, {
    PublicIpArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/publicIp:PublicIp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.allocationMethod = registerOutput<String>('allocationMethod');
    this.ddosProtectionMode = registerOutput<String?>('ddosProtectionMode');
    this.ddosProtectionPlanId = registerOutput<String?>('ddosProtectionPlanId');
    this.domainNameLabel = registerOutput<String?>('domainNameLabel');
    this.domainNameLabelScope = registerOutput<String?>('domainNameLabelScope');
    this.edgeZone = registerOutput<String?>('edgeZone');
    this.fqdn = registerOutput<String>('fqdn');
    this.idleTimeoutInMinutes = registerOutput<int?>('idleTimeoutInMinutes');
    this.ipAddress = registerOutput<String>('ipAddress');
    this.ipTags = registerOutput<Map<String, String>?>('ipTags');
    this.ipVersion = registerOutput<String?>('ipVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.publicIpPrefixId = registerOutput<String?>('publicIpPrefixId');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.reverseFqdn = registerOutput<String?>('reverseFqdn');
    this.sku = registerOutput<String?>('sku');
    this.skuTier = registerOutput<String?>('skuTier');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
