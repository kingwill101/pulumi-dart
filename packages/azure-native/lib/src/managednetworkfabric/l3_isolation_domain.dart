import 'package:pulumi/pulumi.dart' as pulumi;
import 'aggregate_route_configuration_response.dart';
import 'connected_subnet_route_policy_response.dart';
import 'l3_isolation_domain_args.dart';
import 'system_data_response.dart';

/// The L3 Isolation Domain resource definition.
///
/// Uses Azure REST API version 2023-06-15. In version 2.x of the Azure Native provider, it used API version 2023-02-01-preview.
///
/// Other available API versions: 2023-02-01-preview, 2024-02-15-preview, 2024-06-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native managednetworkfabric [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### L3IsolationDomains_Create_MaximumSet_Gen
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var l3IsolationDomain = new AzureNative.ManagedNetworkFabric.L3IsolationDomain("l3IsolationDomain", new()
///     {
///         AggregateRouteConfiguration = new AzureNative.ManagedNetworkFabric.Inputs.AggregateRouteConfigurationArgs
///         {
///             Ipv4Routes = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.AggregateRouteArgs
///                 {
///                     Prefix = "10.0.0.0/24",
///                 },
///             },
///             Ipv6Routes = new[]
///             {
///                 new AzureNative.ManagedNetworkFabric.Inputs.AggregateRouteArgs
///                 {
///                     Prefix = "3FFE:FFFF:0:CD30::a0/29",
///                 },
///             },
///         },
///         Annotation = "annotation",
///         ConnectedSubnetRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.ConnectedSubnetRoutePolicyArgs
///         {
///             ExportRoutePolicy = new AzureNative.ManagedNetworkFabric.Inputs.L3ExportRoutePolicyArgs
///             {
///                 ExportIpv4RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///                 ExportIpv6RoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///             },
///             ExportRoutePolicyId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///         },
///         L3IsolationDomainName = "example-l3domain",
///         Location = "eastus",
///         NetworkFabricId = "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///         RedistributeConnectedSubnets = AzureNative.ManagedNetworkFabric.RedistributeConnectedSubnets.True,
///         RedistributeStaticRoutes = AzureNative.ManagedNetworkFabric.RedistributeStaticRoutes.False,
///         ResourceGroupName = "example-rg",
///         Tags =
///         {
///             { "keyID", "KeyValue" },
///         },
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
/// 	managednetworkfabric "github.com/pulumi/pulumi-azure-native-sdk/managednetworkfabric/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := managednetworkfabric.NewL3IsolationDomain(ctx, "l3IsolationDomain", &managednetworkfabric.L3IsolationDomainArgs{
/// 			AggregateRouteConfiguration: &managednetworkfabric.AggregateRouteConfigurationArgs{
/// 				Ipv4Routes: managednetworkfabric.AggregateRouteArray{
/// 					&managednetworkfabric.AggregateRouteArgs{
/// 						Prefix: pulumi.String("10.0.0.0/24"),
/// 					},
/// 				},
/// 				Ipv6Routes: managednetworkfabric.AggregateRouteArray{
/// 					&managednetworkfabric.AggregateRouteArgs{
/// 						Prefix: pulumi.String("3FFE:FFFF:0:CD30::a0/29"),
/// 					},
/// 				},
/// 			},
/// 			Annotation: pulumi.String("annotation"),
/// 			ConnectedSubnetRoutePolicy: &managednetworkfabric.ConnectedSubnetRoutePolicyArgs{
/// 				ExportRoutePolicy: &managednetworkfabric.L3ExportRoutePolicyArgs{
/// 					ExportIpv4RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"),
/// 					ExportIpv6RoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy"),
/// 				},
/// 				ExportRoutePolicyId: pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName"),
/// 			},
/// 			L3IsolationDomainName:        pulumi.String("example-l3domain"),
/// 			Location:                     pulumi.String("eastus"),
/// 			NetworkFabricId:              pulumi.String("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric"),
/// 			RedistributeConnectedSubnets: pulumi.String(managednetworkfabric.RedistributeConnectedSubnetsTrue),
/// 			RedistributeStaticRoutes:     pulumi.String(managednetworkfabric.RedistributeStaticRoutesFalse),
/// 			ResourceGroupName:            pulumi.String("example-rg"),
/// 			Tags: pulumi.StringMap{
/// 				"keyID": pulumi.String("KeyValue"),
/// 			},
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
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azurenative.managednetworkfabric.L3IsolationDomain;
/// import com.pulumi.azurenative.managednetworkfabric.L3IsolationDomainArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.AggregateRouteConfigurationArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.ConnectedSubnetRoutePolicyArgs;
/// import com.pulumi.azurenative.managednetworkfabric.inputs.L3ExportRoutePolicyArgs;
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
///         var l3IsolationDomain = new L3IsolationDomain("l3IsolationDomain", L3IsolationDomainArgs.builder()
///             .aggregateRouteConfiguration(AggregateRouteConfigurationArgs.builder()
///                 .ipv4Routes(AggregateRouteArgs.builder()
///                     .prefix("10.0.0.0/24")
///                     .build())
///                 .ipv6Routes(AggregateRouteArgs.builder()
///                     .prefix("3FFE:FFFF:0:CD30::a0/29")
///                     .build())
///                 .build())
///             .annotation("annotation")
///             .connectedSubnetRoutePolicy(ConnectedSubnetRoutePolicyArgs.builder()
///                 .exportRoutePolicy(L3ExportRoutePolicyArgs.builder()
///                     .exportIpv4RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy")
///                     .exportIpv6RoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy")
///                     .build())
///                 .exportRoutePolicyId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName")
///                 .build())
///             .l3IsolationDomainName("example-l3domain")
///             .location("eastus")
///             .networkFabricId("/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric")
///             .redistributeConnectedSubnets("True")
///             .redistributeStaticRoutes("False")
///             .resourceGroupName("example-rg")
///             .tags(Map.of("keyID", "KeyValue"))
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
/// const l3IsolationDomain = new azure_native.managednetworkfabric.L3IsolationDomain("l3IsolationDomain", {
///     aggregateRouteConfiguration: {
///         ipv4Routes: [{
///             prefix: "10.0.0.0/24",
///         }],
///         ipv6Routes: [{
///             prefix: "3FFE:FFFF:0:CD30::a0/29",
///         }],
///     },
///     annotation: "annotation",
///     connectedSubnetRoutePolicy: {
///         exportRoutePolicy: {
///             exportIpv4RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///             exportIpv6RoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         },
///         exportRoutePolicyId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     l3IsolationDomainName: "example-l3domain",
///     location: "eastus",
///     networkFabricId: "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///     redistributeConnectedSubnets: azure_native.managednetworkfabric.RedistributeConnectedSubnets.True,
///     redistributeStaticRoutes: azure_native.managednetworkfabric.RedistributeStaticRoutes.False,
///     resourceGroupName: "example-rg",
///     tags: {
///         keyID: "KeyValue",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// l3_isolation_domain = azure_native.managednetworkfabric.L3IsolationDomain("l3IsolationDomain",
///     aggregate_route_configuration={
///         "ipv4_routes": [{
///             "prefix": "10.0.0.0/24",
///         }],
///         "ipv6_routes": [{
///             "prefix": "3FFE:FFFF:0:CD30::a0/29",
///         }],
///     },
///     annotation="annotation",
///     connected_subnet_route_policy={
///         "export_route_policy": {
///             "export_ipv4_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///             "export_ipv6_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy",
///         },
///         "export_route_policy_id": "/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName",
///     },
///     l3_isolation_domain_name="example-l3domain",
///     location="eastus",
///     network_fabric_id="/subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric",
///     redistribute_connected_subnets=azure_native.managednetworkfabric.RedistributeConnectedSubnets.TRUE,
///     redistribute_static_routes=azure_native.managednetworkfabric.RedistributeStaticRoutes.FALSE,
///     resource_group_name="example-rg",
///     tags={
///         "keyID": "KeyValue",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   l3IsolationDomain:
///     type: azure-native:managednetworkfabric:L3IsolationDomain
///     properties:
///       aggregateRouteConfiguration:
///         ipv4Routes:
///           - prefix: 10.0.0.0/24
///         ipv6Routes:
///           - prefix: 3FFE:FFFF:0:CD30::a0/29
///       annotation: annotation
///       connectedSubnetRoutePolicy:
///         exportRoutePolicy:
///           exportIpv4RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy
///           exportIpv6RoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/example-routePolicy
///         exportRoutePolicyId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/routePolicies/routePolicyName
///       l3IsolationDomainName: example-l3domain
///       location: eastus
///       networkFabricId: /subscriptions/1234ABCD-0A1B-1234-5678-123456ABCDEF/resourceGroups/example-rg/providers/Microsoft.ManagedNetworkFabric/networkFabrics/example-fabric
///       redistributeConnectedSubnets: True
///       redistributeStaticRoutes: False
///       resourceGroupName: example-rg
///       tags:
///         keyID: KeyValue
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
/// $ pulumi import azure-native:managednetworkfabric:L3IsolationDomain example-l3domain /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ManagedNetworkFabric/l3IsolationDomains/{l3IsolationDomainName}
/// ```
class L3IsolationDomain extends pulumi.CustomResource {
  /// Administrative state of the resource.
  late final pulumi.Output<String> administrativeState;
  /// Aggregate route configurations.
  late final pulumi.Output<AggregateRouteConfigurationResponse?> aggregateRouteConfiguration;
  /// Switch configuration description.
  late final pulumi.Output<String?> annotation;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Configuration state of the resource.
  late final pulumi.Output<String> configurationState;
  /// Connected Subnet RoutePolicy
  late final pulumi.Output<ConnectedSubnetRoutePolicyResponse?> connectedSubnetRoutePolicy;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// ARM Resource ID of the Network Fabric.
  late final pulumi.Output<String> networkFabricId;
  /// Provisioning state of the resource.
  late final pulumi.Output<String> provisioningState;
  /// Advertise Connected Subnets. Ex: "True" | "False".
  late final pulumi.Output<String?> redistributeConnectedSubnets;
  /// Advertise Static Routes. Ex: "True" | "False".
  late final pulumi.Output<String?> redistributeStaticRoutes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [L3IsolationDomain].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [L3IsolationDomain]. {@macro pulumi_managednetworkfabric_l3_isolation_domain_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  L3IsolationDomain(
    String name, {
    L3IsolationDomainArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:managednetworkfabric:L3IsolationDomain',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.administrativeState = registerOutput<String>('administrativeState');
    this.aggregateRouteConfiguration = registerOutput<AggregateRouteConfigurationResponse?>('aggregateRouteConfiguration');
    this.annotation = registerOutput<String?>('annotation');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.configurationState = registerOutput<String>('configurationState');
    this.connectedSubnetRoutePolicy = registerOutput<ConnectedSubnetRoutePolicyResponse?>('connectedSubnetRoutePolicy');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.networkFabricId = registerOutput<String>('networkFabricId');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.redistributeConnectedSubnets = registerOutput<String?>('redistributeConnectedSubnets');
    this.redistributeStaticRoutes = registerOutput<String?>('redistributeStaticRoutes');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
