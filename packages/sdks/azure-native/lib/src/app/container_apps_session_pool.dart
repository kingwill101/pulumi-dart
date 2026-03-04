import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_apps_session_pool_args.dart';
import 'custom_container_template_response.dart';
import 'dynamic_pool_configuration_response.dart';
import 'managed_service_identity_response.dart';
import 'scale_configuration_response.dart';
import 'session_network_configuration_response.dart';
import 'system_data_response.dart';

/// Container App session pool.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2024-02-02-preview.
///
/// Other available API versions: 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Session Pool with lifecycle OnContainerExit Timed
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerAppsSessionPool = new AzureNative.App.ContainerAppsSessionPool("containerAppsSessionPool", new()
///     {
///         ContainerType = AzureNative.App.ContainerType.CustomContainer,
///         CustomContainerTemplate = new AzureNative.App.Inputs.CustomContainerTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.SessionContainerArgs
///                 {
///                     Args = new[]
///                     {
///                         "-c",
///                         "while true; do echo hello; sleep 10;done",
///                     },
///                     Command = new[]
///                     {
///                         "/bin/sh",
///                     },
///                     Image = "repo/testcontainer:v4",
///                     Name = "testinitcontainer",
///                     Resources = new AzureNative.App.Inputs.SessionContainerResourcesArgs
///                     {
///                         Cpu = 0.25,
///                         Memory = "0.5Gi",
///                     },
///                 },
///             },
///             Ingress = new AzureNative.App.Inputs.SessionIngressArgs
///             {
///                 TargetPort = 80,
///             },
///             RegistryCredentials = new AzureNative.App.Inputs.SessionRegistryCredentialsArgs
///             {
///                 Identity = "/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP",
///                 Server = "test.azurecr.io",
///             },
///         },
///         DynamicPoolConfiguration = new AzureNative.App.Inputs.DynamicPoolConfigurationArgs
///         {
///             LifecycleConfiguration = new AzureNative.App.Inputs.LifecycleConfigurationArgs
///             {
///                 LifecycleType = AzureNative.App.LifecycleType.OnContainerExit,
///                 MaxAlivePeriodInSeconds = 86400,
///             },
///         },
///         EnvironmentId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///         Identity = new AzureNative.App.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.App.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "East US",
///         ManagedIdentitySettings = new[]
///         {
///             new AzureNative.App.Inputs.ManagedIdentitySettingArgs
///             {
///                 Identity = "system",
///                 Lifecycle = AzureNative.App.IdentitySettingsLifeCycle.Main,
///             },
///         },
///         PoolManagementType = AzureNative.App.PoolManagementType.Dynamic,
///         ResourceGroupName = "rg",
///         ScaleConfiguration = new AzureNative.App.Inputs.ScaleConfigurationArgs
///         {
///             MaxConcurrentSessions = 500,
///             ReadySessionInstances = 100,
///         },
///         SessionNetworkConfiguration = new AzureNative.App.Inputs.SessionNetworkConfigurationArgs
///         {
///             Status = AzureNative.App.SessionNetworkStatus.EgressEnabled,
///         },
///         SessionPoolName = "testsessionpool",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerAppsSessionPool(ctx, "containerAppsSessionPool", &app.ContainerAppsSessionPoolArgs{
/// 			ContainerType: pulumi.String(app.ContainerTypeCustomContainer),
/// 			CustomContainerTemplate: &app.CustomContainerTemplateArgs{
/// 				Containers: app.SessionContainerArray{
/// 					&app.SessionContainerArgs{
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("-c"),
/// 							pulumi.String("while true; do echo hello; sleep 10;done"),
/// 						},
/// 						Command: pulumi.StringArray{
/// 							pulumi.String("/bin/sh"),
/// 						},
/// 						Image: pulumi.String("repo/testcontainer:v4"),
/// 						Name:  pulumi.String("testinitcontainer"),
/// 						Resources: &app.SessionContainerResourcesArgs{
/// 							Cpu:    pulumi.Float64(0.25),
/// 							Memory: pulumi.String("0.5Gi"),
/// 						},
/// 					},
/// 				},
/// 				Ingress: &app.SessionIngressArgs{
/// 					TargetPort: pulumi.Int(80),
/// 				},
/// 				RegistryCredentials: &app.SessionRegistryCredentialsArgs{
/// 					Identity: pulumi.String("/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP"),
/// 					Server:   pulumi.String("test.azurecr.io"),
/// 				},
/// 			},
/// 			DynamicPoolConfiguration: &app.DynamicPoolConfigurationArgs{
/// 				LifecycleConfiguration: &app.LifecycleConfigurationArgs{
/// 					LifecycleType:           pulumi.String(app.LifecycleTypeOnContainerExit),
/// 					MaxAlivePeriodInSeconds: pulumi.Int(86400),
/// 				},
/// 			},
/// 			EnvironmentId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube"),
/// 			Identity: &app.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(app.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("East US"),
/// 			ManagedIdentitySettings: app.ManagedIdentitySettingArray{
/// 				&app.ManagedIdentitySettingArgs{
/// 					Identity:  pulumi.String("system"),
/// 					Lifecycle: pulumi.String(app.IdentitySettingsLifeCycleMain),
/// 				},
/// 			},
/// 			PoolManagementType: pulumi.String(app.PoolManagementTypeDynamic),
/// 			ResourceGroupName:  pulumi.String("rg"),
/// 			ScaleConfiguration: &app.ScaleConfigurationArgs{
/// 				MaxConcurrentSessions: pulumi.Int(500),
/// 				ReadySessionInstances: pulumi.Int(100),
/// 			},
/// 			SessionNetworkConfiguration: &app.SessionNetworkConfigurationArgs{
/// 				Status: pulumi.String(app.SessionNetworkStatusEgressEnabled),
/// 			},
/// 			SessionPoolName: pulumi.String("testsessionpool"),
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
/// import com.pulumi.azurenative.app.ContainerAppsSessionPool;
/// import com.pulumi.azurenative.app.ContainerAppsSessionPoolArgs;
/// import com.pulumi.azurenative.app.inputs.CustomContainerTemplateArgs;
/// import com.pulumi.azurenative.app.inputs.SessionIngressArgs;
/// import com.pulumi.azurenative.app.inputs.SessionRegistryCredentialsArgs;
/// import com.pulumi.azurenative.app.inputs.DynamicPoolConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.LifecycleConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedIdentitySettingArgs;
/// import com.pulumi.azurenative.app.inputs.ScaleConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.SessionNetworkConfigurationArgs;
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
///         var containerAppsSessionPool = new ContainerAppsSessionPool("containerAppsSessionPool", ContainerAppsSessionPoolArgs.builder()
///             .containerType("CustomContainer")
///             .customContainerTemplate(CustomContainerTemplateArgs.builder()
///                 .containers(SessionContainerArgs.builder()
///                     .args(
///                         "-c",
///                         "while true; do echo hello; sleep 10;done")
///                     .command("/bin/sh")
///                     .image("repo/testcontainer:v4")
///                     .name("testinitcontainer")
///                     .resources(SessionContainerResourcesArgs.builder()
///                         .cpu(0.25)
///                         .memory("0.5Gi")
///                         .build())
///                     .build())
///                 .ingress(SessionIngressArgs.builder()
///                     .targetPort(80)
///                     .build())
///                 .registryCredentials(SessionRegistryCredentialsArgs.builder()
///                     .identity("/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP")
///                     .server("test.azurecr.io")
///                     .build())
///                 .build())
///             .dynamicPoolConfiguration(DynamicPoolConfigurationArgs.builder()
///                 .lifecycleConfiguration(LifecycleConfigurationArgs.builder()
///                     .lifecycleType("OnContainerExit")
///                     .maxAlivePeriodInSeconds(86400)
///                     .build())
///                 .build())
///             .environmentId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("East US")
///             .managedIdentitySettings(ManagedIdentitySettingArgs.builder()
///                 .identity("system")
///                 .lifecycle("Main")
///                 .build())
///             .poolManagementType("Dynamic")
///             .resourceGroupName("rg")
///             .scaleConfiguration(ScaleConfigurationArgs.builder()
///                 .maxConcurrentSessions(500)
///                 .readySessionInstances(100)
///                 .build())
///             .sessionNetworkConfiguration(SessionNetworkConfigurationArgs.builder()
///                 .status("EgressEnabled")
///                 .build())
///             .sessionPoolName("testsessionpool")
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
/// const containerAppsSessionPool = new azure_native.app.ContainerAppsSessionPool("containerAppsSessionPool", {
///     containerType: azure_native.app.ContainerType.CustomContainer,
///     customContainerTemplate: {
///         containers: [{
///             args: [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             command: ["/bin/sh"],
///             image: "repo/testcontainer:v4",
///             name: "testinitcontainer",
///             resources: {
///                 cpu: 0.25,
///                 memory: "0.5Gi",
///             },
///         }],
///         ingress: {
///             targetPort: 80,
///         },
///         registryCredentials: {
///             identity: "/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP",
///             server: "test.azurecr.io",
///         },
///     },
///     dynamicPoolConfiguration: {
///         lifecycleConfiguration: {
///             lifecycleType: azure_native.app.LifecycleType.OnContainerExit,
///             maxAlivePeriodInSeconds: 86400,
///         },
///     },
///     environmentId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     identity: {
///         type: azure_native.app.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "East US",
///     managedIdentitySettings: [{
///         identity: "system",
///         lifecycle: azure_native.app.IdentitySettingsLifeCycle.Main,
///     }],
///     poolManagementType: azure_native.app.PoolManagementType.Dynamic,
///     resourceGroupName: "rg",
///     scaleConfiguration: {
///         maxConcurrentSessions: 500,
///         readySessionInstances: 100,
///     },
///     sessionNetworkConfiguration: {
///         status: azure_native.app.SessionNetworkStatus.EgressEnabled,
///     },
///     sessionPoolName: "testsessionpool",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_apps_session_pool = azure_native.app.ContainerAppsSessionPool("containerAppsSessionPool",
///     container_type=azure_native.app.ContainerType.CUSTOM_CONTAINER,
///     custom_container_template={
///         "containers": [{
///             "args": [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             "command": ["/bin/sh"],
///             "image": "repo/testcontainer:v4",
///             "name": "testinitcontainer",
///             "resources": {
///                 "cpu": 0.25,
///                 "memory": "0.5Gi",
///             },
///         }],
///         "ingress": {
///             "target_port": 80,
///         },
///         "registry_credentials": {
///             "identity": "/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP",
///             "server": "test.azurecr.io",
///         },
///     },
///     dynamic_pool_configuration={
///         "lifecycle_configuration": {
///             "lifecycle_type": azure_native.app.LifecycleType.ON_CONTAINER_EXIT,
///             "max_alive_period_in_seconds": 86400,
///         },
///     },
///     environment_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     identity={
///         "type": azure_native.app.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="East US",
///     managed_identity_settings=[{
///         "identity": "system",
///         "lifecycle": azure_native.app.IdentitySettingsLifeCycle.MAIN,
///     }],
///     pool_management_type=azure_native.app.PoolManagementType.DYNAMIC,
///     resource_group_name="rg",
///     scale_configuration={
///         "max_concurrent_sessions": 500,
///         "ready_session_instances": 100,
///     },
///     session_network_configuration={
///         "status": azure_native.app.SessionNetworkStatus.EGRESS_ENABLED,
///     },
///     session_pool_name="testsessionpool")
///
/// ```
///
/// ```yaml
/// resources:
///   containerAppsSessionPool:
///     type: azure-native:app:ContainerAppsSessionPool
///     properties:
///       containerType: CustomContainer
///       customContainerTemplate:
///         containers:
///           - args:
///               - -c
///               - while true; do echo hello; sleep 10;done
///             command:
///               - /bin/sh
///             image: repo/testcontainer:v4
///             name: testinitcontainer
///             resources:
///               cpu: 0.25
///               memory: 0.5Gi
///         ingress:
///           targetPort: 80
///         registryCredentials:
///           identity: /subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP
///           server: test.azurecr.io
///       dynamicPoolConfiguration:
///         lifecycleConfiguration:
///           lifecycleType: OnContainerExit
///           maxAlivePeriodInSeconds: 86400
///       environmentId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube
///       identity:
///         type: SystemAssigned
///       location: East US
///       managedIdentitySettings:
///         - identity: system
///           lifecycle: Main
///       poolManagementType: Dynamic
///       resourceGroupName: rg
///       scaleConfiguration:
///         maxConcurrentSessions: 500
///         readySessionInstances: 100
///       sessionNetworkConfiguration:
///         status: EgressEnabled
///       sessionPoolName: testsessionpool
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Session Pool with lifecycle type Timed
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerAppsSessionPool = new AzureNative.App.ContainerAppsSessionPool("containerAppsSessionPool", new()
///     {
///         ContainerType = AzureNative.App.ContainerType.CustomContainer,
///         CustomContainerTemplate = new AzureNative.App.Inputs.CustomContainerTemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.SessionContainerArgs
///                 {
///                     Args = new[]
///                     {
///                         "-c",
///                         "while true; do echo hello; sleep 10;done",
///                     },
///                     Command = new[]
///                     {
///                         "/bin/sh",
///                     },
///                     Image = "repo/testcontainer:v4",
///                     Name = "testinitcontainer",
///                     Resources = new AzureNative.App.Inputs.SessionContainerResourcesArgs
///                     {
///                         Cpu = 0.25,
///                         Memory = "0.5Gi",
///                     },
///                 },
///             },
///             Ingress = new AzureNative.App.Inputs.SessionIngressArgs
///             {
///                 TargetPort = 80,
///             },
///             RegistryCredentials = new AzureNative.App.Inputs.SessionRegistryCredentialsArgs
///             {
///                 Identity = "/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP",
///                 Server = "test.azurecr.io",
///             },
///         },
///         DynamicPoolConfiguration = new AzureNative.App.Inputs.DynamicPoolConfigurationArgs
///         {
///             LifecycleConfiguration = new AzureNative.App.Inputs.LifecycleConfigurationArgs
///             {
///                 CooldownPeriodInSeconds = 600,
///                 LifecycleType = AzureNative.App.LifecycleType.Timed,
///             },
///         },
///         EnvironmentId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///         Identity = new AzureNative.App.Inputs.ManagedServiceIdentityArgs
///         {
///             Type = AzureNative.App.ManagedServiceIdentityType.SystemAssigned,
///         },
///         Location = "East US",
///         ManagedIdentitySettings = new[]
///         {
///             new AzureNative.App.Inputs.ManagedIdentitySettingArgs
///             {
///                 Identity = "system",
///                 Lifecycle = AzureNative.App.IdentitySettingsLifeCycle.Main,
///             },
///         },
///         PoolManagementType = AzureNative.App.PoolManagementType.Dynamic,
///         ResourceGroupName = "rg",
///         ScaleConfiguration = new AzureNative.App.Inputs.ScaleConfigurationArgs
///         {
///             MaxConcurrentSessions = 500,
///             ReadySessionInstances = 100,
///         },
///         SessionNetworkConfiguration = new AzureNative.App.Inputs.SessionNetworkConfigurationArgs
///         {
///             Status = AzureNative.App.SessionNetworkStatus.EgressEnabled,
///         },
///         SessionPoolName = "testsessionpool",
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerAppsSessionPool(ctx, "containerAppsSessionPool", &app.ContainerAppsSessionPoolArgs{
/// 			ContainerType: pulumi.String(app.ContainerTypeCustomContainer),
/// 			CustomContainerTemplate: &app.CustomContainerTemplateArgs{
/// 				Containers: app.SessionContainerArray{
/// 					&app.SessionContainerArgs{
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("-c"),
/// 							pulumi.String("while true; do echo hello; sleep 10;done"),
/// 						},
/// 						Command: pulumi.StringArray{
/// 							pulumi.String("/bin/sh"),
/// 						},
/// 						Image: pulumi.String("repo/testcontainer:v4"),
/// 						Name:  pulumi.String("testinitcontainer"),
/// 						Resources: &app.SessionContainerResourcesArgs{
/// 							Cpu:    pulumi.Float64(0.25),
/// 							Memory: pulumi.String("0.5Gi"),
/// 						},
/// 					},
/// 				},
/// 				Ingress: &app.SessionIngressArgs{
/// 					TargetPort: pulumi.Int(80),
/// 				},
/// 				RegistryCredentials: &app.SessionRegistryCredentialsArgs{
/// 					Identity: pulumi.String("/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP"),
/// 					Server:   pulumi.String("test.azurecr.io"),
/// 				},
/// 			},
/// 			DynamicPoolConfiguration: &app.DynamicPoolConfigurationArgs{
/// 				LifecycleConfiguration: &app.LifecycleConfigurationArgs{
/// 					CooldownPeriodInSeconds: pulumi.Int(600),
/// 					LifecycleType:           pulumi.String(app.LifecycleTypeTimed),
/// 				},
/// 			},
/// 			EnvironmentId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube"),
/// 			Identity: &app.ManagedServiceIdentityArgs{
/// 				Type: pulumi.String(app.ManagedServiceIdentityTypeSystemAssigned),
/// 			},
/// 			Location: pulumi.String("East US"),
/// 			ManagedIdentitySettings: app.ManagedIdentitySettingArray{
/// 				&app.ManagedIdentitySettingArgs{
/// 					Identity:  pulumi.String("system"),
/// 					Lifecycle: pulumi.String(app.IdentitySettingsLifeCycleMain),
/// 				},
/// 			},
/// 			PoolManagementType: pulumi.String(app.PoolManagementTypeDynamic),
/// 			ResourceGroupName:  pulumi.String("rg"),
/// 			ScaleConfiguration: &app.ScaleConfigurationArgs{
/// 				MaxConcurrentSessions: pulumi.Int(500),
/// 				ReadySessionInstances: pulumi.Int(100),
/// 			},
/// 			SessionNetworkConfiguration: &app.SessionNetworkConfigurationArgs{
/// 				Status: pulumi.String(app.SessionNetworkStatusEgressEnabled),
/// 			},
/// 			SessionPoolName: pulumi.String("testsessionpool"),
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
/// import com.pulumi.azurenative.app.ContainerAppsSessionPool;
/// import com.pulumi.azurenative.app.ContainerAppsSessionPoolArgs;
/// import com.pulumi.azurenative.app.inputs.CustomContainerTemplateArgs;
/// import com.pulumi.azurenative.app.inputs.SessionIngressArgs;
/// import com.pulumi.azurenative.app.inputs.SessionRegistryCredentialsArgs;
/// import com.pulumi.azurenative.app.inputs.DynamicPoolConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.LifecycleConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedServiceIdentityArgs;
/// import com.pulumi.azurenative.app.inputs.ManagedIdentitySettingArgs;
/// import com.pulumi.azurenative.app.inputs.ScaleConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.SessionNetworkConfigurationArgs;
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
///         var containerAppsSessionPool = new ContainerAppsSessionPool("containerAppsSessionPool", ContainerAppsSessionPoolArgs.builder()
///             .containerType("CustomContainer")
///             .customContainerTemplate(CustomContainerTemplateArgs.builder()
///                 .containers(SessionContainerArgs.builder()
///                     .args(
///                         "-c",
///                         "while true; do echo hello; sleep 10;done")
///                     .command("/bin/sh")
///                     .image("repo/testcontainer:v4")
///                     .name("testinitcontainer")
///                     .resources(SessionContainerResourcesArgs.builder()
///                         .cpu(0.25)
///                         .memory("0.5Gi")
///                         .build())
///                     .build())
///                 .ingress(SessionIngressArgs.builder()
///                     .targetPort(80)
///                     .build())
///                 .registryCredentials(SessionRegistryCredentialsArgs.builder()
///                     .identity("/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP")
///                     .server("test.azurecr.io")
///                     .build())
///                 .build())
///             .dynamicPoolConfiguration(DynamicPoolConfigurationArgs.builder()
///                 .lifecycleConfiguration(LifecycleConfigurationArgs.builder()
///                     .cooldownPeriodInSeconds(600)
///                     .lifecycleType("Timed")
///                     .build())
///                 .build())
///             .environmentId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube")
///             .identity(ManagedServiceIdentityArgs.builder()
///                 .type("SystemAssigned")
///                 .build())
///             .location("East US")
///             .managedIdentitySettings(ManagedIdentitySettingArgs.builder()
///                 .identity("system")
///                 .lifecycle("Main")
///                 .build())
///             .poolManagementType("Dynamic")
///             .resourceGroupName("rg")
///             .scaleConfiguration(ScaleConfigurationArgs.builder()
///                 .maxConcurrentSessions(500)
///                 .readySessionInstances(100)
///                 .build())
///             .sessionNetworkConfiguration(SessionNetworkConfigurationArgs.builder()
///                 .status("EgressEnabled")
///                 .build())
///             .sessionPoolName("testsessionpool")
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
/// const containerAppsSessionPool = new azure_native.app.ContainerAppsSessionPool("containerAppsSessionPool", {
///     containerType: azure_native.app.ContainerType.CustomContainer,
///     customContainerTemplate: {
///         containers: [{
///             args: [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             command: ["/bin/sh"],
///             image: "repo/testcontainer:v4",
///             name: "testinitcontainer",
///             resources: {
///                 cpu: 0.25,
///                 memory: "0.5Gi",
///             },
///         }],
///         ingress: {
///             targetPort: 80,
///         },
///         registryCredentials: {
///             identity: "/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP",
///             server: "test.azurecr.io",
///         },
///     },
///     dynamicPoolConfiguration: {
///         lifecycleConfiguration: {
///             cooldownPeriodInSeconds: 600,
///             lifecycleType: azure_native.app.LifecycleType.Timed,
///         },
///     },
///     environmentId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     identity: {
///         type: azure_native.app.ManagedServiceIdentityType.SystemAssigned,
///     },
///     location: "East US",
///     managedIdentitySettings: [{
///         identity: "system",
///         lifecycle: azure_native.app.IdentitySettingsLifeCycle.Main,
///     }],
///     poolManagementType: azure_native.app.PoolManagementType.Dynamic,
///     resourceGroupName: "rg",
///     scaleConfiguration: {
///         maxConcurrentSessions: 500,
///         readySessionInstances: 100,
///     },
///     sessionNetworkConfiguration: {
///         status: azure_native.app.SessionNetworkStatus.EgressEnabled,
///     },
///     sessionPoolName: "testsessionpool",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_apps_session_pool = azure_native.app.ContainerAppsSessionPool("containerAppsSessionPool",
///     container_type=azure_native.app.ContainerType.CUSTOM_CONTAINER,
///     custom_container_template={
///         "containers": [{
///             "args": [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             "command": ["/bin/sh"],
///             "image": "repo/testcontainer:v4",
///             "name": "testinitcontainer",
///             "resources": {
///                 "cpu": 0.25,
///                 "memory": "0.5Gi",
///             },
///         }],
///         "ingress": {
///             "target_port": 80,
///         },
///         "registry_credentials": {
///             "identity": "/subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP",
///             "server": "test.azurecr.io",
///         },
///     },
///     dynamic_pool_configuration={
///         "lifecycle_configuration": {
///             "cooldown_period_in_seconds": 600,
///             "lifecycle_type": azure_native.app.LifecycleType.TIMED,
///         },
///     },
///     environment_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     identity={
///         "type": azure_native.app.ManagedServiceIdentityType.SYSTEM_ASSIGNED,
///     },
///     location="East US",
///     managed_identity_settings=[{
///         "identity": "system",
///         "lifecycle": azure_native.app.IdentitySettingsLifeCycle.MAIN,
///     }],
///     pool_management_type=azure_native.app.PoolManagementType.DYNAMIC,
///     resource_group_name="rg",
///     scale_configuration={
///         "max_concurrent_sessions": 500,
///         "ready_session_instances": 100,
///     },
///     session_network_configuration={
///         "status": azure_native.app.SessionNetworkStatus.EGRESS_ENABLED,
///     },
///     session_pool_name="testsessionpool")
///
/// ```
///
/// ```yaml
/// resources:
///   containerAppsSessionPool:
///     type: azure-native:app:ContainerAppsSessionPool
///     properties:
///       containerType: CustomContainer
///       customContainerTemplate:
///         containers:
///           - args:
///               - -c
///               - while true; do echo hello; sleep 10;done
///             command:
///               - /bin/sh
///             image: repo/testcontainer:v4
///             name: testinitcontainer
///             resources:
///               cpu: 0.25
///               memory: 0.5Gi
///         ingress:
///           targetPort: 80
///         registryCredentials:
///           identity: /subscriptions/7a497526-bb8d-4816-9795-db1418a1f977/resourcegroups/test/providers/Microsoft.ManagedIdentity/userAssignedIdentities/testSP
///           server: test.azurecr.io
///       dynamicPoolConfiguration:
///         lifecycleConfiguration:
///           cooldownPeriodInSeconds: 600
///           lifecycleType: Timed
///       environmentId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube
///       identity:
///         type: SystemAssigned
///       location: East US
///       managedIdentitySettings:
///         - identity: system
///           lifecycle: Main
///       poolManagementType: Dynamic
///       resourceGroupName: rg
///       scaleConfiguration:
///         maxConcurrentSessions: 500
///         readySessionInstances: 100
///       sessionNetworkConfiguration:
///         status: EgressEnabled
///       sessionPoolName: testsessionpool
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
/// $ pulumi import azure-native:app:ContainerAppsSessionPool testsessionpool /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/sessionPools/{sessionPoolName}
/// ```
class ContainerAppsSessionPool extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The container type of the sessions.
  late final pulumi.Output<String?> containerType;

  /// The custom container configuration if the containerType is CustomContainer.
  late final pulumi.Output<CustomContainerTemplateResponse?>
  customContainerTemplate;

  /// The pool configuration if the poolManagementType is dynamic.
  late final pulumi.Output<DynamicPoolConfigurationResponse?>
  dynamicPoolConfiguration;

  /// Resource ID of the session pool's environment.
  late final pulumi.Output<String?> environmentId;

  /// Managed identities needed by a session pool to interact with other Azure services to not maintain any secrets or credentials in code.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;

  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;

  /// Optional settings for a Managed Identity that is assigned to the Session pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> managedIdentitySettings;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// The number of nodes the session pool is using.
  late final pulumi.Output<int> nodeCount;

  /// The endpoint to manage the pool.
  late final pulumi.Output<String> poolManagementEndpoint;

  /// The pool management type of the session pool.
  late final pulumi.Output<String?> poolManagementType;

  /// Provisioning state of the session pool.
  late final pulumi.Output<String> provisioningState;

  /// The scale configuration of the session pool.
  late final pulumi.Output<ScaleConfigurationResponse?> scaleConfiguration;

  /// The secrets of the session pool.
  late final pulumi.Output<List<Map<String, dynamic>>?> secrets;

  /// The network configuration of the sessions in the session pool.
  late final pulumi.Output<SessionNetworkConfigurationResponse?>
  sessionNetworkConfiguration;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [ContainerAppsSessionPool].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerAppsSessionPool]. {@macro pulumi_app_container_apps_session_pool_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerAppsSessionPool(
    String name, {
    ContainerAppsSessionPoolArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:app:ContainerAppsSessionPool',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    containerType = registerOutput<String?>('containerType');
    customContainerTemplate = registerOutput<CustomContainerTemplateResponse?>(
      'customContainerTemplate',
    );
    dynamicPoolConfiguration =
        registerOutput<DynamicPoolConfigurationResponse?>(
          'dynamicPoolConfiguration',
        );
    environmentId = registerOutput<String?>('environmentId');
    identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    location = registerOutput<String>('location');
    managedIdentitySettings = registerOutput<List<Map<String, dynamic>>?>(
      'managedIdentitySettings',
    );
    this.name = registerOutput<String>('name');
    nodeCount = registerOutput<int>('nodeCount');
    poolManagementEndpoint = registerOutput<String>('poolManagementEndpoint');
    poolManagementType = registerOutput<String?>('poolManagementType');
    provisioningState = registerOutput<String>('provisioningState');
    scaleConfiguration = registerOutput<ScaleConfigurationResponse?>(
      'scaleConfiguration',
    );
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    sessionNetworkConfiguration =
        registerOutput<SessionNetworkConfigurationResponse?>(
          'sessionNetworkConfiguration',
        );
    systemData = registerOutput<SystemDataResponse>('systemData');
    tags = registerOutput<Map<String, String>?>('tags');
    type = registerOutput<String>('type');
  }
}
