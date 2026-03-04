import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_resource_properties_response.dart';
import 'service_args.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Service resource
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Services_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.AppPlatform.Service("service", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.AppPlatform.Inputs.ClusterResourcePropertiesArgs
///         {
///             MaintenanceScheduleConfiguration = new AzureNative.AppPlatform.Inputs.WeeklyMaintenanceScheduleConfigurationArgs
///             {
///                 Day = AzureNative.AppPlatform.WeekDay.Sunday,
///                 Frequency = "Weekly",
///                 Hour = 10,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "Standard",
///         },
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewService(ctx, "service", &appplatform.ServiceArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &appplatform.ClusterResourcePropertiesArgs{
/// 				MaintenanceScheduleConfiguration: &appplatform.WeeklyMaintenanceScheduleConfigurationArgs{
/// 					Day:       pulumi.String(appplatform.WeekDaySunday),
/// 					Frequency: pulumi.String("Weekly"),
/// 					Hour:      pulumi.Int(10),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("Standard"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.appplatform.Service;
/// import com.pulumi.azurenative.appplatform.ServiceArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ClusterResourcePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.WeeklyMaintenanceScheduleConfigurationArgs;
/// import com.pulumi.azurenative.appplatform.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .location("eastus")
///             .properties(ClusterResourcePropertiesArgs.builder()
///                 .maintenanceScheduleConfiguration(Map.ofEntries(
///                     Map.entry("day", "Sunday"),
///                     Map.entry("frequency", "Weekly"),
///                     Map.entry("hour", 10)
///                 ))
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
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
/// const service = new azure_native.appplatform.Service("service", {
///     location: "eastus",
///     properties: {
///         maintenanceScheduleConfiguration: {
///             day: azure_native.appplatform.WeekDay.Sunday,
///             frequency: "Weekly",
///             hour: 10,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         name: "S0",
///         tier: "Standard",
///     },
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.appplatform.Service("service",
///     location="eastus",
///     properties={
///         "maintenance_schedule_configuration": {
///             "day": azure_native.appplatform.WeekDay.SUNDAY,
///             "frequency": "Weekly",
///             "hour": 10,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "name": "S0",
///         "tier": "Standard",
///     },
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:appplatform:Service
///     properties:
///       location: eastus
///       properties:
///         maintenanceScheduleConfiguration:
///           day: Sunday
///           frequency: Weekly
///           hour: 10
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         name: S0
///         tier: Standard
///       tags:
///         key1: value1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Services_CreateOrUpdate_Consumption
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.AppPlatform.Service("service", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.AppPlatform.Inputs.ClusterResourcePropertiesArgs
///         {
///             ManagedEnvironmentId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.App/managedEnvironments/myenvironment",
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "StandardGen2",
///         },
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewService(ctx, "service", &appplatform.ServiceArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &appplatform.ClusterResourcePropertiesArgs{
/// 				ManagedEnvironmentId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.App/managedEnvironments/myenvironment"),
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("StandardGen2"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.appplatform.Service;
/// import com.pulumi.azurenative.appplatform.ServiceArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ClusterResourcePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .location("eastus")
///             .properties(ClusterResourcePropertiesArgs.builder()
///                 .managedEnvironmentId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.App/managedEnvironments/myenvironment")
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("StandardGen2")
///                 .build())
///             .tags(Map.of("key1", "value1"))
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
/// const service = new azure_native.appplatform.Service("service", {
///     location: "eastus",
///     properties: {
///         managedEnvironmentId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.App/managedEnvironments/myenvironment",
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         name: "S0",
///         tier: "StandardGen2",
///     },
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.appplatform.Service("service",
///     location="eastus",
///     properties={
///         "managed_environment_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.App/managedEnvironments/myenvironment",
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "name": "S0",
///         "tier": "StandardGen2",
///     },
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:appplatform:Service
///     properties:
///       location: eastus
///       properties:
///         managedEnvironmentId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.App/managedEnvironments/myenvironment
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         name: S0
///         tier: StandardGen2
///       tags:
///         key1: value1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Services_CreateOrUpdate_Enterprise
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.AppPlatform.Service("service", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.AppPlatform.Inputs.ClusterResourcePropertiesArgs
///         {
///             MarketplaceResource = new AzureNative.AppPlatform.Inputs.MarketplaceResourceArgs
///             {
///                 Plan = "tanzu-asc-ent-mtr",
///                 Product = "azure-spring-cloud-vmware-tanzu-2",
///                 Publisher = "vmware-inc",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Name = "E0",
///             Tier = "Enterprise",
///         },
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewService(ctx, "service", &appplatform.ServiceArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &appplatform.ClusterResourcePropertiesArgs{
/// 				MarketplaceResource: &appplatform.MarketplaceResourceArgs{
/// 					Plan:      pulumi.String("tanzu-asc-ent-mtr"),
/// 					Product:   pulumi.String("azure-spring-cloud-vmware-tanzu-2"),
/// 					Publisher: pulumi.String("vmware-inc"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Name: pulumi.String("E0"),
/// 				Tier: pulumi.String("Enterprise"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.appplatform.Service;
/// import com.pulumi.azurenative.appplatform.ServiceArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ClusterResourcePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.MarketplaceResourceArgs;
/// import com.pulumi.azurenative.appplatform.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .location("eastus")
///             .properties(ClusterResourcePropertiesArgs.builder()
///                 .marketplaceResource(MarketplaceResourceArgs.builder()
///                     .plan("tanzu-asc-ent-mtr")
///                     .product("azure-spring-cloud-vmware-tanzu-2")
///                     .publisher("vmware-inc")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .name("E0")
///                 .tier("Enterprise")
///                 .build())
///             .tags(Map.of("key1", "value1"))
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
/// const service = new azure_native.appplatform.Service("service", {
///     location: "eastus",
///     properties: {
///         marketplaceResource: {
///             plan: "tanzu-asc-ent-mtr",
///             product: "azure-spring-cloud-vmware-tanzu-2",
///             publisher: "vmware-inc",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         name: "E0",
///         tier: "Enterprise",
///     },
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.appplatform.Service("service",
///     location="eastus",
///     properties={
///         "marketplace_resource": {
///             "plan": "tanzu-asc-ent-mtr",
///             "product": "azure-spring-cloud-vmware-tanzu-2",
///             "publisher": "vmware-inc",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "name": "E0",
///         "tier": "Enterprise",
///     },
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:appplatform:Service
///     properties:
///       location: eastus
///       properties:
///         marketplaceResource:
///           plan: tanzu-asc-ent-mtr
///           product: azure-spring-cloud-vmware-tanzu-2
///           publisher: vmware-inc
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         name: E0
///         tier: Enterprise
///       tags:
///         key1: value1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Services_CreateOrUpdate_VNetInjection
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var service = new AzureNative.AppPlatform.Service("service", new()
///     {
///         Location = "eastus",
///         Properties = new AzureNative.AppPlatform.Inputs.ClusterResourcePropertiesArgs
///         {
///             NetworkProfile = new AzureNative.AppPlatform.Inputs.NetworkProfileArgs
///             {
///                 AppNetworkResourceGroup = "my-app-network-rg",
///                 AppSubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/apps",
///                 IngressConfig = new AzureNative.AppPlatform.Inputs.IngressConfigArgs
///                 {
///                     ReadTimeoutInSeconds = 300,
///                 },
///                 ServiceCidr = "10.8.0.0/16,10.244.0.0/16,10.245.0.1/16",
///                 ServiceRuntimeNetworkResourceGroup = "my-service-runtime-network-rg",
///                 ServiceRuntimeSubnetId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/serviceRuntime",
///             },
///             VnetAddons = new AzureNative.AppPlatform.Inputs.ServiceVNetAddonsArgs
///             {
///                 DataPlanePublicEndpoint = true,
///                 LogStreamPublicEndpoint = true,
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Name = "S0",
///             Tier = "Standard",
///         },
///         Tags =
///         {
///             { "key1", "value1" },
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
/// 	appplatform "github.com/pulumi/pulumi-azure-native-sdk/appplatform/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := appplatform.NewService(ctx, "service", &appplatform.ServiceArgs{
/// 			Location: pulumi.String("eastus"),
/// 			Properties: &appplatform.ClusterResourcePropertiesArgs{
/// 				NetworkProfile: &appplatform.NetworkProfileArgs{
/// 					AppNetworkResourceGroup: pulumi.String("my-app-network-rg"),
/// 					AppSubnetId:             pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/apps"),
/// 					IngressConfig: &appplatform.IngressConfigArgs{
/// 						ReadTimeoutInSeconds: pulumi.Int(300),
/// 					},
/// 					ServiceCidr:                        pulumi.String("10.8.0.0/16,10.244.0.0/16,10.245.0.1/16"),
/// 					ServiceRuntimeNetworkResourceGroup: pulumi.String("my-service-runtime-network-rg"),
/// 					ServiceRuntimeSubnetId:             pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/serviceRuntime"),
/// 				},
/// 				VnetAddons: &appplatform.ServiceVNetAddonsArgs{
/// 					DataPlanePublicEndpoint: pulumi.Bool(true),
/// 					LogStreamPublicEndpoint: pulumi.Bool(true),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Name: pulumi.String("S0"),
/// 				Tier: pulumi.String("Standard"),
/// 			},
/// 			Tags: pulumi.StringMap{
/// 				"key1": pulumi.String("value1"),
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
/// import com.pulumi.azurenative.appplatform.Service;
/// import com.pulumi.azurenative.appplatform.ServiceArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ClusterResourcePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.NetworkProfileArgs;
/// import com.pulumi.azurenative.appplatform.inputs.IngressConfigArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ServiceVNetAddonsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.SkuArgs;
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
///         var service = new Service("service", ServiceArgs.builder()
///             .location("eastus")
///             .properties(ClusterResourcePropertiesArgs.builder()
///                 .networkProfile(NetworkProfileArgs.builder()
///                     .appNetworkResourceGroup("my-app-network-rg")
///                     .appSubnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/apps")
///                     .ingressConfig(IngressConfigArgs.builder()
///                         .readTimeoutInSeconds(300)
///                         .build())
///                     .serviceCidr("10.8.0.0/16,10.244.0.0/16,10.245.0.1/16")
///                     .serviceRuntimeNetworkResourceGroup("my-service-runtime-network-rg")
///                     .serviceRuntimeSubnetId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/serviceRuntime")
///                     .build())
///                 .vnetAddons(ServiceVNetAddonsArgs.builder()
///                     .dataPlanePublicEndpoint(true)
///                     .logStreamPublicEndpoint(true)
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
///             .tags(Map.of("key1", "value1"))
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
/// const service = new azure_native.appplatform.Service("service", {
///     location: "eastus",
///     properties: {
///         networkProfile: {
///             appNetworkResourceGroup: "my-app-network-rg",
///             appSubnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/apps",
///             ingressConfig: {
///                 readTimeoutInSeconds: 300,
///             },
///             serviceCidr: "10.8.0.0/16,10.244.0.0/16,10.245.0.1/16",
///             serviceRuntimeNetworkResourceGroup: "my-service-runtime-network-rg",
///             serviceRuntimeSubnetId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/serviceRuntime",
///         },
///         vnetAddons: {
///             dataPlanePublicEndpoint: true,
///             logStreamPublicEndpoint: true,
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         name: "S0",
///         tier: "Standard",
///     },
///     tags: {
///         key1: "value1",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// service = azure_native.appplatform.Service("service",
///     location="eastus",
///     properties={
///         "network_profile": {
///             "app_network_resource_group": "my-app-network-rg",
///             "app_subnet_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/apps",
///             "ingress_config": {
///                 "read_timeout_in_seconds": 300,
///             },
///             "service_cidr": "10.8.0.0/16,10.244.0.0/16,10.245.0.1/16",
///             "service_runtime_network_resource_group": "my-service-runtime-network-rg",
///             "service_runtime_subnet_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/serviceRuntime",
///         },
///         "vnet_addons": {
///             "data_plane_public_endpoint": True,
///             "log_stream_public_endpoint": True,
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "name": "S0",
///         "tier": "Standard",
///     },
///     tags={
///         "key1": "value1",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   service:
///     type: azure-native:appplatform:Service
///     properties:
///       location: eastus
///       properties:
///         networkProfile:
///           appNetworkResourceGroup: my-app-network-rg
///           appSubnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/apps
///           ingressConfig:
///             readTimeoutInSeconds: 300
///           serviceCidr: 10.8.0.0/16,10.244.0.0/16,10.245.0.1/16
///           serviceRuntimeNetworkResourceGroup: my-service-runtime-network-rg
///           serviceRuntimeSubnetId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.Network/virtualNetworks/myVirtualNetwork/subnets/serviceRuntime
///         vnetAddons:
///           dataPlanePublicEndpoint: true
///           logStreamPublicEndpoint: true
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         name: S0
///         tier: Standard
///       tags:
///         key1: value1
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
/// $ pulumi import azure-native:appplatform:Service myservice /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}
/// ```
class Service extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The GEO location of the resource.
  late final pulumi.Output<String?> location;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// Properties of the Service resource
  late final pulumi.Output<ClusterResourcePropertiesResponse> properties;

  /// Sku of the Service resource
  late final pulumi.Output<SkuResponse?> sku;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tags of the service which is a list of key value pairs that describe the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Service].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Service]. {@macro pulumi_appplatform_service_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Service(
    String name, {
    ServiceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appplatform:Service',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    location = registerOutput<String?>('location');
    this.name = registerOutput<String>('name');
    properties = registerOutput<ClusterResourcePropertiesResponse>(
      'properties',
    );
    sku = registerOutput<SkuResponse?>('sku');
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
