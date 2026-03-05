import 'package:pulumi/pulumi.dart' as pulumi;
import 'deployment_args.dart';
import 'deployment_resource_properties_response.dart';
import 'sku_response.dart';
import 'system_data_response.dart';

/// Deployment resource payload
///
/// Uses Azure REST API version 2024-01-01-preview. In version 2.x of the Azure Native provider, it used API version 2023-05-01-preview.
///
/// Other available API versions: 2023-05-01-preview, 2023-07-01-preview, 2023-09-01-preview, 2023-11-01-preview, 2023-12-01, 2024-05-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native appplatform [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Deployments_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.AppPlatform.Deployment("deployment", new()
///     {
///         AppName = "myapp",
///         DeploymentName = "mydeployment",
///         Properties = new AzureNative.AppPlatform.Inputs.DeploymentResourcePropertiesArgs
///         {
///             DeploymentSettings = new AzureNative.AppPlatform.Inputs.DeploymentSettingsArgs
///             {
///                 AddonConfigs =
///                 {
///                     { "ApplicationConfigurationService", new Dictionary<string, object?>
///                     {
///                         ["patterns"] = new[]
///                         {
///                             "mypattern",
///                         },
///                     } },
///                 },
///                 Apms = new[]
///                 {
///                     new AzureNative.AppPlatform.Inputs.ApmReferenceArgs
///                     {
///                         ResourceId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///                     },
///                 },
///                 EnvironmentVariables =
///                 {
///                     { "env", "test" },
///                 },
///                 LivenessProbe = new AzureNative.AppPlatform.Inputs.ProbeArgs
///                 {
///                     DisableProbe = false,
///                     FailureThreshold = 3,
///                     InitialDelaySeconds = 30,
///                     PeriodSeconds = 10,
///                     ProbeAction = new AzureNative.AppPlatform.Inputs.HTTPGetActionArgs
///                     {
///                         Path = "/health",
///                         Scheme = AzureNative.AppPlatform.HTTPSchemeType.HTTP,
///                         Type = "HTTPGetAction",
///                     },
///                 },
///                 ReadinessProbe = new AzureNative.AppPlatform.Inputs.ProbeArgs
///                 {
///                     DisableProbe = false,
///                     FailureThreshold = 3,
///                     InitialDelaySeconds = 30,
///                     PeriodSeconds = 10,
///                     ProbeAction = new AzureNative.AppPlatform.Inputs.HTTPGetActionArgs
///                     {
///                         Path = "/health",
///                         Scheme = AzureNative.AppPlatform.HTTPSchemeType.HTTP,
///                         Type = "HTTPGetAction",
///                     },
///                 },
///                 ResourceRequests = new AzureNative.AppPlatform.Inputs.ResourceRequestsArgs
///                 {
///                     Cpu = "1000m",
///                     Memory = "3Gi",
///                 },
///                 TerminationGracePeriodSeconds = 30,
///             },
///             Source = new AzureNative.AppPlatform.Inputs.SourceUploadedUserSourceInfoArgs
///             {
///                 ArtifactSelector = "sub-module-1",
///                 RelativePath = "resources/a172cedcae47474b615c54d510a5d84a8dea3032e958587430b413538be3f333-2019082605-e3095339-1723-44b7-8b5e-31b1003978bc",
///                 Type = "Source",
///                 Version = "1.0",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
///         Sku = new AzureNative.AppPlatform.Inputs.SkuArgs
///         {
///             Capacity = 1,
///             Name = "S0",
///             Tier = "Standard",
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
/// 		_, err := appplatform.NewDeployment(ctx, "deployment", &appplatform.DeploymentArgs{
/// 			AppName:        pulumi.String("myapp"),
/// 			DeploymentName: pulumi.String("mydeployment"),
/// 			Properties: &appplatform.DeploymentResourcePropertiesArgs{
/// 				DeploymentSettings: &appplatform.DeploymentSettingsArgs{
/// 					AddonConfigs: pulumi.Map{
/// 						"ApplicationConfigurationService": pulumi.Any(map[string]interface{}{
/// 							"patterns": []string{
/// 								"mypattern",
/// 							},
/// 						}),
/// 					},
/// 					Apms: appplatform.ApmReferenceArray{
/// 						&appplatform.ApmReferenceArgs{
/// 							ResourceId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights"),
/// 						},
/// 					},
/// 					EnvironmentVariables: pulumi.StringMap{
/// 						"env": pulumi.String("test"),
/// 					},
/// 					LivenessProbe: &appplatform.ProbeArgs{
/// 						DisableProbe:        pulumi.Bool(false),
/// 						FailureThreshold:    pulumi.Int(3),
/// 						InitialDelaySeconds: pulumi.Int(30),
/// 						PeriodSeconds:       pulumi.Int(10),
/// 						ProbeAction: appplatform.HTTPGetAction{
/// 							Path:   "/health",
/// 							Scheme: appplatform.HTTPSchemeTypeHTTP,
/// 							Type:   "HTTPGetAction",
/// 						},
/// 					},
/// 					ReadinessProbe: &appplatform.ProbeArgs{
/// 						DisableProbe:        pulumi.Bool(false),
/// 						FailureThreshold:    pulumi.Int(3),
/// 						InitialDelaySeconds: pulumi.Int(30),
/// 						PeriodSeconds:       pulumi.Int(10),
/// 						ProbeAction: appplatform.HTTPGetAction{
/// 							Path:   "/health",
/// 							Scheme: appplatform.HTTPSchemeTypeHTTP,
/// 							Type:   "HTTPGetAction",
/// 						},
/// 					},
/// 					ResourceRequests: &appplatform.ResourceRequestsArgs{
/// 						Cpu:    pulumi.String("1000m"),
/// 						Memory: pulumi.String("3Gi"),
/// 					},
/// 					TerminationGracePeriodSeconds: pulumi.Int(30),
/// 				},
/// 				Source: appplatform.SourceUploadedUserSourceInfo{
/// 					ArtifactSelector: "sub-module-1",
/// 					RelativePath:     "resources/a172cedcae47474b615c54d510a5d84a8dea3032e958587430b413538be3f333-2019082605-e3095339-1723-44b7-8b5e-31b1003978bc",
/// 					Type:             "Source",
/// 					Version:          "1.0",
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
/// 			Sku: &appplatform.SkuArgs{
/// 				Capacity: pulumi.Int(1),
/// 				Name:     pulumi.String("S0"),
/// 				Tier:     pulumi.String("Standard"),
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
/// import com.pulumi.azurenative.appplatform.Deployment;
/// import com.pulumi.azurenative.appplatform.DeploymentArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DeploymentResourcePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DeploymentSettingsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ProbeArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ResourceRequestsArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .appName("myapp")
///             .deploymentName("mydeployment")
///             .properties(DeploymentResourcePropertiesArgs.builder()
///                 .deploymentSettings(DeploymentSettingsArgs.builder()
///                     .addonConfigs(Map.of("ApplicationConfigurationService", Map.of("patterns", "mypattern")))
///                     .apms(ApmReferenceArgs.builder()
///                         .resourceId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights")
///                         .build())
///                     .environmentVariables(Map.of("env", "test"))
///                     .livenessProbe(ProbeArgs.builder()
///                         .disableProbe(false)
///                         .failureThreshold(3)
///                         .initialDelaySeconds(30)
///                         .periodSeconds(10)
///                         .probeAction(HTTPGetActionArgs.builder()
///                             .path("/health")
///                             .scheme("HTTP")
///                             .type("HTTPGetAction")
///                             .build())
///                         .build())
///                     .readinessProbe(ProbeArgs.builder()
///                         .disableProbe(false)
///                         .failureThreshold(3)
///                         .initialDelaySeconds(30)
///                         .periodSeconds(10)
///                         .probeAction(HTTPGetActionArgs.builder()
///                             .path("/health")
///                             .scheme("HTTP")
///                             .type("HTTPGetAction")
///                             .build())
///                         .build())
///                     .resourceRequests(ResourceRequestsArgs.builder()
///                         .cpu("1000m")
///                         .memory("3Gi")
///                         .build())
///                     .terminationGracePeriodSeconds(30)
///                     .build())
///                 .source(SourceUploadedUserSourceInfoArgs.builder()
///                     .artifactSelector("sub-module-1")
///                     .relativePath("resources/a172cedcae47474b615c54d510a5d84a8dea3032e958587430b413538be3f333-2019082605-e3095339-1723-44b7-8b5e-31b1003978bc")
///                     .type("Source")
///                     .version("1.0")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
///             .sku(SkuArgs.builder()
///                 .capacity(1)
///                 .name("S0")
///                 .tier("Standard")
///                 .build())
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
/// const deployment = new azure_native.appplatform.Deployment("deployment", {
///     appName: "myapp",
///     deploymentName: "mydeployment",
///     properties: {
///         deploymentSettings: {
///             addonConfigs: {
///                 ApplicationConfigurationService: {
///                     patterns: ["mypattern"],
///                 },
///             },
///             apms: [{
///                 resourceId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///             }],
///             environmentVariables: {
///                 env: "test",
///             },
///             livenessProbe: {
///                 disableProbe: false,
///                 failureThreshold: 3,
///                 initialDelaySeconds: 30,
///                 periodSeconds: 10,
///                 probeAction: {
///                     path: "/health",
///                     scheme: azure_native.appplatform.HTTPSchemeType.HTTP,
///                     type: "HTTPGetAction",
///                 },
///             },
///             readinessProbe: {
///                 disableProbe: false,
///                 failureThreshold: 3,
///                 initialDelaySeconds: 30,
///                 periodSeconds: 10,
///                 probeAction: {
///                     path: "/health",
///                     scheme: azure_native.appplatform.HTTPSchemeType.HTTP,
///                     type: "HTTPGetAction",
///                 },
///             },
///             resourceRequests: {
///                 cpu: "1000m",
///                 memory: "3Gi",
///             },
///             terminationGracePeriodSeconds: 30,
///         },
///         source: {
///             artifactSelector: "sub-module-1",
///             relativePath: "resources/a172cedcae47474b615c54d510a5d84a8dea3032e958587430b413538be3f333-2019082605-e3095339-1723-44b7-8b5e-31b1003978bc",
///             type: "Source",
///             version: "1.0",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
///     sku: {
///         capacity: 1,
///         name: "S0",
///         tier: "Standard",
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.appplatform.Deployment("deployment",
///     app_name="myapp",
///     deployment_name="mydeployment",
///     properties={
///         "deployment_settings": {
///             "addon_configs": {
///                 "ApplicationConfigurationService": {
///                     "patterns": ["mypattern"],
///                 },
///             },
///             "apms": [{
///                 "resource_id": "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights",
///             }],
///             "environment_variables": {
///                 "env": "test",
///             },
///             "liveness_probe": {
///                 "disable_probe": False,
///                 "failure_threshold": 3,
///                 "initial_delay_seconds": 30,
///                 "period_seconds": 10,
///                 "probe_action": {
///                     "path": "/health",
///                     "scheme": azure_native.appplatform.HTTPSchemeType.HTTP,
///                     "type": "HTTPGetAction",
///                 },
///             },
///             "readiness_probe": {
///                 "disable_probe": False,
///                 "failure_threshold": 3,
///                 "initial_delay_seconds": 30,
///                 "period_seconds": 10,
///                 "probe_action": {
///                     "path": "/health",
///                     "scheme": azure_native.appplatform.HTTPSchemeType.HTTP,
///                     "type": "HTTPGetAction",
///                 },
///             },
///             "resource_requests": {
///                 "cpu": "1000m",
///                 "memory": "3Gi",
///             },
///             "termination_grace_period_seconds": 30,
///         },
///         "source": {
///             "artifact_selector": "sub-module-1",
///             "relative_path": "resources/a172cedcae47474b615c54d510a5d84a8dea3032e958587430b413538be3f333-2019082605-e3095339-1723-44b7-8b5e-31b1003978bc",
///             "type": "Source",
///             "version": "1.0",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice",
///     sku={
///         "capacity": 1,
///         "name": "S0",
///         "tier": "Standard",
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:appplatform:Deployment
///     properties:
///       appName: myapp
///       deploymentName: mydeployment
///       properties:
///         deploymentSettings:
///           addonConfigs:
///             ApplicationConfigurationService:
///               patterns:
///                 - mypattern
///           apms:
///             - resourceId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/myResourceGroup/providers/Microsoft.AppPlatform/Spring/myservice/apms/myappinsights
///           environmentVariables:
///             env: test
///           livenessProbe:
///             disableProbe: false
///             failureThreshold: 3
///             initialDelaySeconds: 30
///             periodSeconds: 10
///             probeAction:
///               path: /health
///               scheme: HTTP
///               type: HTTPGetAction
///           readinessProbe:
///             disableProbe: false
///             failureThreshold: 3
///             initialDelaySeconds: 30
///             periodSeconds: 10
///             probeAction:
///               path: /health
///               scheme: HTTP
///               type: HTTPGetAction
///           resourceRequests:
///             cpu: 1000m
///             memory: 3Gi
///           terminationGracePeriodSeconds: 30
///         source:
///           artifactSelector: sub-module-1
///           relativePath: resources/a172cedcae47474b615c54d510a5d84a8dea3032e958587430b413538be3f333-2019082605-e3095339-1723-44b7-8b5e-31b1003978bc
///           type: Source
///           version: '1.0'
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
///       sku:
///         capacity: 1
///         name: S0
///         tier: Standard
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Deployments_CreateOrUpdate_CustomContainer
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var deployment = new AzureNative.AppPlatform.Deployment("deployment", new()
///     {
///         AppName = "myapp",
///         DeploymentName = "mydeployment",
///         Properties = new AzureNative.AppPlatform.Inputs.DeploymentResourcePropertiesArgs
///         {
///             DeploymentSettings = new AzureNative.AppPlatform.Inputs.DeploymentSettingsArgs
///             {
///                 EnvironmentVariables =
///                 {
///                     { "env", "test" },
///                 },
///                 LivenessProbe = new AzureNative.AppPlatform.Inputs.ProbeArgs
///                 {
///                     DisableProbe = false,
///                     FailureThreshold = 3,
///                     InitialDelaySeconds = 30,
///                     PeriodSeconds = 10,
///                     ProbeAction = new AzureNative.AppPlatform.Inputs.HTTPGetActionArgs
///                     {
///                         Path = "/health",
///                         Scheme = AzureNative.AppPlatform.HTTPSchemeType.HTTP,
///                         Type = "HTTPGetAction",
///                     },
///                 },
///                 ReadinessProbe = new AzureNative.AppPlatform.Inputs.ProbeArgs
///                 {
///                     DisableProbe = false,
///                     FailureThreshold = 3,
///                     InitialDelaySeconds = 30,
///                     PeriodSeconds = 10,
///                     ProbeAction = new AzureNative.AppPlatform.Inputs.HTTPGetActionArgs
///                     {
///                         Path = "/health",
///                         Scheme = AzureNative.AppPlatform.HTTPSchemeType.HTTP,
///                         Type = "HTTPGetAction",
///                     },
///                 },
///                 ResourceRequests = new AzureNative.AppPlatform.Inputs.ResourceRequestsArgs
///                 {
///                     Cpu = "1000m",
///                     Memory = "3Gi",
///                 },
///                 TerminationGracePeriodSeconds = 30,
///             },
///             Source = new AzureNative.AppPlatform.Inputs.CustomContainerUserSourceInfoArgs
///             {
///                 CustomContainer = new AzureNative.AppPlatform.Inputs.CustomContainerArgs
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
///                     ContainerImage = "myContainerImage:v1",
///                     ImageRegistryCredential = new AzureNative.AppPlatform.Inputs.ImageRegistryCredentialArgs
///                     {
///                         Password = "myPassword",
///                         Username = "myUsername",
///                     },
///                     LanguageFramework = "springboot",
///                     Server = "myacr.azurecr.io",
///                 },
///                 Type = "Container",
///             },
///         },
///         ResourceGroupName = "myResourceGroup",
///         ServiceName = "myservice",
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
/// 		_, err := appplatform.NewDeployment(ctx, "deployment", &appplatform.DeploymentArgs{
/// 			AppName:        pulumi.String("myapp"),
/// 			DeploymentName: pulumi.String("mydeployment"),
/// 			Properties: &appplatform.DeploymentResourcePropertiesArgs{
/// 				DeploymentSettings: &appplatform.DeploymentSettingsArgs{
/// 					EnvironmentVariables: pulumi.StringMap{
/// 						"env": pulumi.String("test"),
/// 					},
/// 					LivenessProbe: &appplatform.ProbeArgs{
/// 						DisableProbe:        pulumi.Bool(false),
/// 						FailureThreshold:    pulumi.Int(3),
/// 						InitialDelaySeconds: pulumi.Int(30),
/// 						PeriodSeconds:       pulumi.Int(10),
/// 						ProbeAction: appplatform.HTTPGetAction{
/// 							Path:   "/health",
/// 							Scheme: appplatform.HTTPSchemeTypeHTTP,
/// 							Type:   "HTTPGetAction",
/// 						},
/// 					},
/// 					ReadinessProbe: &appplatform.ProbeArgs{
/// 						DisableProbe:        pulumi.Bool(false),
/// 						FailureThreshold:    pulumi.Int(3),
/// 						InitialDelaySeconds: pulumi.Int(30),
/// 						PeriodSeconds:       pulumi.Int(10),
/// 						ProbeAction: appplatform.HTTPGetAction{
/// 							Path:   "/health",
/// 							Scheme: appplatform.HTTPSchemeTypeHTTP,
/// 							Type:   "HTTPGetAction",
/// 						},
/// 					},
/// 					ResourceRequests: &appplatform.ResourceRequestsArgs{
/// 						Cpu:    pulumi.String("1000m"),
/// 						Memory: pulumi.String("3Gi"),
/// 					},
/// 					TerminationGracePeriodSeconds: pulumi.Int(30),
/// 				},
/// 				Source: appplatform.CustomContainerUserSourceInfo{
/// 					CustomContainer: appplatform.CustomContainer{
/// 						Args: []string{
/// 							"-c",
/// 							"while true; do echo hello; sleep 10;done",
/// 						},
/// 						Command: []string{
/// 							"/bin/sh",
/// 						},
/// 						ContainerImage: "myContainerImage:v1",
/// 						ImageRegistryCredential: appplatform.ImageRegistryCredential{
/// 							Password: "myPassword",
/// 							Username: "myUsername",
/// 						},
/// 						LanguageFramework: "springboot",
/// 						Server:            "myacr.azurecr.io",
/// 					},
/// 					Type: "Container",
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			ServiceName:       pulumi.String("myservice"),
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
/// import com.pulumi.azurenative.appplatform.Deployment;
/// import com.pulumi.azurenative.appplatform.DeploymentArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DeploymentResourcePropertiesArgs;
/// import com.pulumi.azurenative.appplatform.inputs.DeploymentSettingsArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ProbeArgs;
/// import com.pulumi.azurenative.appplatform.inputs.ResourceRequestsArgs;
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
///         var deployment = new Deployment("deployment", DeploymentArgs.builder()
///             .appName("myapp")
///             .deploymentName("mydeployment")
///             .properties(DeploymentResourcePropertiesArgs.builder()
///                 .deploymentSettings(DeploymentSettingsArgs.builder()
///                     .environmentVariables(Map.of("env", "test"))
///                     .livenessProbe(ProbeArgs.builder()
///                         .disableProbe(false)
///                         .failureThreshold(3)
///                         .initialDelaySeconds(30)
///                         .periodSeconds(10)
///                         .probeAction(HTTPGetActionArgs.builder()
///                             .path("/health")
///                             .scheme("HTTP")
///                             .type("HTTPGetAction")
///                             .build())
///                         .build())
///                     .readinessProbe(ProbeArgs.builder()
///                         .disableProbe(false)
///                         .failureThreshold(3)
///                         .initialDelaySeconds(30)
///                         .periodSeconds(10)
///                         .probeAction(HTTPGetActionArgs.builder()
///                             .path("/health")
///                             .scheme("HTTP")
///                             .type("HTTPGetAction")
///                             .build())
///                         .build())
///                     .resourceRequests(ResourceRequestsArgs.builder()
///                         .cpu("1000m")
///                         .memory("3Gi")
///                         .build())
///                     .terminationGracePeriodSeconds(30)
///                     .build())
///                 .source(CustomContainerUserSourceInfoArgs.builder()
///                     .customContainer(CustomContainerArgs.builder()
///                         .args(
///                             "-c",
///                             "while true; do echo hello; sleep 10;done")
///                         .command("/bin/sh")
///                         .containerImage("myContainerImage:v1")
///                         .imageRegistryCredential(ImageRegistryCredentialArgs.builder()
///                             .password("myPassword")
///                             .username("myUsername")
///                             .build())
///                         .languageFramework("springboot")
///                         .server("myacr.azurecr.io")
///                         .build())
///                     .type("Container")
///                     .build())
///                 .build())
///             .resourceGroupName("myResourceGroup")
///             .serviceName("myservice")
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
/// const deployment = new azure_native.appplatform.Deployment("deployment", {
///     appName: "myapp",
///     deploymentName: "mydeployment",
///     properties: {
///         deploymentSettings: {
///             environmentVariables: {
///                 env: "test",
///             },
///             livenessProbe: {
///                 disableProbe: false,
///                 failureThreshold: 3,
///                 initialDelaySeconds: 30,
///                 periodSeconds: 10,
///                 probeAction: {
///                     path: "/health",
///                     scheme: azure_native.appplatform.HTTPSchemeType.HTTP,
///                     type: "HTTPGetAction",
///                 },
///             },
///             readinessProbe: {
///                 disableProbe: false,
///                 failureThreshold: 3,
///                 initialDelaySeconds: 30,
///                 periodSeconds: 10,
///                 probeAction: {
///                     path: "/health",
///                     scheme: azure_native.appplatform.HTTPSchemeType.HTTP,
///                     type: "HTTPGetAction",
///                 },
///             },
///             resourceRequests: {
///                 cpu: "1000m",
///                 memory: "3Gi",
///             },
///             terminationGracePeriodSeconds: 30,
///         },
///         source: {
///             customContainer: {
///                 args: [
///                     "-c",
///                     "while true; do echo hello; sleep 10;done",
///                 ],
///                 command: ["/bin/sh"],
///                 containerImage: "myContainerImage:v1",
///                 imageRegistryCredential: {
///                     password: "myPassword",
///                     username: "myUsername",
///                 },
///                 languageFramework: "springboot",
///                 server: "myacr.azurecr.io",
///             },
///             type: "Container",
///         },
///     },
///     resourceGroupName: "myResourceGroup",
///     serviceName: "myservice",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// deployment = azure_native.appplatform.Deployment("deployment",
///     app_name="myapp",
///     deployment_name="mydeployment",
///     properties={
///         "deployment_settings": {
///             "environment_variables": {
///                 "env": "test",
///             },
///             "liveness_probe": {
///                 "disable_probe": False,
///                 "failure_threshold": 3,
///                 "initial_delay_seconds": 30,
///                 "period_seconds": 10,
///                 "probe_action": {
///                     "path": "/health",
///                     "scheme": azure_native.appplatform.HTTPSchemeType.HTTP,
///                     "type": "HTTPGetAction",
///                 },
///             },
///             "readiness_probe": {
///                 "disable_probe": False,
///                 "failure_threshold": 3,
///                 "initial_delay_seconds": 30,
///                 "period_seconds": 10,
///                 "probe_action": {
///                     "path": "/health",
///                     "scheme": azure_native.appplatform.HTTPSchemeType.HTTP,
///                     "type": "HTTPGetAction",
///                 },
///             },
///             "resource_requests": {
///                 "cpu": "1000m",
///                 "memory": "3Gi",
///             },
///             "termination_grace_period_seconds": 30,
///         },
///         "source": {
///             "custom_container": {
///                 "args": [
///                     "-c",
///                     "while true; do echo hello; sleep 10;done",
///                 ],
///                 "command": ["/bin/sh"],
///                 "container_image": "myContainerImage:v1",
///                 "image_registry_credential": {
///                     "password": "myPassword",
///                     "username": "myUsername",
///                 },
///                 "language_framework": "springboot",
///                 "server": "myacr.azurecr.io",
///             },
///             "type": "Container",
///         },
///     },
///     resource_group_name="myResourceGroup",
///     service_name="myservice")
///
/// ```
///
/// ```yaml
/// resources:
///   deployment:
///     type: azure-native:appplatform:Deployment
///     properties:
///       appName: myapp
///       deploymentName: mydeployment
///       properties:
///         deploymentSettings:
///           environmentVariables:
///             env: test
///           livenessProbe:
///             disableProbe: false
///             failureThreshold: 3
///             initialDelaySeconds: 30
///             periodSeconds: 10
///             probeAction:
///               path: /health
///               scheme: HTTP
///               type: HTTPGetAction
///           readinessProbe:
///             disableProbe: false
///             failureThreshold: 3
///             initialDelaySeconds: 30
///             periodSeconds: 10
///             probeAction:
///               path: /health
///               scheme: HTTP
///               type: HTTPGetAction
///           resourceRequests:
///             cpu: 1000m
///             memory: 3Gi
///           terminationGracePeriodSeconds: 30
///         source:
///           customContainer:
///             args:
///               - -c
///               - while true; do echo hello; sleep 10;done
///             command:
///               - /bin/sh
///             containerImage: myContainerImage:v1
///             imageRegistryCredential:
///               password: myPassword
///               username: myUsername
///             languageFramework: springboot
///             server: myacr.azurecr.io
///           type: Container
///       resourceGroupName: myResourceGroup
///       serviceName: myservice
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
/// $ pulumi import azure-native:appplatform:Deployment mydeployment /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.AppPlatform/Spring/{serviceName}/apps/{appName}/deployments/{deploymentName}
/// ```
class DeploymentType extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The name of the resource.
  late final pulumi.Output<String> name;

  /// Properties of the Deployment resource
  late final pulumi.Output<DeploymentResourcePropertiesResponse> properties;

  /// Sku of the Deployment resource
  late final pulumi.Output<SkuResponse?> sku;

  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [DeploymentType].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DeploymentType]. {@macro pulumi_appplatform_deployment_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DeploymentType(
    String name, {
    DeploymentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:appplatform:Deployment',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<DeploymentResourcePropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return DeploymentResourcePropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    sku = registerOutput<SkuResponse?>(
      'sku',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SkuResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    type = registerOutput<String>('type');
  }
}
