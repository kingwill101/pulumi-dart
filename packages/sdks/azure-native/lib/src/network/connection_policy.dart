import 'package:pulumi/pulumi.dart' as pulumi;
import 'connection_policy_args.dart';
import 'connection_policy_properties_response.dart';

/// ConnectionPolicy resource defined for VirtualHub.
///
/// Uses Azure REST API version 2025-07-01.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### ConnectionPolicyPut
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var connectionPolicy = new AzureNative.Network.ConnectionPolicy("connectionPolicy", new()
///     {
///         ConnectionPolicyName = "testpolicy2",
///         Properties = new AzureNative.Network.Inputs.ConnectionPolicyPropertiesArgs
///         {
///             EnableInternetSecurity = true,
///             RoutingConfiguration = new AzureNative.Network.Inputs.RoutingConfigurationArgs
///             {
///                 AssociatedRouteTable = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/hubRouteTables/defaultRouteTable",
///                 },
///                 InboundRouteMap = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap",
///                 },
///                 OutboundRouteMap = new AzureNative.Network.Inputs.SubResourceArgs
///                 {
///                     Id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap",
///                 },
///                 PropagatedRouteTables = new AzureNative.Network.Inputs.PropagatedRouteTableArgs
///                 {
///                     Labels = new[]
///                     {
///                         "default",
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "rg1",
///         VirtualHubName = "TestHub",
///     });
///
/// });
///
///
/// ```
///
/// ```go
/// package main
///
/// import (
/// 	network "github.com/pulumi/pulumi-azure-native-sdk/network/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := network.NewConnectionPolicy(ctx, "connectionPolicy", &network.ConnectionPolicyArgs{
/// 			ConnectionPolicyName: pulumi.String("testpolicy2"),
/// 			Properties: &network.ConnectionPolicyPropertiesArgs{
/// 				EnableInternetSecurity: pulumi.Bool(true),
/// 				RoutingConfiguration: &network.RoutingConfigurationTypeArgs{
/// 					AssociatedRouteTable: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/hubRouteTables/defaultRouteTable"),
/// 					},
/// 					InboundRouteMap: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap"),
/// 					},
/// 					OutboundRouteMap: &network.SubResourceArgs{
/// 						Id: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap"),
/// 					},
/// 					PropagatedRouteTables: &network.PropagatedRouteTableArgs{
/// 						Labels: pulumi.StringArray{
/// 							pulumi.String("default"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("rg1"),
/// 			VirtualHubName:    pulumi.String("TestHub"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
///
/// ```
///
/// ```hcl
/// pulumi {
///   required_providers {
///     azure-native = {
///       source = "pulumi/azure-native"
///     }
///   }
/// }
///
/// resource "azure-native_network_connectionpolicy" "connectionPolicy" {
///   connection_policy_name = "testpolicy2"
///   properties = {
///     enable_internet_security = true
///     routing_configuration = {
///       associated_route_table = {
///         id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/hubRouteTables/defaultRouteTable"
///       }
///       inbound_route_map = {
///         id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap"
///       }
///       outbound_route_map = {
///         id = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap"
///       }
///       propagated_route_tables = {
///         labels = ["default"]
///       }
///     }
///   }
///   resource_group_name = "rg1"
///   virtual_hub_name    = "TestHub"
/// }
///
/// ```
///
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.network.ConnectionPolicy;
/// import com.pulumi.azurenative.network.ConnectionPolicyArgs;
/// import com.pulumi.azurenative.network.inputs.ConnectionPolicyPropertiesArgs;
/// import com.pulumi.azurenative.network.inputs.RoutingConfigurationArgs;
/// import com.pulumi.azurenative.network.inputs.SubResourceArgs;
/// import com.pulumi.azurenative.network.inputs.PropagatedRouteTableArgs;
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
///         var connectionPolicy = new ConnectionPolicy("connectionPolicy", ConnectionPolicyArgs.builder()
///             .connectionPolicyName("testpolicy2")
///             .properties(ConnectionPolicyPropertiesArgs.builder()
///                 .enableInternetSecurity(true)
///                 .routingConfiguration(RoutingConfigurationArgs.builder()
///                     .associatedRouteTable(SubResourceArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/hubRouteTables/defaultRouteTable")
///                         .build())
///                     .inboundRouteMap(SubResourceArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap")
///                         .build())
///                     .outboundRouteMap(SubResourceArgs.builder()
///                         .id("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap")
///                         .build())
///                     .propagatedRouteTables(PropagatedRouteTableArgs.builder()
///                         .labels("default")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("rg1")
///             .virtualHubName("TestHub")
///             .build());
///
///     }
/// }
///
/// ```
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure_native from "@pulumi/azure-native";
///
/// const connectionPolicy = new azure_native.network.ConnectionPolicy("connectionPolicy", {
///     connectionPolicyName: "testpolicy2",
///     properties: {
///         enableInternetSecurity: true,
///         routingConfiguration: {
///             associatedRouteTable: {
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/hubRouteTables/defaultRouteTable",
///             },
///             inboundRouteMap: {
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap",
///             },
///             outboundRouteMap: {
///                 id: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap",
///             },
///             propagatedRouteTables: {
///                 labels: ["default"],
///             },
///         },
///     },
///     resourceGroupName: "rg1",
///     virtualHubName: "TestHub",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// connection_policy = azure_native.network.ConnectionPolicy("connectionPolicy",
///     connection_policy_name="testpolicy2",
///     properties={
///         "enable_internet_security": True,
///         "routing_configuration": {
///             "associated_route_table": {
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/hubRouteTables/defaultRouteTable",
///             },
///             "inbound_route_map": {
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap",
///             },
///             "outbound_route_map": {
///                 "id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap",
///             },
///             "propagated_route_tables": {
///                 "labels": ["default"],
///             },
///         },
///     },
///     resource_group_name="rg1",
///     virtual_hub_name="TestHub")
///
/// ```
///
/// ```yaml
/// resources:
///   connectionPolicy:
///     type: azure-native:network:ConnectionPolicy
///     properties:
///       connectionPolicyName: testpolicy2
///       properties:
///         enableInternetSecurity: true
///         routingConfiguration:
///           associatedRouteTable:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/hubRouteTables/defaultRouteTable
///           inboundRouteMap:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap
///           outboundRouteMap:
///             id: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg1/providers/Microsoft.Network/virtualHubs/TestHub/routeMaps/TestRouteMap
///           propagatedRouteTables:
///             labels:
///               - default
///       resourceGroupName: rg1
///       virtualHubName: TestHub
///
/// ```
///
/// {{% /example %}}
/// {{% /examples %}}
///
/// ## Import
///
/// An existing resource can be imported using its type token, name, and identifier, e.g.
///
/// ```sh
/// $ pulumi import azure-native:network:ConnectionPolicy testpolicy2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Network/virtualHubs/{virtualHubName}/connectionPolicies/{connectionPolicyName}
/// ```
class ConnectionPolicy extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// A unique read-only string that changes whenever the resource is updated.
  late final pulumi.Output<String> etag;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Properties of the ConnectionPolicy resource.
  late final pulumi.Output<ConnectionPolicyPropertiesResponse> properties;
  /// Resource type.
  late final pulumi.Output<String> type;

  /// Creates a new [ConnectionPolicy].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ConnectionPolicy]. {@macro pulumi_network_connection_policy_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ConnectionPolicy(
    String name, {
    ConnectionPolicyArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:network:ConnectionPolicy',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectionPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [ConnectionPolicy] resource.
  ConnectionPolicy.reference(String urn)
    : super(
        'azure-native:network:ConnectionPolicy',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ConnectionPolicyPropertiesResponse>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ConnectionPolicyPropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
