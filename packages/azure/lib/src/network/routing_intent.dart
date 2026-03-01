import 'package:pulumi/pulumi.dart' as pulumi;
import 'routing_intent_args.dart';
import 'routing_intent_routing_policy.dart';

/// Manages a Virtual Hub Routing Intent.
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
/// const exampleVirtualWan = new azure.network.VirtualWan("example", {
///     name: "example-vwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-vhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.1.0/24",
/// });
/// const exampleFirewall = new azure.network.Firewall("example", {
///     name: "example-fw",
///     location: example.location,
///     resourceGroupName: example.name,
///     skuName: "AZFW_Hub",
///     skuTier: "Standard",
///     virtualHub: {
///         virtualHubId: exampleVirtualHub.id,
///         publicIpCount: 1,
///     },
/// });
/// const exampleRoutingIntent = new azure.network.RoutingIntent("example", {
///     name: "example-routingintent",
///     virtualHubId: exampleVirtualHub.id,
///     routingPolicies: [{
///         name: "InternetTrafficPolicy",
///         destinations: ["Internet"],
///         nextHop: exampleFirewall.id,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_virtual_wan = azure.network.VirtualWan("example",
///     name="example-vwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-vhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.1.0/24")
/// example_firewall = azure.network.Firewall("example",
///     name="example-fw",
///     location=example.location,
///     resource_group_name=example.name,
///     sku_name="AZFW_Hub",
///     sku_tier="Standard",
///     virtual_hub={
///         "virtual_hub_id": example_virtual_hub.id,
///         "public_ip_count": 1,
///     })
/// example_routing_intent = azure.network.RoutingIntent("example",
///     name="example-routingintent",
///     virtual_hub_id=example_virtual_hub.id,
///     routing_policies=[{
///         "name": "InternetTrafficPolicy",
///         "destinations": ["Internet"],
///         "next_hop": example_firewall.id,
///     }])
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
///     var exampleVirtualWan = new Azure.Network.VirtualWan("example", new()
///     {
///         Name = "example-vwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-vhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.1.0/24",
///     });
///
///     var exampleFirewall = new Azure.Network.Firewall("example", new()
///     {
///         Name = "example-fw",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         SkuName = "AZFW_Hub",
///         SkuTier = "Standard",
///         VirtualHub = new Azure.Network.Inputs.FirewallVirtualHubArgs
///         {
///             VirtualHubId = exampleVirtualHub.Id,
///             PublicIpCount = 1,
///         },
///     });
///
///     var exampleRoutingIntent = new Azure.Network.RoutingIntent("example", new()
///     {
///         Name = "example-routingintent",
///         VirtualHubId = exampleVirtualHub.Id,
///         RoutingPolicies = new[]
///         {
///             new Azure.Network.Inputs.RoutingIntentRoutingPolicyArgs
///             {
///                 Name = "InternetTrafficPolicy",
///                 Destinations = new[]
///                 {
///                     "Internet",
///                 },
///                 NextHop = exampleFirewall.Id,
///             },
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
/// 		exampleVirtualWan, err := network.NewVirtualWan(ctx, "example", &network.VirtualWanArgs{
/// 			Name:              pulumi.String("example-vwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-vhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.1.0/24"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleFirewall, err := network.NewFirewall(ctx, "example", &network.FirewallArgs{
/// 			Name:              pulumi.String("example-fw"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			SkuName:           pulumi.String("AZFW_Hub"),
/// 			SkuTier:           pulumi.String("Standard"),
/// 			VirtualHub: &network.FirewallVirtualHubArgs{
/// 				VirtualHubId:  exampleVirtualHub.ID(),
/// 				PublicIpCount: pulumi.Int(1),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewRoutingIntent(ctx, "example", &network.RoutingIntentArgs{
/// 			Name:         pulumi.String("example-routingintent"),
/// 			VirtualHubId: exampleVirtualHub.ID(),
/// 			RoutingPolicies: network.RoutingIntentRoutingPolicyArray{
/// 				&network.RoutingIntentRoutingPolicyArgs{
/// 					Name: pulumi.String("InternetTrafficPolicy"),
/// 					Destinations: pulumi.StringArray{
/// 						pulumi.String("Internet"),
/// 					},
/// 					NextHop: exampleFirewall.ID(),
/// 				},
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
/// import com.pulumi.azure.network.VirtualWan;
/// import com.pulumi.azure.network.VirtualWanArgs;
/// import com.pulumi.azure.network.VirtualHub;
/// import com.pulumi.azure.network.VirtualHubArgs;
/// import com.pulumi.azure.network.Firewall;
/// import com.pulumi.azure.network.FirewallArgs;
/// import com.pulumi.azure.network.inputs.FirewallVirtualHubArgs;
/// import com.pulumi.azure.network.RoutingIntent;
/// import com.pulumi.azure.network.RoutingIntentArgs;
/// import com.pulumi.azure.network.inputs.RoutingIntentRoutingPolicyArgs;
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
///         var exampleVirtualWan = new VirtualWan("exampleVirtualWan", VirtualWanArgs.builder()
///             .name("example-vwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-vhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.1.0/24")
///             .build());
///
///         var exampleFirewall = new Firewall("exampleFirewall", FirewallArgs.builder()
///             .name("example-fw")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .skuName("AZFW_Hub")
///             .skuTier("Standard")
///             .virtualHub(FirewallVirtualHubArgs.builder()
///                 .virtualHubId(exampleVirtualHub.id())
///                 .publicIpCount(1)
///                 .build())
///             .build());
///
///         var exampleRoutingIntent = new RoutingIntent("exampleRoutingIntent", RoutingIntentArgs.builder()
///             .name("example-routingintent")
///             .virtualHubId(exampleVirtualHub.id())
///             .routingPolicies(RoutingIntentRoutingPolicyArgs.builder()
///                 .name("InternetTrafficPolicy")
///                 .destinations("Internet")
///                 .nextHop(exampleFirewall.id())
///                 .build())
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
///   exampleVirtualWan:
///     type: azure:network:VirtualWan
///     name: example
///     properties:
///       name: example-vwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-vhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.1.0/24
///   exampleFirewall:
///     type: azure:network:Firewall
///     name: example
///     properties:
///       name: example-fw
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       skuName: AZFW_Hub
///       skuTier: Standard
///       virtualHub:
///         virtualHubId: ${exampleVirtualHub.id}
///         publicIpCount: 1
///   exampleRoutingIntent:
///     type: azure:network:RoutingIntent
///     name: example
///     properties:
///       name: example-routingintent
///       virtualHubId: ${exampleVirtualHub.id}
///       routingPolicies:
///         - name: InternetTrafficPolicy
///           destinations:
///             - Internet
///           nextHop: ${exampleFirewall.id}
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
/// Virtual Hub Routing Intents can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/routingIntent:RoutingIntent example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/resourceGroup1/providers/Microsoft.Network/virtualHubs/virtualHub1/routingIntent/routingIntent1
/// ```
class RoutingIntent extends pulumi.CustomResource {
  /// The name which should be used for this Virtual Hub Routing Intent. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// One or more `routing_policy` blocks as defined below.
  late final pulumi.Output<List<RoutingIntentRoutingPolicy>> routingPolicies;
  /// The resource ID of the Virtual Hub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [RoutingIntent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RoutingIntent]. {@macro pulumi_network_routing_intent_routing_intent_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RoutingIntent(
    String name, {
    RoutingIntentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/routingIntent:RoutingIntent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.routingPolicies = registerOutput<List<RoutingIntentRoutingPolicy>>('routingPolicies');
    this.virtualHubId = registerOutput<String>('virtualHubId');
  }
}
