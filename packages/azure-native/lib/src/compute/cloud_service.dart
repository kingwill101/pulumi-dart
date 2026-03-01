import 'package:pulumi/pulumi.dart' as pulumi;
import 'cloud_service_args.dart';
import 'cloud_service_properties_response.dart';
import 'system_data_response.dart';

/// Describes the cloud service.
///
/// Uses Azure REST API version 2022-09-04. In version 2.x of the Azure Native provider, it used API version 2022-09-04.
///
/// Other available API versions: 2022-04-04, 2024-11-04. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native compute [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create New Cloud Service with Multiple Roles
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudService = new AzureNative.Compute.CloudService("cloudService", new()
///     {
///         CloudServiceName = "{cs-name}",
///         Location = "westus",
///         Properties = new AzureNative.Compute.Inputs.CloudServicePropertiesArgs
///         {
///             Configuration = "{ServiceConfiguration}",
///             NetworkProfile = new AzureNative.Compute.Inputs.CloudServiceNetworkProfileArgs
///             {
///                 LoadBalancerConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.LoadBalancerConfigurationArgs
///                     {
///                         Name = "contosolb",
///                         Properties = new AzureNative.Compute.Inputs.LoadBalancerConfigurationPropertiesArgs
///                         {
///                             FrontendIpConfigurations = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationArgs
///                                 {
///                                     Name = "contosofe",
///                                     Properties = new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationPropertiesArgs
///                                     {
///                                         PublicIPAddress = new AzureNative.Compute.Inputs.SubResourceArgs
///                                         {
///                                             Id = "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             PackageUrl = "{PackageUrl}",
///             RoleProfile = new AzureNative.Compute.Inputs.CloudServiceRoleProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.Compute.Inputs.CloudServiceRoleProfilePropertiesArgs
///                     {
///                         Name = "ContosoFrontend",
///                         Sku = new AzureNative.Compute.Inputs.CloudServiceRoleSkuArgs
///                         {
///                             Capacity = 1,
///                             Name = "Standard_D1_v2",
///                             Tier = "Standard",
///                         },
///                     },
///                     new AzureNative.Compute.Inputs.CloudServiceRoleProfilePropertiesArgs
///                     {
///                         Name = "ContosoBackend",
///                         Sku = new AzureNative.Compute.Inputs.CloudServiceRoleSkuArgs
///                         {
///                             Capacity = 1,
///                             Name = "Standard_D1_v2",
///                             Tier = "Standard",
///                         },
///                     },
///                 },
///             },
///             UpgradeMode = AzureNative.Compute.CloudServiceUpgradeMode.Auto,
///         },
///         ResourceGroupName = "ConstosoRG",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewCloudService(ctx, "cloudService", &compute.CloudServiceArgs{
/// 			CloudServiceName: pulumi.String("{cs-name}"),
/// 			Location:         pulumi.String("westus"),
/// 			Properties: &compute.CloudServicePropertiesArgs{
/// 				Configuration: pulumi.String("{ServiceConfiguration}"),
/// 				NetworkProfile: &compute.CloudServiceNetworkProfileArgs{
/// 					LoadBalancerConfigurations: compute.LoadBalancerConfigurationArray{
/// 						&compute.LoadBalancerConfigurationArgs{
/// 							Name: pulumi.String("contosolb"),
/// 							Properties: &compute.LoadBalancerConfigurationPropertiesArgs{
/// 								FrontendIpConfigurations: compute.LoadBalancerFrontendIpConfigurationArray{
/// 									&compute.LoadBalancerFrontendIpConfigurationArgs{
/// 										Name: pulumi.String("contosofe"),
/// 										Properties: &compute.LoadBalancerFrontendIpConfigurationPropertiesArgs{
/// 											PublicIPAddress: &compute.SubResourceArgs{
/// 												Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PackageUrl: pulumi.String("{PackageUrl}"),
/// 				RoleProfile: &compute.CloudServiceRoleProfileArgs{
/// 					Roles: compute.CloudServiceRoleProfilePropertiesArray{
/// 						&compute.CloudServiceRoleProfilePropertiesArgs{
/// 							Name: pulumi.String("ContosoFrontend"),
/// 							Sku: &compute.CloudServiceRoleSkuArgs{
/// 								Capacity: pulumi.Float64(1),
/// 								Name:     pulumi.String("Standard_D1_v2"),
/// 								Tier:     pulumi.String("Standard"),
/// 							},
/// 						},
/// 						&compute.CloudServiceRoleProfilePropertiesArgs{
/// 							Name: pulumi.String("ContosoBackend"),
/// 							Sku: &compute.CloudServiceRoleSkuArgs{
/// 								Capacity: pulumi.Float64(1),
/// 								Name:     pulumi.String("Standard_D1_v2"),
/// 								Tier:     pulumi.String("Standard"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				UpgradeMode: pulumi.String(compute.CloudServiceUpgradeModeAuto),
/// 			},
/// 			ResourceGroupName: pulumi.String("ConstosoRG"),
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
/// import com.pulumi.azurenative.compute.CloudService;
/// import com.pulumi.azurenative.compute.CloudServiceArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServicePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceRoleProfileArgs;
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
///         var cloudService = new CloudService("cloudService", CloudServiceArgs.builder()
///             .cloudServiceName("{cs-name}")
///             .location("westus")
///             .properties(CloudServicePropertiesArgs.builder()
///                 .configuration("{ServiceConfiguration}")
///                 .networkProfile(CloudServiceNetworkProfileArgs.builder()
///                     .loadBalancerConfigurations(LoadBalancerConfigurationArgs.builder()
///                         .name("contosolb")
///                         .properties(LoadBalancerConfigurationPropertiesArgs.builder()
///                             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                                 .name("contosofe")
///                                 .properties(LoadBalancerFrontendIpConfigurationPropertiesArgs.builder()
///                                     .publicIPAddress(SubResourceArgs.builder()
///                                         .id("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .packageUrl("{PackageUrl}")
///                 .roleProfile(CloudServiceRoleProfileArgs.builder()
///                     .roles(
///                         CloudServiceRoleProfilePropertiesArgs.builder()
///                             .name("ContosoFrontend")
///                             .sku(CloudServiceRoleSkuArgs.builder()
///                                 .capacity(1.0)
///                                 .name("Standard_D1_v2")
///                                 .tier("Standard")
///                                 .build())
///                             .build(),
///                         CloudServiceRoleProfilePropertiesArgs.builder()
///                             .name("ContosoBackend")
///                             .sku(CloudServiceRoleSkuArgs.builder()
///                                 .capacity(1.0)
///                                 .name("Standard_D1_v2")
///                                 .tier("Standard")
///                                 .build())
///                             .build())
///                     .build())
///                 .upgradeMode("Auto")
///                 .build())
///             .resourceGroupName("ConstosoRG")
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
/// const cloudService = new azure_native.compute.CloudService("cloudService", {
///     cloudServiceName: "{cs-name}",
///     location: "westus",
///     properties: {
///         configuration: "{ServiceConfiguration}",
///         networkProfile: {
///             loadBalancerConfigurations: [{
///                 name: "contosolb",
///                 properties: {
///                     frontendIpConfigurations: [{
///                         name: "contosofe",
///                         properties: {
///                             publicIPAddress: {
///                                 id: "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         packageUrl: "{PackageUrl}",
///         roleProfile: {
///             roles: [
///                 {
///                     name: "ContosoFrontend",
///                     sku: {
///                         capacity: 1,
///                         name: "Standard_D1_v2",
///                         tier: "Standard",
///                     },
///                 },
///                 {
///                     name: "ContosoBackend",
///                     sku: {
///                         capacity: 1,
///                         name: "Standard_D1_v2",
///                         tier: "Standard",
///                     },
///                 },
///             ],
///         },
///         upgradeMode: azure_native.compute.CloudServiceUpgradeMode.Auto,
///     },
///     resourceGroupName: "ConstosoRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_service = azure_native.compute.CloudService("cloudService",
///     cloud_service_name="{cs-name}",
///     location="westus",
///     properties={
///         "configuration": "{ServiceConfiguration}",
///         "network_profile": {
///             "load_balancer_configurations": [{
///                 "name": "contosolb",
///                 "properties": {
///                     "frontend_ip_configurations": [{
///                         "name": "contosofe",
///                         "properties": {
///                             "public_ip_address": {
///                                 "id": "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         "package_url": "{PackageUrl}",
///         "role_profile": {
///             "roles": [
///                 {
///                     "name": "ContosoFrontend",
///                     "sku": {
///                         "capacity": 1,
///                         "name": "Standard_D1_v2",
///                         "tier": "Standard",
///                     },
///                 },
///                 {
///                     "name": "ContosoBackend",
///                     "sku": {
///                         "capacity": 1,
///                         "name": "Standard_D1_v2",
///                         "tier": "Standard",
///                     },
///                 },
///             ],
///         },
///         "upgrade_mode": azure_native.compute.CloudServiceUpgradeMode.AUTO,
///     },
///     resource_group_name="ConstosoRG")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudService:
///     type: azure-native:compute:CloudService
///     properties:
///       cloudServiceName: '{cs-name}'
///       location: westus
///       properties:
///         configuration: '{ServiceConfiguration}'
///         networkProfile:
///           loadBalancerConfigurations:
///             - name: contosolb
///               properties:
///                 frontendIpConfigurations:
///                   - name: contosofe
///                     properties:
///                       publicIPAddress:
///                         id: /subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip
///         packageUrl: '{PackageUrl}'
///         roleProfile:
///           roles:
///             - name: ContosoFrontend
///               sku:
///                 capacity: 1
///                 name: Standard_D1_v2
///                 tier: Standard
///             - name: ContosoBackend
///               sku:
///                 capacity: 1
///                 name: Standard_D1_v2
///                 tier: Standard
///         upgradeMode: Auto
///       resourceGroupName: ConstosoRG
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create New Cloud Service with Multiple Roles in a specific availability zone
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudService = new AzureNative.Compute.CloudService("cloudService", new()
///     {
///         CloudServiceName = "{cs-name}",
///         Location = "westus",
///         Properties = new AzureNative.Compute.Inputs.CloudServicePropertiesArgs
///         {
///             Configuration = "{ServiceConfiguration}",
///             NetworkProfile = new AzureNative.Compute.Inputs.CloudServiceNetworkProfileArgs
///             {
///                 LoadBalancerConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.LoadBalancerConfigurationArgs
///                     {
///                         Name = "contosolb",
///                         Properties = new AzureNative.Compute.Inputs.LoadBalancerConfigurationPropertiesArgs
///                         {
///                             FrontendIpConfigurations = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationArgs
///                                 {
///                                     Name = "contosofe",
///                                     Properties = new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationPropertiesArgs
///                                     {
///                                         PublicIPAddress = new AzureNative.Compute.Inputs.SubResourceArgs
///                                         {
///                                             Id = "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             PackageUrl = "{PackageUrl}",
///             RoleProfile = new AzureNative.Compute.Inputs.CloudServiceRoleProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.Compute.Inputs.CloudServiceRoleProfilePropertiesArgs
///                     {
///                         Name = "ContosoFrontend",
///                         Sku = new AzureNative.Compute.Inputs.CloudServiceRoleSkuArgs
///                         {
///                             Capacity = 1,
///                             Name = "Standard_D1_v2",
///                             Tier = "Standard",
///                         },
///                     },
///                     new AzureNative.Compute.Inputs.CloudServiceRoleProfilePropertiesArgs
///                     {
///                         Name = "ContosoBackend",
///                         Sku = new AzureNative.Compute.Inputs.CloudServiceRoleSkuArgs
///                         {
///                             Capacity = 1,
///                             Name = "Standard_D1_v2",
///                             Tier = "Standard",
///                         },
///                     },
///                 },
///             },
///             UpgradeMode = AzureNative.Compute.CloudServiceUpgradeMode.Auto,
///         },
///         ResourceGroupName = "ConstosoRG",
///         Zones = new[]
///         {
///             "1",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewCloudService(ctx, "cloudService", &compute.CloudServiceArgs{
/// 			CloudServiceName: pulumi.String("{cs-name}"),
/// 			Location:         pulumi.String("westus"),
/// 			Properties: &compute.CloudServicePropertiesArgs{
/// 				Configuration: pulumi.String("{ServiceConfiguration}"),
/// 				NetworkProfile: &compute.CloudServiceNetworkProfileArgs{
/// 					LoadBalancerConfigurations: compute.LoadBalancerConfigurationArray{
/// 						&compute.LoadBalancerConfigurationArgs{
/// 							Name: pulumi.String("contosolb"),
/// 							Properties: &compute.LoadBalancerConfigurationPropertiesArgs{
/// 								FrontendIpConfigurations: compute.LoadBalancerFrontendIpConfigurationArray{
/// 									&compute.LoadBalancerFrontendIpConfigurationArgs{
/// 										Name: pulumi.String("contosofe"),
/// 										Properties: &compute.LoadBalancerFrontendIpConfigurationPropertiesArgs{
/// 											PublicIPAddress: &compute.SubResourceArgs{
/// 												Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PackageUrl: pulumi.String("{PackageUrl}"),
/// 				RoleProfile: &compute.CloudServiceRoleProfileArgs{
/// 					Roles: compute.CloudServiceRoleProfilePropertiesArray{
/// 						&compute.CloudServiceRoleProfilePropertiesArgs{
/// 							Name: pulumi.String("ContosoFrontend"),
/// 							Sku: &compute.CloudServiceRoleSkuArgs{
/// 								Capacity: pulumi.Float64(1),
/// 								Name:     pulumi.String("Standard_D1_v2"),
/// 								Tier:     pulumi.String("Standard"),
/// 							},
/// 						},
/// 						&compute.CloudServiceRoleProfilePropertiesArgs{
/// 							Name: pulumi.String("ContosoBackend"),
/// 							Sku: &compute.CloudServiceRoleSkuArgs{
/// 								Capacity: pulumi.Float64(1),
/// 								Name:     pulumi.String("Standard_D1_v2"),
/// 								Tier:     pulumi.String("Standard"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				UpgradeMode: pulumi.String(compute.CloudServiceUpgradeModeAuto),
/// 			},
/// 			ResourceGroupName: pulumi.String("ConstosoRG"),
/// 			Zones: pulumi.StringArray{
/// 				pulumi.String("1"),
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
/// import com.pulumi.azurenative.compute.CloudService;
/// import com.pulumi.azurenative.compute.CloudServiceArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServicePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceRoleProfileArgs;
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
///         var cloudService = new CloudService("cloudService", CloudServiceArgs.builder()
///             .cloudServiceName("{cs-name}")
///             .location("westus")
///             .properties(CloudServicePropertiesArgs.builder()
///                 .configuration("{ServiceConfiguration}")
///                 .networkProfile(CloudServiceNetworkProfileArgs.builder()
///                     .loadBalancerConfigurations(LoadBalancerConfigurationArgs.builder()
///                         .name("contosolb")
///                         .properties(LoadBalancerConfigurationPropertiesArgs.builder()
///                             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                                 .name("contosofe")
///                                 .properties(LoadBalancerFrontendIpConfigurationPropertiesArgs.builder()
///                                     .publicIPAddress(SubResourceArgs.builder()
///                                         .id("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .packageUrl("{PackageUrl}")
///                 .roleProfile(CloudServiceRoleProfileArgs.builder()
///                     .roles(
///                         CloudServiceRoleProfilePropertiesArgs.builder()
///                             .name("ContosoFrontend")
///                             .sku(CloudServiceRoleSkuArgs.builder()
///                                 .capacity(1.0)
///                                 .name("Standard_D1_v2")
///                                 .tier("Standard")
///                                 .build())
///                             .build(),
///                         CloudServiceRoleProfilePropertiesArgs.builder()
///                             .name("ContosoBackend")
///                             .sku(CloudServiceRoleSkuArgs.builder()
///                                 .capacity(1.0)
///                                 .name("Standard_D1_v2")
///                                 .tier("Standard")
///                                 .build())
///                             .build())
///                     .build())
///                 .upgradeMode("Auto")
///                 .build())
///             .resourceGroupName("ConstosoRG")
///             .zones("1")
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
/// const cloudService = new azure_native.compute.CloudService("cloudService", {
///     cloudServiceName: "{cs-name}",
///     location: "westus",
///     properties: {
///         configuration: "{ServiceConfiguration}",
///         networkProfile: {
///             loadBalancerConfigurations: [{
///                 name: "contosolb",
///                 properties: {
///                     frontendIpConfigurations: [{
///                         name: "contosofe",
///                         properties: {
///                             publicIPAddress: {
///                                 id: "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         packageUrl: "{PackageUrl}",
///         roleProfile: {
///             roles: [
///                 {
///                     name: "ContosoFrontend",
///                     sku: {
///                         capacity: 1,
///                         name: "Standard_D1_v2",
///                         tier: "Standard",
///                     },
///                 },
///                 {
///                     name: "ContosoBackend",
///                     sku: {
///                         capacity: 1,
///                         name: "Standard_D1_v2",
///                         tier: "Standard",
///                     },
///                 },
///             ],
///         },
///         upgradeMode: azure_native.compute.CloudServiceUpgradeMode.Auto,
///     },
///     resourceGroupName: "ConstosoRG",
///     zones: ["1"],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_service = azure_native.compute.CloudService("cloudService",
///     cloud_service_name="{cs-name}",
///     location="westus",
///     properties={
///         "configuration": "{ServiceConfiguration}",
///         "network_profile": {
///             "load_balancer_configurations": [{
///                 "name": "contosolb",
///                 "properties": {
///                     "frontend_ip_configurations": [{
///                         "name": "contosofe",
///                         "properties": {
///                             "public_ip_address": {
///                                 "id": "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         "package_url": "{PackageUrl}",
///         "role_profile": {
///             "roles": [
///                 {
///                     "name": "ContosoFrontend",
///                     "sku": {
///                         "capacity": 1,
///                         "name": "Standard_D1_v2",
///                         "tier": "Standard",
///                     },
///                 },
///                 {
///                     "name": "ContosoBackend",
///                     "sku": {
///                         "capacity": 1,
///                         "name": "Standard_D1_v2",
///                         "tier": "Standard",
///                     },
///                 },
///             ],
///         },
///         "upgrade_mode": azure_native.compute.CloudServiceUpgradeMode.AUTO,
///     },
///     resource_group_name="ConstosoRG",
///     zones=["1"])
///
/// ```
///
/// ```yaml
/// resources:
///   cloudService:
///     type: azure-native:compute:CloudService
///     properties:
///       cloudServiceName: '{cs-name}'
///       location: westus
///       properties:
///         configuration: '{ServiceConfiguration}'
///         networkProfile:
///           loadBalancerConfigurations:
///             - name: contosolb
///               properties:
///                 frontendIpConfigurations:
///                   - name: contosofe
///                     properties:
///                       publicIPAddress:
///                         id: /subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip
///         packageUrl: '{PackageUrl}'
///         roleProfile:
///           roles:
///             - name: ContosoFrontend
///               sku:
///                 capacity: 1
///                 name: Standard_D1_v2
///                 tier: Standard
///             - name: ContosoBackend
///               sku:
///                 capacity: 1
///                 name: Standard_D1_v2
///                 tier: Standard
///         upgradeMode: Auto
///       resourceGroupName: ConstosoRG
///       zones:
///         - '1'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create New Cloud Service with Single Role
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudService = new AzureNative.Compute.CloudService("cloudService", new()
///     {
///         CloudServiceName = "{cs-name}",
///         Location = "westus",
///         Properties = new AzureNative.Compute.Inputs.CloudServicePropertiesArgs
///         {
///             Configuration = "{ServiceConfiguration}",
///             NetworkProfile = new AzureNative.Compute.Inputs.CloudServiceNetworkProfileArgs
///             {
///                 LoadBalancerConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.LoadBalancerConfigurationArgs
///                     {
///                         Name = "myLoadBalancer",
///                         Properties = new AzureNative.Compute.Inputs.LoadBalancerConfigurationPropertiesArgs
///                         {
///                             FrontendIpConfigurations = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationArgs
///                                 {
///                                     Name = "myfe",
///                                     Properties = new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationPropertiesArgs
///                                     {
///                                         PublicIPAddress = new AzureNative.Compute.Inputs.SubResourceArgs
///                                         {
///                                             Id = "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/myPublicIP",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             PackageUrl = "{PackageUrl}",
///             RoleProfile = new AzureNative.Compute.Inputs.CloudServiceRoleProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.Compute.Inputs.CloudServiceRoleProfilePropertiesArgs
///                     {
///                         Name = "ContosoFrontend",
///                         Sku = new AzureNative.Compute.Inputs.CloudServiceRoleSkuArgs
///                         {
///                             Capacity = 1,
///                             Name = "Standard_D1_v2",
///                             Tier = "Standard",
///                         },
///                     },
///                 },
///             },
///             UpgradeMode = AzureNative.Compute.CloudServiceUpgradeMode.Auto,
///         },
///         ResourceGroupName = "ConstosoRG",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewCloudService(ctx, "cloudService", &compute.CloudServiceArgs{
/// 			CloudServiceName: pulumi.String("{cs-name}"),
/// 			Location:         pulumi.String("westus"),
/// 			Properties: &compute.CloudServicePropertiesArgs{
/// 				Configuration: pulumi.String("{ServiceConfiguration}"),
/// 				NetworkProfile: &compute.CloudServiceNetworkProfileArgs{
/// 					LoadBalancerConfigurations: compute.LoadBalancerConfigurationArray{
/// 						&compute.LoadBalancerConfigurationArgs{
/// 							Name: pulumi.String("myLoadBalancer"),
/// 							Properties: &compute.LoadBalancerConfigurationPropertiesArgs{
/// 								FrontendIpConfigurations: compute.LoadBalancerFrontendIpConfigurationArray{
/// 									&compute.LoadBalancerFrontendIpConfigurationArgs{
/// 										Name: pulumi.String("myfe"),
/// 										Properties: &compute.LoadBalancerFrontendIpConfigurationPropertiesArgs{
/// 											PublicIPAddress: &compute.SubResourceArgs{
/// 												Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/myPublicIP"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PackageUrl: pulumi.String("{PackageUrl}"),
/// 				RoleProfile: &compute.CloudServiceRoleProfileArgs{
/// 					Roles: compute.CloudServiceRoleProfilePropertiesArray{
/// 						&compute.CloudServiceRoleProfilePropertiesArgs{
/// 							Name: pulumi.String("ContosoFrontend"),
/// 							Sku: &compute.CloudServiceRoleSkuArgs{
/// 								Capacity: pulumi.Float64(1),
/// 								Name:     pulumi.String("Standard_D1_v2"),
/// 								Tier:     pulumi.String("Standard"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				UpgradeMode: pulumi.String(compute.CloudServiceUpgradeModeAuto),
/// 			},
/// 			ResourceGroupName: pulumi.String("ConstosoRG"),
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
/// import com.pulumi.azurenative.compute.CloudService;
/// import com.pulumi.azurenative.compute.CloudServiceArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServicePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceRoleProfileArgs;
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
///         var cloudService = new CloudService("cloudService", CloudServiceArgs.builder()
///             .cloudServiceName("{cs-name}")
///             .location("westus")
///             .properties(CloudServicePropertiesArgs.builder()
///                 .configuration("{ServiceConfiguration}")
///                 .networkProfile(CloudServiceNetworkProfileArgs.builder()
///                     .loadBalancerConfigurations(LoadBalancerConfigurationArgs.builder()
///                         .name("myLoadBalancer")
///                         .properties(LoadBalancerConfigurationPropertiesArgs.builder()
///                             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                                 .name("myfe")
///                                 .properties(LoadBalancerFrontendIpConfigurationPropertiesArgs.builder()
///                                     .publicIPAddress(SubResourceArgs.builder()
///                                         .id("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/myPublicIP")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .packageUrl("{PackageUrl}")
///                 .roleProfile(CloudServiceRoleProfileArgs.builder()
///                     .roles(CloudServiceRoleProfilePropertiesArgs.builder()
///                         .name("ContosoFrontend")
///                         .sku(CloudServiceRoleSkuArgs.builder()
///                             .capacity(1.0)
///                             .name("Standard_D1_v2")
///                             .tier("Standard")
///                             .build())
///                         .build())
///                     .build())
///                 .upgradeMode("Auto")
///                 .build())
///             .resourceGroupName("ConstosoRG")
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
/// const cloudService = new azure_native.compute.CloudService("cloudService", {
///     cloudServiceName: "{cs-name}",
///     location: "westus",
///     properties: {
///         configuration: "{ServiceConfiguration}",
///         networkProfile: {
///             loadBalancerConfigurations: [{
///                 name: "myLoadBalancer",
///                 properties: {
///                     frontendIpConfigurations: [{
///                         name: "myfe",
///                         properties: {
///                             publicIPAddress: {
///                                 id: "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/myPublicIP",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         packageUrl: "{PackageUrl}",
///         roleProfile: {
///             roles: [{
///                 name: "ContosoFrontend",
///                 sku: {
///                     capacity: 1,
///                     name: "Standard_D1_v2",
///                     tier: "Standard",
///                 },
///             }],
///         },
///         upgradeMode: azure_native.compute.CloudServiceUpgradeMode.Auto,
///     },
///     resourceGroupName: "ConstosoRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_service = azure_native.compute.CloudService("cloudService",
///     cloud_service_name="{cs-name}",
///     location="westus",
///     properties={
///         "configuration": "{ServiceConfiguration}",
///         "network_profile": {
///             "load_balancer_configurations": [{
///                 "name": "myLoadBalancer",
///                 "properties": {
///                     "frontend_ip_configurations": [{
///                         "name": "myfe",
///                         "properties": {
///                             "public_ip_address": {
///                                 "id": "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/myPublicIP",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         "package_url": "{PackageUrl}",
///         "role_profile": {
///             "roles": [{
///                 "name": "ContosoFrontend",
///                 "sku": {
///                     "capacity": 1,
///                     "name": "Standard_D1_v2",
///                     "tier": "Standard",
///                 },
///             }],
///         },
///         "upgrade_mode": azure_native.compute.CloudServiceUpgradeMode.AUTO,
///     },
///     resource_group_name="ConstosoRG")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudService:
///     type: azure-native:compute:CloudService
///     properties:
///       cloudServiceName: '{cs-name}'
///       location: westus
///       properties:
///         configuration: '{ServiceConfiguration}'
///         networkProfile:
///           loadBalancerConfigurations:
///             - name: myLoadBalancer
///               properties:
///                 frontendIpConfigurations:
///                   - name: myfe
///                     properties:
///                       publicIPAddress:
///                         id: /subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/myPublicIP
///         packageUrl: '{PackageUrl}'
///         roleProfile:
///           roles:
///             - name: ContosoFrontend
///               sku:
///                 capacity: 1
///                 name: Standard_D1_v2
///                 tier: Standard
///         upgradeMode: Auto
///       resourceGroupName: ConstosoRG
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create New Cloud Service with Single Role and Certificate from Key Vault
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudService = new AzureNative.Compute.CloudService("cloudService", new()
///     {
///         CloudServiceName = "{cs-name}",
///         Location = "westus",
///         Properties = new AzureNative.Compute.Inputs.CloudServicePropertiesArgs
///         {
///             Configuration = "{ServiceConfiguration}",
///             NetworkProfile = new AzureNative.Compute.Inputs.CloudServiceNetworkProfileArgs
///             {
///                 LoadBalancerConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.LoadBalancerConfigurationArgs
///                     {
///                         Name = "contosolb",
///                         Properties = new AzureNative.Compute.Inputs.LoadBalancerConfigurationPropertiesArgs
///                         {
///                             FrontendIpConfigurations = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationArgs
///                                 {
///                                     Name = "contosofe",
///                                     Properties = new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationPropertiesArgs
///                                     {
///                                         PublicIPAddress = new AzureNative.Compute.Inputs.SubResourceArgs
///                                         {
///                                             Id = "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             OsProfile = new AzureNative.Compute.Inputs.CloudServiceOsProfileArgs
///             {
///                 Secrets = new[]
///                 {
///                     new AzureNative.Compute.Inputs.CloudServiceVaultSecretGroupArgs
///                     {
///                         SourceVault = new AzureNative.Compute.Inputs.SubResourceArgs
///                         {
///                             Id = "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.KeyVault/vaults/{keyvault-name}",
///                         },
///                         VaultCertificates = new[]
///                         {
///                             new AzureNative.Compute.Inputs.CloudServiceVaultCertificateArgs
///                             {
///                                 CertificateUrl = "https://{keyvault-name}.vault.azure.net:443/secrets/ContosoCertificate/{secret-id}",
///                             },
///                         },
///                     },
///                 },
///             },
///             PackageUrl = "{PackageUrl}",
///             RoleProfile = new AzureNative.Compute.Inputs.CloudServiceRoleProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.Compute.Inputs.CloudServiceRoleProfilePropertiesArgs
///                     {
///                         Name = "ContosoFrontend",
///                         Sku = new AzureNative.Compute.Inputs.CloudServiceRoleSkuArgs
///                         {
///                             Capacity = 1,
///                             Name = "Standard_D1_v2",
///                             Tier = "Standard",
///                         },
///                     },
///                 },
///             },
///             UpgradeMode = AzureNative.Compute.CloudServiceUpgradeMode.Auto,
///         },
///         ResourceGroupName = "ConstosoRG",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewCloudService(ctx, "cloudService", &compute.CloudServiceArgs{
/// 			CloudServiceName: pulumi.String("{cs-name}"),
/// 			Location:         pulumi.String("westus"),
/// 			Properties: &compute.CloudServicePropertiesArgs{
/// 				Configuration: pulumi.String("{ServiceConfiguration}"),
/// 				NetworkProfile: &compute.CloudServiceNetworkProfileArgs{
/// 					LoadBalancerConfigurations: compute.LoadBalancerConfigurationArray{
/// 						&compute.LoadBalancerConfigurationArgs{
/// 							Name: pulumi.String("contosolb"),
/// 							Properties: &compute.LoadBalancerConfigurationPropertiesArgs{
/// 								FrontendIpConfigurations: compute.LoadBalancerFrontendIpConfigurationArray{
/// 									&compute.LoadBalancerFrontendIpConfigurationArgs{
/// 										Name: pulumi.String("contosofe"),
/// 										Properties: &compute.LoadBalancerFrontendIpConfigurationPropertiesArgs{
/// 											PublicIPAddress: &compute.SubResourceArgs{
/// 												Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				OsProfile: &compute.CloudServiceOsProfileArgs{
/// 					Secrets: compute.CloudServiceVaultSecretGroupArray{
/// 						&compute.CloudServiceVaultSecretGroupArgs{
/// 							SourceVault: &compute.SubResourceArgs{
/// 								Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.KeyVault/vaults/{keyvault-name}"),
/// 							},
/// 							VaultCertificates: compute.CloudServiceVaultCertificateArray{
/// 								&compute.CloudServiceVaultCertificateArgs{
/// 									CertificateUrl: pulumi.String("https://{keyvault-name}.vault.azure.net:443/secrets/ContosoCertificate/{secret-id}"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PackageUrl: pulumi.String("{PackageUrl}"),
/// 				RoleProfile: &compute.CloudServiceRoleProfileArgs{
/// 					Roles: compute.CloudServiceRoleProfilePropertiesArray{
/// 						&compute.CloudServiceRoleProfilePropertiesArgs{
/// 							Name: pulumi.String("ContosoFrontend"),
/// 							Sku: &compute.CloudServiceRoleSkuArgs{
/// 								Capacity: pulumi.Float64(1),
/// 								Name:     pulumi.String("Standard_D1_v2"),
/// 								Tier:     pulumi.String("Standard"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				UpgradeMode: pulumi.String(compute.CloudServiceUpgradeModeAuto),
/// 			},
/// 			ResourceGroupName: pulumi.String("ConstosoRG"),
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
/// import com.pulumi.azurenative.compute.CloudService;
/// import com.pulumi.azurenative.compute.CloudServiceArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServicePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceOsProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceRoleProfileArgs;
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
///         var cloudService = new CloudService("cloudService", CloudServiceArgs.builder()
///             .cloudServiceName("{cs-name}")
///             .location("westus")
///             .properties(CloudServicePropertiesArgs.builder()
///                 .configuration("{ServiceConfiguration}")
///                 .networkProfile(CloudServiceNetworkProfileArgs.builder()
///                     .loadBalancerConfigurations(LoadBalancerConfigurationArgs.builder()
///                         .name("contosolb")
///                         .properties(LoadBalancerConfigurationPropertiesArgs.builder()
///                             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                                 .name("contosofe")
///                                 .properties(LoadBalancerFrontendIpConfigurationPropertiesArgs.builder()
///                                     .publicIPAddress(SubResourceArgs.builder()
///                                         .id("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .osProfile(CloudServiceOsProfileArgs.builder()
///                     .secrets(CloudServiceVaultSecretGroupArgs.builder()
///                         .sourceVault(SubResourceArgs.builder()
///                             .id("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.KeyVault/vaults/{keyvault-name}")
///                             .build())
///                         .vaultCertificates(CloudServiceVaultCertificateArgs.builder()
///                             .certificateUrl("https://{keyvault-name}.vault.azure.net:443/secrets/ContosoCertificate/{secret-id}")
///                             .build())
///                         .build())
///                     .build())
///                 .packageUrl("{PackageUrl}")
///                 .roleProfile(CloudServiceRoleProfileArgs.builder()
///                     .roles(CloudServiceRoleProfilePropertiesArgs.builder()
///                         .name("ContosoFrontend")
///                         .sku(CloudServiceRoleSkuArgs.builder()
///                             .capacity(1.0)
///                             .name("Standard_D1_v2")
///                             .tier("Standard")
///                             .build())
///                         .build())
///                     .build())
///                 .upgradeMode("Auto")
///                 .build())
///             .resourceGroupName("ConstosoRG")
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
/// const cloudService = new azure_native.compute.CloudService("cloudService", {
///     cloudServiceName: "{cs-name}",
///     location: "westus",
///     properties: {
///         configuration: "{ServiceConfiguration}",
///         networkProfile: {
///             loadBalancerConfigurations: [{
///                 name: "contosolb",
///                 properties: {
///                     frontendIpConfigurations: [{
///                         name: "contosofe",
///                         properties: {
///                             publicIPAddress: {
///                                 id: "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         osProfile: {
///             secrets: [{
///                 sourceVault: {
///                     id: "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.KeyVault/vaults/{keyvault-name}",
///                 },
///                 vaultCertificates: [{
///                     certificateUrl: "https://{keyvault-name}.vault.azure.net:443/secrets/ContosoCertificate/{secret-id}",
///                 }],
///             }],
///         },
///         packageUrl: "{PackageUrl}",
///         roleProfile: {
///             roles: [{
///                 name: "ContosoFrontend",
///                 sku: {
///                     capacity: 1,
///                     name: "Standard_D1_v2",
///                     tier: "Standard",
///                 },
///             }],
///         },
///         upgradeMode: azure_native.compute.CloudServiceUpgradeMode.Auto,
///     },
///     resourceGroupName: "ConstosoRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_service = azure_native.compute.CloudService("cloudService",
///     cloud_service_name="{cs-name}",
///     location="westus",
///     properties={
///         "configuration": "{ServiceConfiguration}",
///         "network_profile": {
///             "load_balancer_configurations": [{
///                 "name": "contosolb",
///                 "properties": {
///                     "frontend_ip_configurations": [{
///                         "name": "contosofe",
///                         "properties": {
///                             "public_ip_address": {
///                                 "id": "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         "os_profile": {
///             "secrets": [{
///                 "source_vault": {
///                     "id": "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.KeyVault/vaults/{keyvault-name}",
///                 },
///                 "vault_certificates": [{
///                     "certificate_url": "https://{keyvault-name}.vault.azure.net:443/secrets/ContosoCertificate/{secret-id}",
///                 }],
///             }],
///         },
///         "package_url": "{PackageUrl}",
///         "role_profile": {
///             "roles": [{
///                 "name": "ContosoFrontend",
///                 "sku": {
///                     "capacity": 1,
///                     "name": "Standard_D1_v2",
///                     "tier": "Standard",
///                 },
///             }],
///         },
///         "upgrade_mode": azure_native.compute.CloudServiceUpgradeMode.AUTO,
///     },
///     resource_group_name="ConstosoRG")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudService:
///     type: azure-native:compute:CloudService
///     properties:
///       cloudServiceName: '{cs-name}'
///       location: westus
///       properties:
///         configuration: '{ServiceConfiguration}'
///         networkProfile:
///           loadBalancerConfigurations:
///             - name: contosolb
///               properties:
///                 frontendIpConfigurations:
///                   - name: contosofe
///                     properties:
///                       publicIPAddress:
///                         id: /subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip
///         osProfile:
///           secrets:
///             - sourceVault:
///                 id: /subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.KeyVault/vaults/{keyvault-name}
///               vaultCertificates:
///                 - certificateUrl: https://{keyvault-name}.vault.azure.net:443/secrets/ContosoCertificate/{secret-id}
///         packageUrl: '{PackageUrl}'
///         roleProfile:
///           roles:
///             - name: ContosoFrontend
///               sku:
///                 capacity: 1
///                 name: Standard_D1_v2
///                 tier: Standard
///         upgradeMode: Auto
///       resourceGroupName: ConstosoRG
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create New Cloud Service with Single Role and RDP Extension
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var cloudService = new AzureNative.Compute.CloudService("cloudService", new()
///     {
///         CloudServiceName = "{cs-name}",
///         Location = "westus",
///         Properties = new AzureNative.Compute.Inputs.CloudServicePropertiesArgs
///         {
///             Configuration = "{ServiceConfiguration}",
///             ExtensionProfile = new AzureNative.Compute.Inputs.CloudServiceExtensionProfileArgs
///             {
///                 Extensions = new[]
///                 {
///                     new AzureNative.Compute.Inputs.ExtensionArgs
///                     {
///                         Name = "RDPExtension",
///                         Properties = new AzureNative.Compute.Inputs.CloudServiceExtensionPropertiesArgs
///                         {
///                             AutoUpgradeMinorVersion = false,
///                             ProtectedSettings = "<PrivateConfig><Password>{password}</Password></PrivateConfig>",
///                             Publisher = "Microsoft.Windows.Azure.Extensions",
///                             Settings = "<PublicConfig><UserName>UserAzure</UserName><Expiration>10/22/2021 15:05:45</Expiration></PublicConfig>",
///                             Type = "RDP",
///                             TypeHandlerVersion = "1.2",
///                         },
///                     },
///                 },
///             },
///             NetworkProfile = new AzureNative.Compute.Inputs.CloudServiceNetworkProfileArgs
///             {
///                 LoadBalancerConfigurations = new[]
///                 {
///                     new AzureNative.Compute.Inputs.LoadBalancerConfigurationArgs
///                     {
///                         Name = "contosolb",
///                         Properties = new AzureNative.Compute.Inputs.LoadBalancerConfigurationPropertiesArgs
///                         {
///                             FrontendIpConfigurations = new[]
///                             {
///                                 new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationArgs
///                                 {
///                                     Name = "contosofe",
///                                     Properties = new AzureNative.Compute.Inputs.LoadBalancerFrontendIpConfigurationPropertiesArgs
///                                     {
///                                         PublicIPAddress = new AzureNative.Compute.Inputs.SubResourceArgs
///                                         {
///                                             Id = "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                                         },
///                                     },
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///             PackageUrl = "{PackageUrl}",
///             RoleProfile = new AzureNative.Compute.Inputs.CloudServiceRoleProfileArgs
///             {
///                 Roles = new[]
///                 {
///                     new AzureNative.Compute.Inputs.CloudServiceRoleProfilePropertiesArgs
///                     {
///                         Name = "ContosoFrontend",
///                         Sku = new AzureNative.Compute.Inputs.CloudServiceRoleSkuArgs
///                         {
///                             Capacity = 1,
///                             Name = "Standard_D1_v2",
///                             Tier = "Standard",
///                         },
///                     },
///                 },
///             },
///             UpgradeMode = AzureNative.Compute.CloudServiceUpgradeMode.Auto,
///         },
///         ResourceGroupName = "ConstosoRG",
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
/// 	compute "github.com/pulumi/pulumi-azure-native-sdk/compute/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := compute.NewCloudService(ctx, "cloudService", &compute.CloudServiceArgs{
/// 			CloudServiceName: pulumi.String("{cs-name}"),
/// 			Location:         pulumi.String("westus"),
/// 			Properties: &compute.CloudServicePropertiesArgs{
/// 				Configuration: pulumi.String("{ServiceConfiguration}"),
/// 				ExtensionProfile: &compute.CloudServiceExtensionProfileArgs{
/// 					Extensions: compute.ExtensionArray{
/// 						&compute.ExtensionArgs{
/// 							Name: pulumi.String("RDPExtension"),
/// 							Properties: &compute.CloudServiceExtensionPropertiesArgs{
/// 								AutoUpgradeMinorVersion: pulumi.Bool(false),
/// 								ProtectedSettings:       pulumi.Any("<PrivateConfig><Password>{password}</Password></PrivateConfig>"),
/// 								Publisher:               pulumi.String("Microsoft.Windows.Azure.Extensions"),
/// 								Settings:                pulumi.Any("<PublicConfig><UserName>UserAzure</UserName><Expiration>10/22/2021 15:05:45</Expiration></PublicConfig>"),
/// 								Type:                    pulumi.String("RDP"),
/// 								TypeHandlerVersion:      pulumi.String("1.2"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				NetworkProfile: &compute.CloudServiceNetworkProfileArgs{
/// 					LoadBalancerConfigurations: compute.LoadBalancerConfigurationArray{
/// 						&compute.LoadBalancerConfigurationArgs{
/// 							Name: pulumi.String("contosolb"),
/// 							Properties: &compute.LoadBalancerConfigurationPropertiesArgs{
/// 								FrontendIpConfigurations: compute.LoadBalancerFrontendIpConfigurationArray{
/// 									&compute.LoadBalancerFrontendIpConfigurationArgs{
/// 										Name: pulumi.String("contosofe"),
/// 										Properties: &compute.LoadBalancerFrontendIpConfigurationPropertiesArgs{
/// 											PublicIPAddress: &compute.SubResourceArgs{
/// 												Id: pulumi.String("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip"),
/// 											},
/// 										},
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 				PackageUrl: pulumi.String("{PackageUrl}"),
/// 				RoleProfile: &compute.CloudServiceRoleProfileArgs{
/// 					Roles: compute.CloudServiceRoleProfilePropertiesArray{
/// 						&compute.CloudServiceRoleProfilePropertiesArgs{
/// 							Name: pulumi.String("ContosoFrontend"),
/// 							Sku: &compute.CloudServiceRoleSkuArgs{
/// 								Capacity: pulumi.Float64(1),
/// 								Name:     pulumi.String("Standard_D1_v2"),
/// 								Tier:     pulumi.String("Standard"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				UpgradeMode: pulumi.String(compute.CloudServiceUpgradeModeAuto),
/// 			},
/// 			ResourceGroupName: pulumi.String("ConstosoRG"),
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
/// import com.pulumi.azurenative.compute.CloudService;
/// import com.pulumi.azurenative.compute.CloudServiceArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServicePropertiesArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceExtensionProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceNetworkProfileArgs;
/// import com.pulumi.azurenative.compute.inputs.CloudServiceRoleProfileArgs;
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
///         var cloudService = new CloudService("cloudService", CloudServiceArgs.builder()
///             .cloudServiceName("{cs-name}")
///             .location("westus")
///             .properties(CloudServicePropertiesArgs.builder()
///                 .configuration("{ServiceConfiguration}")
///                 .extensionProfile(CloudServiceExtensionProfileArgs.builder()
///                     .extensions(ExtensionArgs.builder()
///                         .name("RDPExtension")
///                         .properties(CloudServiceExtensionPropertiesArgs.builder()
///                             .autoUpgradeMinorVersion(false)
///                             .protectedSettings("<PrivateConfig><Password>{password}</Password></PrivateConfig>")
///                             .publisher("Microsoft.Windows.Azure.Extensions")
///                             .settings("<PublicConfig><UserName>UserAzure</UserName><Expiration>10/22/2021 15:05:45</Expiration></PublicConfig>")
///                             .type("RDP")
///                             .typeHandlerVersion("1.2")
///                             .build())
///                         .build())
///                     .build())
///                 .networkProfile(CloudServiceNetworkProfileArgs.builder()
///                     .loadBalancerConfigurations(LoadBalancerConfigurationArgs.builder()
///                         .name("contosolb")
///                         .properties(LoadBalancerConfigurationPropertiesArgs.builder()
///                             .frontendIpConfigurations(LoadBalancerFrontendIpConfigurationArgs.builder()
///                                 .name("contosofe")
///                                 .properties(LoadBalancerFrontendIpConfigurationPropertiesArgs.builder()
///                                     .publicIPAddress(SubResourceArgs.builder()
///                                         .id("/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip")
///                                         .build())
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .packageUrl("{PackageUrl}")
///                 .roleProfile(CloudServiceRoleProfileArgs.builder()
///                     .roles(CloudServiceRoleProfilePropertiesArgs.builder()
///                         .name("ContosoFrontend")
///                         .sku(CloudServiceRoleSkuArgs.builder()
///                             .capacity(1.0)
///                             .name("Standard_D1_v2")
///                             .tier("Standard")
///                             .build())
///                         .build())
///                     .build())
///                 .upgradeMode("Auto")
///                 .build())
///             .resourceGroupName("ConstosoRG")
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
/// const cloudService = new azure_native.compute.CloudService("cloudService", {
///     cloudServiceName: "{cs-name}",
///     location: "westus",
///     properties: {
///         configuration: "{ServiceConfiguration}",
///         extensionProfile: {
///             extensions: [{
///                 name: "RDPExtension",
///                 properties: {
///                     autoUpgradeMinorVersion: false,
///                     protectedSettings: "<PrivateConfig><Password>{password}</Password></PrivateConfig>",
///                     publisher: "Microsoft.Windows.Azure.Extensions",
///                     settings: "<PublicConfig><UserName>UserAzure</UserName><Expiration>10/22/2021 15:05:45</Expiration></PublicConfig>",
///                     type: "RDP",
///                     typeHandlerVersion: "1.2",
///                 },
///             }],
///         },
///         networkProfile: {
///             loadBalancerConfigurations: [{
///                 name: "contosolb",
///                 properties: {
///                     frontendIpConfigurations: [{
///                         name: "contosofe",
///                         properties: {
///                             publicIPAddress: {
///                                 id: "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         packageUrl: "{PackageUrl}",
///         roleProfile: {
///             roles: [{
///                 name: "ContosoFrontend",
///                 sku: {
///                     capacity: 1,
///                     name: "Standard_D1_v2",
///                     tier: "Standard",
///                 },
///             }],
///         },
///         upgradeMode: azure_native.compute.CloudServiceUpgradeMode.Auto,
///     },
///     resourceGroupName: "ConstosoRG",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// cloud_service = azure_native.compute.CloudService("cloudService",
///     cloud_service_name="{cs-name}",
///     location="westus",
///     properties={
///         "configuration": "{ServiceConfiguration}",
///         "extension_profile": {
///             "extensions": [{
///                 "name": "RDPExtension",
///                 "properties": {
///                     "auto_upgrade_minor_version": False,
///                     "protected_settings": "<PrivateConfig><Password>{password}</Password></PrivateConfig>",
///                     "publisher": "Microsoft.Windows.Azure.Extensions",
///                     "settings": "<PublicConfig><UserName>UserAzure</UserName><Expiration>10/22/2021 15:05:45</Expiration></PublicConfig>",
///                     "type": "RDP",
///                     "type_handler_version": "1.2",
///                 },
///             }],
///         },
///         "network_profile": {
///             "load_balancer_configurations": [{
///                 "name": "contosolb",
///                 "properties": {
///                     "frontend_ip_configurations": [{
///                         "name": "contosofe",
///                         "properties": {
///                             "public_ip_address": {
///                                 "id": "/subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip",
///                             },
///                         },
///                     }],
///                 },
///             }],
///         },
///         "package_url": "{PackageUrl}",
///         "role_profile": {
///             "roles": [{
///                 "name": "ContosoFrontend",
///                 "sku": {
///                     "capacity": 1,
///                     "name": "Standard_D1_v2",
///                     "tier": "Standard",
///                 },
///             }],
///         },
///         "upgrade_mode": azure_native.compute.CloudServiceUpgradeMode.AUTO,
///     },
///     resource_group_name="ConstosoRG")
///
/// ```
///
/// ```yaml
/// resources:
///   cloudService:
///     type: azure-native:compute:CloudService
///     properties:
///       cloudServiceName: '{cs-name}'
///       location: westus
///       properties:
///         configuration: '{ServiceConfiguration}'
///         extensionProfile:
///           extensions:
///             - name: RDPExtension
///               properties:
///                 autoUpgradeMinorVersion: false
///                 protectedSettings: <PrivateConfig><Password>{password}</Password></PrivateConfig>
///                 publisher: Microsoft.Windows.Azure.Extensions
///                 settings: <PublicConfig><UserName>UserAzure</UserName><Expiration>10/22/2021 15:05:45</Expiration></PublicConfig>
///                 type: RDP
///                 typeHandlerVersion: '1.2'
///         networkProfile:
///           loadBalancerConfigurations:
///             - name: contosolb
///               properties:
///                 frontendIpConfigurations:
///                   - name: contosofe
///                     properties:
///                       publicIPAddress:
///                         id: /subscriptions/{subscription-id}/resourceGroups/ConstosoRG/providers/Microsoft.Network/publicIPAddresses/contosopublicip
///         packageUrl: '{PackageUrl}'
///         roleProfile:
///           roles:
///             - name: ContosoFrontend
///               sku:
///                 capacity: 1
///                 name: Standard_D1_v2
///                 tier: Standard
///         upgradeMode: Auto
///       resourceGroupName: ConstosoRG
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
/// $ pulumi import azure-native:compute:CloudService {cs-name} /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Compute/cloudServices/{cloudServiceName}
/// ```
class CloudService extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Resource location.
  late final pulumi.Output<String> location;
  /// Resource name.
  late final pulumi.Output<String> name;
  /// Cloud service properties
  late final pulumi.Output<CloudServicePropertiesResponse> properties;
  /// The system meta data relating to this resource.
  late final pulumi.Output<SystemDataResponse?> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Resource type.
  late final pulumi.Output<String> type;
  /// List of logical availability zone of the resource. List should contain only 1 zone where cloud service should be provisioned. This field is optional.
  late final pulumi.Output<List<String>?> zones;

  /// Creates a new [CloudService].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CloudService]. {@macro pulumi_compute_cloud_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CloudService(
    String name, {
    CloudServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:compute:CloudService',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.properties = registerOutput<CloudServicePropertiesResponse>('properties');
    this.systemData = registerOutput<SystemDataResponse?>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
    this.zones = registerOutput<List<String>?>('zones');
  }
}
