import 'package:pulumi/pulumi.dart' as pulumi;
import 'express_route_circuit_authorization_args.dart';

/// Manages an ExpressRoute Circuit Authorization.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "exprtTest",
///     location: "West Europe",
/// });
/// const exampleExpressRouteCircuit = new azure.network.ExpressRouteCircuit("example", {
///     name: "expressRoute1",
///     resourceGroupName: example.name,
///     location: example.location,
///     serviceProviderName: "Equinix",
///     peeringLocation: "Silicon Valley",
///     bandwidthInMbps: 50,
///     sku: {
///         tier: "Standard",
///         family: "MeteredData",
///     },
///     allowClassicOperations: false,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleExpressRouteCircuitAuthorization = new azure.network.ExpressRouteCircuitAuthorization("example", {
///     name: "exampleERCAuth",
///     expressRouteCircuitName: exampleExpressRouteCircuit.name,
///     resourceGroupName: example.name,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="exprtTest",
///     location="West Europe")
/// example_express_route_circuit = azure.network.ExpressRouteCircuit("example",
///     name="expressRoute1",
///     resource_group_name=example.name,
///     location=example.location,
///     service_provider_name="Equinix",
///     peering_location="Silicon Valley",
///     bandwidth_in_mbps=50,
///     sku={
///         "tier": "Standard",
///         "family": "MeteredData",
///     },
///     allow_classic_operations=False,
///     tags={
///         "environment": "Production",
///     })
/// example_express_route_circuit_authorization = azure.network.ExpressRouteCircuitAuthorization("example",
///     name="exampleERCAuth",
///     express_route_circuit_name=example_express_route_circuit.name,
///     resource_group_name=example.name)
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
///         Name = "exprtTest",
///         Location = "West Europe",
///     });
///
///     var exampleExpressRouteCircuit = new Azure.Network.ExpressRouteCircuit("example", new()
///     {
///         Name = "expressRoute1",
///         ResourceGroupName = example.Name,
///         Location = example.Location,
///         ServiceProviderName = "Equinix",
///         PeeringLocation = "Silicon Valley",
///         BandwidthInMbps = 50,
///         Sku = new Azure.Network.Inputs.ExpressRouteCircuitSkuArgs
///         {
///             Tier = "Standard",
///             Family = "MeteredData",
///         },
///         AllowClassicOperations = false,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleExpressRouteCircuitAuthorization = new Azure.Network.ExpressRouteCircuitAuthorization("example", new()
///     {
///         Name = "exampleERCAuth",
///         ExpressRouteCircuitName = exampleExpressRouteCircuit.Name,
///         ResourceGroupName = example.Name,
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
/// 			Name:     pulumi.String("exprtTest"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleExpressRouteCircuit, err := network.NewExpressRouteCircuit(ctx, "example", &network.ExpressRouteCircuitArgs{
/// 			Name:                pulumi.String("expressRoute1"),
/// 			ResourceGroupName:   example.Name,
/// 			Location:            example.Location,
/// 			ServiceProviderName: pulumi.String("Equinix"),
/// 			PeeringLocation:     pulumi.String("Silicon Valley"),
/// 			BandwidthInMbps:     pulumi.Int(50),
/// 			Sku: &network.ExpressRouteCircuitSkuArgs{
/// 				Tier:   pulumi.String("Standard"),
/// 				Family: pulumi.String("MeteredData"),
/// 			},
/// 			AllowClassicOperations: pulumi.Bool(false),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = network.NewExpressRouteCircuitAuthorization(ctx, "example", &network.ExpressRouteCircuitAuthorizationArgs{
/// 			Name:                    pulumi.String("exampleERCAuth"),
/// 			ExpressRouteCircuitName: exampleExpressRouteCircuit.Name,
/// 			ResourceGroupName:       example.Name,
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
/// import com.pulumi.azure.network.ExpressRouteCircuit;
/// import com.pulumi.azure.network.ExpressRouteCircuitArgs;
/// import com.pulumi.azure.network.inputs.ExpressRouteCircuitSkuArgs;
/// import com.pulumi.azure.network.ExpressRouteCircuitAuthorization;
/// import com.pulumi.azure.network.ExpressRouteCircuitAuthorizationArgs;
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
///             .name("exprtTest")
///             .location("West Europe")
///             .build());
///
///         var exampleExpressRouteCircuit = new ExpressRouteCircuit("exampleExpressRouteCircuit", ExpressRouteCircuitArgs.builder()
///             .name("expressRoute1")
///             .resourceGroupName(example.name())
///             .location(example.location())
///             .serviceProviderName("Equinix")
///             .peeringLocation("Silicon Valley")
///             .bandwidthInMbps(50)
///             .sku(ExpressRouteCircuitSkuArgs.builder()
///                 .tier("Standard")
///                 .family("MeteredData")
///                 .build())
///             .allowClassicOperations(false)
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleExpressRouteCircuitAuthorization = new ExpressRouteCircuitAuthorization("exampleExpressRouteCircuitAuthorization", ExpressRouteCircuitAuthorizationArgs.builder()
///             .name("exampleERCAuth")
///             .expressRouteCircuitName(exampleExpressRouteCircuit.name())
///             .resourceGroupName(example.name())
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
///       name: exprtTest
///       location: West Europe
///   exampleExpressRouteCircuit:
///     type: azure:network:ExpressRouteCircuit
///     name: example
///     properties:
///       name: expressRoute1
///       resourceGroupName: ${example.name}
///       location: ${example.location}
///       serviceProviderName: Equinix
///       peeringLocation: Silicon Valley
///       bandwidthInMbps: 50
///       sku:
///         tier: Standard
///         family: MeteredData
///       allowClassicOperations: false
///       tags:
///         environment: Production
///   exampleExpressRouteCircuitAuthorization:
///     type: azure:network:ExpressRouteCircuitAuthorization
///     name: example
///     properties:
///       name: exampleERCAuth
///       expressRouteCircuitName: ${exampleExpressRouteCircuit.name}
///       resourceGroupName: ${example.name}
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
/// ExpressRoute Circuit Authorizations can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:network/expressRouteCircuitAuthorization:ExpressRouteCircuitAuthorization auth1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/mygroup1/providers/Microsoft.Network/expressRouteCircuits/myExpressRoute/authorizations/auth1
/// ```
class ExpressRouteCircuitAuthorization extends pulumi.CustomResource {
  /// The Authorization Key.
  late final pulumi.Output<String> authorizationKey;
  /// The authorization use status.
  late final pulumi.Output<String> authorizationUseStatus;
  /// The name of the Express Route Circuit in which to create the Authorization. Changing this forces a new resource to be created.
  late final pulumi.Output<String> expressRouteCircuitName;
  /// The name of the ExpressRoute circuit. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// The name of the resource group in which to create the ExpressRoute circuit. Changing this forces a new resource to be created.
  late final pulumi.Output<String> resourceGroupName;

  /// Creates a new [ExpressRouteCircuitAuthorization].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ExpressRouteCircuitAuthorization]. {@macro pulumi_network_express_route_circuit_authorization_express_route_circuit_authorization_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ExpressRouteCircuitAuthorization(
    String name, {
    ExpressRouteCircuitAuthorizationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:network/expressRouteCircuitAuthorization:ExpressRouteCircuitAuthorization',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.authorizationKey = registerOutput<String>('authorizationKey');
    this.authorizationUseStatus = registerOutput<String>('authorizationUseStatus');
    this.expressRouteCircuitName = registerOutput<String>('expressRouteCircuitName');
    this.name = registerOutput<String>('name');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
  }
}
