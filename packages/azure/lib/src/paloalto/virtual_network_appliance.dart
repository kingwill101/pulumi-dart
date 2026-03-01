import 'package:pulumi/pulumi.dart' as pulumi;
import 'virtual_network_appliance_args.dart';

/// Manages a Palo Alto Network Virtual Appliance.
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
///     name: "example-virtualwan",
///     resourceGroupName: example.name,
///     location: example.location,
/// });
/// const exampleVirtualHub = new azure.network.VirtualHub("example", {
///     name: "example-virtualhub",
///     resourceGroupName: example.name,
///     location: example.location,
///     virtualWanId: exampleVirtualWan.id,
///     addressPrefix: "10.0.0.0/23",
///     tags: {
///         hubSaaSPreview: "true",
///     },
/// });
/// const exampleVirtualNetworkAppliance = new azure.paloalto.VirtualNetworkAppliance("example", {
///     name: "example-appliance",
///     virtualHubId: exampleVirtualHub.id,
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
///     name="example-virtualwan",
///     resource_group_name=example.name,
///     location=example.location)
/// example_virtual_hub = azure.network.VirtualHub("example",
///     name="example-virtualhub",
///     resource_group_name=example.name,
///     location=example.location,
///     virtual_wan_id=example_virtual_wan.id,
///     address_prefix="10.0.0.0/23",
///     tags={
///         "hubSaaSPreview": "true",
///     })
/// example_virtual_network_appliance = azure.paloalto.VirtualNetworkAppliance("example",
///     name="example-appliance",
///     virtual_hub_id=example_virtual_hub.id)
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
///         Name = "example-virtualwan",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///     });
///
///     var exampleVirtualHub = new Azure.Network.VirtualHub("example", new()
///     {
///         Name = "example-virtualhub",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         VirtualWanId = exampleVirtualWan.Id,
///         AddressPrefix = "10.0.0.0/23",
///         Tags =
///         {
///             { "hubSaaSPreview", "true" },
///         },
///     });
///
///     var exampleVirtualNetworkAppliance = new Azure.PaloAlto.VirtualNetworkAppliance("example", new()
///     {
///         Name = "example-appliance",
///         VirtualHubId = exampleVirtualHub.Id,
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
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/paloalto"
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
/// 			Name:              pulumi.String("example-virtualwan"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleVirtualHub, err := network.NewVirtualHub(ctx, "example", &network.VirtualHubArgs{
/// 			Name:              pulumi.String("example-virtualhub"),
/// 			ResourceGroupName: example.Name,
/// 			Location:          example.Location,
/// 			VirtualWanId:      exampleVirtualWan.ID(),
/// 			AddressPrefix:     pulumi.String("10.0.0.0/23"),
/// 			Tags: pulumi.StringMap{
/// 				"hubSaaSPreview": pulumi.String("true"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = paloalto.NewVirtualNetworkAppliance(ctx, "example", &paloalto.VirtualNetworkApplianceArgs{
/// 			Name:         pulumi.String("example-appliance"),
/// 			VirtualHubId: exampleVirtualHub.ID(),
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
/// import com.pulumi.azure.paloalto.VirtualNetworkAppliance;
/// import com.pulumi.azure.paloalto.VirtualNetworkApplianceArgs;
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
///             .name("example-virtualwan")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .build());
///
///         var exampleVirtualHub = new VirtualHub("exampleVirtualHub", VirtualHubArgs.builder()
///             .name("example-virtualhub")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .virtualWanId(exampleVirtualWan.id())
///             .addressPrefix("10.0.0.0/23")
///             .tags(Map.of("hubSaaSPreview", "true"))
///             .build());
///
///         var exampleVirtualNetworkAppliance = new VirtualNetworkAppliance("exampleVirtualNetworkAppliance", VirtualNetworkApplianceArgs.builder()
///             .name("example-appliance")
///             .virtualHubId(exampleVirtualHub.id())
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
///       name: example-virtualwan
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///   exampleVirtualHub:
///     type: azure:network:VirtualHub
///     name: example
///     properties:
///       name: example-virtualhub
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       virtualWanId: ${exampleVirtualWan.id}
///       addressPrefix: 10.0.0.0/23
///       tags:
///         hubSaaSPreview: 'true'
///   exampleVirtualNetworkAppliance:
///     type: azure:paloalto:VirtualNetworkAppliance
///     name: example
///     properties:
///       name: example-appliance
///       virtualHubId: ${exampleVirtualHub.id}
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
/// Palo Alto Local Network Virtual Appliances can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:paloalto/virtualNetworkAppliance:VirtualNetworkAppliance example /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/networkVirtualAppliances/myPANetworkVirtualAppliance
/// ```
class VirtualNetworkAppliance extends pulumi.CustomResource {
  /// The name which should be used for this Palo Alto Local Network Virtual Appliance. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  late final pulumi.Output<String> name;
  /// The ID of the Virtual Hub to deploy this appliance onto. Changing this forces a new Palo Alto Local Network Virtual Appliance to be created.
  ///
  /// > **Note:** THe Virtual Hub must be created with the tag `"hubSaaSPreview" = "true"` to be compatible with this resource.
  late final pulumi.Output<String> virtualHubId;

  /// Creates a new [VirtualNetworkAppliance].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [VirtualNetworkAppliance]. {@macro pulumi_paloalto_virtual_network_appliance_virtual_network_appliance_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  VirtualNetworkAppliance(
    String name, {
    VirtualNetworkApplianceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:paloalto/virtualNetworkAppliance:VirtualNetworkAppliance',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.name = registerOutput<String>('name');
    this.virtualHubId = registerOutput<String>('virtualHubId');
  }
}
