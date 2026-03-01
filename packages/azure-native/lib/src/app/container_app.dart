import 'package:pulumi/pulumi.dart' as pulumi;
import 'configuration_response.dart';
import 'container_app_args.dart';
import 'container_app_response_patching_configuration.dart';
import 'extended_location_response.dart';
import 'managed_service_identity_response.dart';
import 'system_data_response.dart';
import 'template_response.dart';

/// Container App.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update App Kind
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerApp = new AzureNative.App.ContainerApp("containerApp", new()
///     {
///         Configuration = new AzureNative.App.Inputs.ConfigurationArgs
///         {
///             ActiveRevisionsMode = AzureNative.App.ActiveRevisionsMode.Single,
///             Ingress = new AzureNative.App.Inputs.IngressArgs
///             {
///                 AllowInsecure = true,
///                 External = true,
///                 TargetPort = 80,
///             },
///         },
///         ContainerAppName = "testcontainerAppKind",
///         Kind = AzureNative.App.Kind.Workflowapp,
///         Location = "East Us",
///         ManagedBy = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Web/sites/testcontainerAppKind",
///         ManagedEnvironmentId = "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/testmanagedenv3",
///         ResourceGroupName = "rg",
///         Template = new AzureNative.App.Inputs.TemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.ContainerArgs
///                 {
///                     Image = "default/logicapps-base:latest",
///                     Name = "logicapps-container",
///                     Resources = new AzureNative.App.Inputs.ContainerResourcesArgs
///                     {
///                         Cpu = 1,
///                         Memory = "2.0Gi",
///                     },
///                 },
///             },
///             Scale = new AzureNative.App.Inputs.ScaleArgs
///             {
///                 CooldownPeriod = 350,
///                 MaxReplicas = 30,
///                 MinReplicas = 1,
///                 PollingInterval = 35,
///             },
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerApp(ctx, "containerApp", &app.ContainerAppArgs{
/// 			Configuration: &app.ConfigurationArgs{
/// 				ActiveRevisionsMode: pulumi.String(app.ActiveRevisionsModeSingle),
/// 				Ingress: &app.IngressArgs{
/// 					AllowInsecure: pulumi.Bool(true),
/// 					External:      pulumi.Bool(true),
/// 					TargetPort:    pulumi.Int(80),
/// 				},
/// 			},
/// 			ContainerAppName:     pulumi.String("testcontainerAppKind"),
/// 			Kind:                 pulumi.String(app.KindWorkflowapp),
/// 			Location:             pulumi.String("East Us"),
/// 			ManagedBy:            pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Web/sites/testcontainerAppKind"),
/// 			ManagedEnvironmentId: pulumi.String("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/testmanagedenv3"),
/// 			ResourceGroupName:    pulumi.String("rg"),
/// 			Template: &app.TemplateArgs{
/// 				Containers: app.ContainerArray{
/// 					&app.ContainerArgs{
/// 						Image: pulumi.String("default/logicapps-base:latest"),
/// 						Name:  pulumi.String("logicapps-container"),
/// 						Resources: &app.ContainerResourcesArgs{
/// 							Cpu:    pulumi.Float64(1),
/// 							Memory: pulumi.String("2.0Gi"),
/// 						},
/// 					},
/// 				},
/// 				Scale: &app.ScaleArgs{
/// 					CooldownPeriod:  pulumi.Int(350),
/// 					MaxReplicas:     pulumi.Int(30),
/// 					MinReplicas:     pulumi.Int(1),
/// 					PollingInterval: pulumi.Int(35),
/// 				},
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
/// import com.pulumi.azurenative.app.ContainerApp;
/// import com.pulumi.azurenative.app.ContainerAppArgs;
/// import com.pulumi.azurenative.app.inputs.ConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.IngressArgs;
/// import com.pulumi.azurenative.app.inputs.TemplateArgs;
/// import com.pulumi.azurenative.app.inputs.ScaleArgs;
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
///         var containerApp = new ContainerApp("containerApp", ContainerAppArgs.builder()
///             .configuration(ConfigurationArgs.builder()
///                 .activeRevisionsMode("Single")
///                 .ingress(IngressArgs.builder()
///                     .allowInsecure(true)
///                     .external(true)
///                     .targetPort(80)
///                     .build())
///                 .build())
///             .containerAppName("testcontainerAppKind")
///             .kind("workflowapp")
///             .location("East Us")
///             .managedBy("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Web/sites/testcontainerAppKind")
///             .managedEnvironmentId("/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/testmanagedenv3")
///             .resourceGroupName("rg")
///             .template(TemplateArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("default/logicapps-base:latest")
///                     .name("logicapps-container")
///                     .resources(ContainerResourcesArgs.builder()
///                         .cpu(1.0)
///                         .memory("2.0Gi")
///                         .build())
///                     .build())
///                 .scale(ScaleArgs.builder()
///                     .cooldownPeriod(350)
///                     .maxReplicas(30)
///                     .minReplicas(1)
///                     .pollingInterval(35)
///                     .build())
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
/// const containerApp = new azure_native.app.ContainerApp("containerApp", {
///     configuration: {
///         activeRevisionsMode: azure_native.app.ActiveRevisionsMode.Single,
///         ingress: {
///             allowInsecure: true,
///             external: true,
///             targetPort: 80,
///         },
///     },
///     containerAppName: "testcontainerAppKind",
///     kind: azure_native.app.Kind.Workflowapp,
///     location: "East Us",
///     managedBy: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Web/sites/testcontainerAppKind",
///     managedEnvironmentId: "/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/testmanagedenv3",
///     resourceGroupName: "rg",
///     template: {
///         containers: [{
///             image: "default/logicapps-base:latest",
///             name: "logicapps-container",
///             resources: {
///                 cpu: 1,
///                 memory: "2.0Gi",
///             },
///         }],
///         scale: {
///             cooldownPeriod: 350,
///             maxReplicas: 30,
///             minReplicas: 1,
///             pollingInterval: 35,
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_app = azure_native.app.ContainerApp("containerApp",
///     configuration={
///         "active_revisions_mode": azure_native.app.ActiveRevisionsMode.SINGLE,
///         "ingress": {
///             "allow_insecure": True,
///             "external": True,
///             "target_port": 80,
///         },
///     },
///     container_app_name="testcontainerAppKind",
///     kind=azure_native.app.Kind.WORKFLOWAPP,
///     location="East Us",
///     managed_by="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Web/sites/testcontainerAppKind",
///     managed_environment_id="/subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/testmanagedenv3",
///     resource_group_name="rg",
///     template={
///         "containers": [{
///             "image": "default/logicapps-base:latest",
///             "name": "logicapps-container",
///             "resources": {
///                 "cpu": 1,
///                 "memory": "2.0Gi",
///             },
///         }],
///         "scale": {
///             "cooldown_period": 350,
///             "max_replicas": 30,
///             "min_replicas": 1,
///             "polling_interval": 35,
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   containerApp:
///     type: azure-native:app:ContainerApp
///     properties:
///       configuration:
///         activeRevisionsMode: Single
///         ingress:
///           allowInsecure: true
///           external: true
///           targetPort: 80
///       containerAppName: testcontainerAppKind
///       kind: workflowapp
///       location: East Us
///       managedBy: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.Web/sites/testcontainerAppKind
///       managedEnvironmentId: /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/testmanagedenv3
///       resourceGroupName: rg
///       template:
///         containers:
///           - image: default/logicapps-base:latest
///             name: logicapps-container
///             resources:
///               cpu: 1
///               memory: 2.0Gi
///         scale:
///           cooldownPeriod: 350
///           maxReplicas: 30
///           minReplicas: 1
///           pollingInterval: 35
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update App On A Connected Environment
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerApp = new AzureNative.App.ContainerApp("containerApp", new()
///     {
///         Configuration = new AzureNative.App.Inputs.ConfigurationArgs
///         {
///             Dapr = new AzureNative.App.Inputs.DaprArgs
///             {
///                 AppPort = 3000,
///                 AppProtocol = AzureNative.App.AppProtocol.Http,
///                 EnableApiLogging = true,
///                 Enabled = true,
///                 HttpMaxRequestSize = 10,
///                 HttpReadBufferSize = 30,
///                 LogLevel = AzureNative.App.LogLevel.Debug,
///             },
///             Ingress = new AzureNative.App.Inputs.IngressArgs
///             {
///                 AdditionalPortMappings = new[]
///                 {
///                     new AzureNative.App.Inputs.IngressPortMappingArgs
///                     {
///                         External = true,
///                         TargetPort = 1234,
///                     },
///                     new AzureNative.App.Inputs.IngressPortMappingArgs
///                     {
///                         ExposedPort = 3456,
///                         External = false,
///                         TargetPort = 2345,
///                     },
///                 },
///                 ClientCertificateMode = AzureNative.App.IngressClientCertificateMode.Accept,
///                 CorsPolicy = new AzureNative.App.Inputs.CorsPolicyArgs
///                 {
///                     AllowCredentials = true,
///                     AllowedHeaders = new[]
///                     {
///                         "HEADER1",
///                         "HEADER2",
///                     },
///                     AllowedMethods = new[]
///                     {
///                         "GET",
///                         "POST",
///                     },
///                     AllowedOrigins = new[]
///                     {
///                         "https://a.test.com",
///                         "https://b.test.com",
///                     },
///                     ExposeHeaders = new[]
///                     {
///                         "HEADER3",
///                         "HEADER4",
///                     },
///                     MaxAge = 1234,
///                 },
///                 CustomDomains = new[]
///                 {
///                     new AzureNative.App.Inputs.CustomDomainArgs
///                     {
///                         BindingType = AzureNative.App.BindingType.SniEnabled,
///                         CertificateId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com",
///                         Name = "www.my-name.com",
///                     },
///                     new AzureNative.App.Inputs.CustomDomainArgs
///                     {
///                         BindingType = AzureNative.App.BindingType.SniEnabled,
///                         CertificateId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com",
///                         Name = "www.my-other-name.com",
///                     },
///                 },
///                 External = true,
///                 IpSecurityRestrictions = new[]
///                 {
///                     new AzureNative.App.Inputs.IpSecurityRestrictionRuleArgs
///                     {
///                         Action = AzureNative.App.Action.Allow,
///                         Description = "Allowing all IP's within the subnet below to access containerapp",
///                         IpAddressRange = "192.168.1.1/32",
///                         Name = "Allow work IP A subnet",
///                     },
///                     new AzureNative.App.Inputs.IpSecurityRestrictionRuleArgs
///                     {
///                         Action = AzureNative.App.Action.Allow,
///                         Description = "Allowing all IP's within the subnet below to access containerapp",
///                         IpAddressRange = "192.168.1.1/8",
///                         Name = "Allow work IP B subnet",
///                     },
///                 },
///                 StickySessions = new AzureNative.App.Inputs.IngressStickySessionsArgs
///                 {
///                     Affinity = AzureNative.App.Affinity.Sticky,
///                 },
///                 TargetPort = 3000,
///                 Traffic = new[]
///                 {
///                     new AzureNative.App.Inputs.TrafficWeightArgs
///                     {
///                         Label = "production",
///                         RevisionName = "testcontainerApp0-ab1234",
///                         Weight = 100,
///                     },
///                 },
///             },
///             MaxInactiveRevisions = 10,
///             RevisionTransitionThreshold = 100,
///             Runtime = new AzureNative.App.Inputs.RuntimeArgs
///             {
///                 Dotnet = new AzureNative.App.Inputs.RuntimeDotnetArgs
///                 {
///                     AutoConfigureDataProtection = true,
///                 },
///                 Java = new AzureNative.App.Inputs.RuntimeJavaArgs
///                 {
///                     EnableMetrics = true,
///                     JavaAgent = new AzureNative.App.Inputs.RuntimeJavaAgentArgs
///                     {
///                         Enabled = true,
///                         Logging = new AzureNative.App.Inputs.RuntimeLoggingArgs
///                         {
///                             LoggerSettings = new[]
///                             {
///                                 new AzureNative.App.Inputs.LoggerSettingArgs
///                                 {
///                                     Level = AzureNative.App.Level.Debug,
///                                     Logger = "org.springframework.boot",
///                                 },
///                             },
///                         },
///                     },
///                 },
///             },
///         },
///         ContainerAppName = "testcontainerApp0",
///         EnvironmentId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube",
///         ExtendedLocation = new AzureNative.App.Inputs.ExtendedLocationArgs
///         {
///             Name = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///             Type = AzureNative.App.ExtendedLocationTypes.CustomLocation,
///         },
///         Location = "East US",
///         ResourceGroupName = "rg",
///         Template = new AzureNative.App.Inputs.TemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.ContainerArgs
///                 {
///                     Image = "repo/testcontainerApp0:v1",
///                     Name = "testcontainerApp0",
///                     Probes = new[]
///                     {
///                         new AzureNative.App.Inputs.ContainerAppProbeArgs
///                         {
///                             HttpGet = new AzureNative.App.Inputs.ContainerAppProbeHttpGetArgs
///                             {
///                                 HttpHeaders = new[]
///                                 {
///                                     new AzureNative.App.Inputs.ContainerAppProbeHttpHeadersArgs
///                                     {
///                                         Name = "Custom-Header",
///                                         Value = "Awesome",
///                                     },
///                                 },
///                                 Path = "/health",
///                                 Port = 8080,
///                             },
///                             InitialDelaySeconds = 3,
///                             PeriodSeconds = 3,
///                             Type = AzureNative.App.Type.Liveness,
///                         },
///                     },
///                 },
///             },
///             InitContainers = new[]
///             {
///                 new AzureNative.App.Inputs.InitContainerArgs
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
///                     Image = "repo/testcontainerApp0:v4",
///                     Name = "testinitcontainerApp0",
///                     Resources = new AzureNative.App.Inputs.ContainerResourcesArgs
///                     {
///                         Cpu = 0.2,
///                         Memory = "100Mi",
///                     },
///                 },
///             },
///             Scale = new AzureNative.App.Inputs.ScaleArgs
///             {
///                 CooldownPeriod = 350,
///                 MaxReplicas = 5,
///                 MinReplicas = 1,
///                 PollingInterval = 35,
///                 Rules = new[]
///                 {
///                     new AzureNative.App.Inputs.ScaleRuleArgs
///                     {
///                         Custom = new AzureNative.App.Inputs.CustomScaleRuleArgs
///                         {
///                             Metadata =
///                             {
///                                 { "concurrentRequests", "50" },
///                             },
///                             Type = "http",
///                         },
///                         Name = "httpscalingrule",
///                     },
///                 },
///             },
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerApp(ctx, "containerApp", &app.ContainerAppArgs{
/// 			Configuration: &app.ConfigurationArgs{
/// 				Dapr: &app.DaprArgs{
/// 					AppPort:            pulumi.Int(3000),
/// 					AppProtocol:        pulumi.String(app.AppProtocolHttp),
/// 					EnableApiLogging:   pulumi.Bool(true),
/// 					Enabled:            pulumi.Bool(true),
/// 					HttpMaxRequestSize: pulumi.Int(10),
/// 					HttpReadBufferSize: pulumi.Int(30),
/// 					LogLevel:           pulumi.String(app.LogLevelDebug),
/// 				},
/// 				Ingress: &app.IngressArgs{
/// 					AdditionalPortMappings: app.IngressPortMappingArray{
/// 						&app.IngressPortMappingArgs{
/// 							External:   pulumi.Bool(true),
/// 							TargetPort: pulumi.Int(1234),
/// 						},
/// 						&app.IngressPortMappingArgs{
/// 							ExposedPort: pulumi.Int(3456),
/// 							External:    pulumi.Bool(false),
/// 							TargetPort:  pulumi.Int(2345),
/// 						},
/// 					},
/// 					ClientCertificateMode: pulumi.String(app.IngressClientCertificateModeAccept),
/// 					CorsPolicy: &app.CorsPolicyArgs{
/// 						AllowCredentials: pulumi.Bool(true),
/// 						AllowedHeaders: pulumi.StringArray{
/// 							pulumi.String("HEADER1"),
/// 							pulumi.String("HEADER2"),
/// 						},
/// 						AllowedMethods: pulumi.StringArray{
/// 							pulumi.String("GET"),
/// 							pulumi.String("POST"),
/// 						},
/// 						AllowedOrigins: pulumi.StringArray{
/// 							pulumi.String("https://a.test.com"),
/// 							pulumi.String("https://b.test.com"),
/// 						},
/// 						ExposeHeaders: pulumi.StringArray{
/// 							pulumi.String("HEADER3"),
/// 							pulumi.String("HEADER4"),
/// 						},
/// 						MaxAge: pulumi.Int(1234),
/// 					},
/// 					CustomDomains: app.CustomDomainArray{
/// 						&app.CustomDomainArgs{
/// 							BindingType:   pulumi.String(app.BindingTypeSniEnabled),
/// 							CertificateId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com"),
/// 							Name:          pulumi.String("www.my-name.com"),
/// 						},
/// 						&app.CustomDomainArgs{
/// 							BindingType:   pulumi.String(app.BindingTypeSniEnabled),
/// 							CertificateId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com"),
/// 							Name:          pulumi.String("www.my-other-name.com"),
/// 						},
/// 					},
/// 					External: pulumi.Bool(true),
/// 					IpSecurityRestrictions: app.IpSecurityRestrictionRuleArray{
/// 						&app.IpSecurityRestrictionRuleArgs{
/// 							Action:         pulumi.String(app.ActionAllow),
/// 							Description:    pulumi.String("Allowing all IP's within the subnet below to access containerapp"),
/// 							IpAddressRange: pulumi.String("192.168.1.1/32"),
/// 							Name:           pulumi.String("Allow work IP A subnet"),
/// 						},
/// 						&app.IpSecurityRestrictionRuleArgs{
/// 							Action:         pulumi.String(app.ActionAllow),
/// 							Description:    pulumi.String("Allowing all IP's within the subnet below to access containerapp"),
/// 							IpAddressRange: pulumi.String("192.168.1.1/8"),
/// 							Name:           pulumi.String("Allow work IP B subnet"),
/// 						},
/// 					},
/// 					StickySessions: &app.IngressStickySessionsArgs{
/// 						Affinity: pulumi.String(app.AffinitySticky),
/// 					},
/// 					TargetPort: pulumi.Int(3000),
/// 					Traffic: app.TrafficWeightArray{
/// 						&app.TrafficWeightArgs{
/// 							Label:        pulumi.String("production"),
/// 							RevisionName: pulumi.String("testcontainerApp0-ab1234"),
/// 							Weight:       pulumi.Int(100),
/// 						},
/// 					},
/// 				},
/// 				MaxInactiveRevisions:        pulumi.Int(10),
/// 				RevisionTransitionThreshold: pulumi.Int(100),
/// 				Runtime: &app.RuntimeArgs{
/// 					Dotnet: &app.RuntimeDotnetArgs{
/// 						AutoConfigureDataProtection: pulumi.Bool(true),
/// 					},
/// 					Java: &app.RuntimeJavaArgs{
/// 						EnableMetrics: pulumi.Bool(true),
/// 						JavaAgent: &app.RuntimeJavaAgentArgs{
/// 							Enabled: pulumi.Bool(true),
/// 							Logging: &app.RuntimeLoggingArgs{
/// 								LoggerSettings: app.LoggerSettingArray{
/// 									&app.LoggerSettingArgs{
/// 										Level:  pulumi.String(app.LevelDebug),
/// 										Logger: pulumi.String("org.springframework.boot"),
/// 									},
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ContainerAppName: pulumi.String("testcontainerApp0"),
/// 			EnvironmentId:    pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube"),
/// 			ExtendedLocation: &app.ExtendedLocationArgs{
/// 				Name: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation"),
/// 				Type: pulumi.String(app.ExtendedLocationTypesCustomLocation),
/// 			},
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Template: &app.TemplateArgs{
/// 				Containers: app.ContainerArray{
/// 					&app.ContainerArgs{
/// 						Image: pulumi.String("repo/testcontainerApp0:v1"),
/// 						Name:  pulumi.String("testcontainerApp0"),
/// 						Probes: app.ContainerAppProbeArray{
/// 							&app.ContainerAppProbeArgs{
/// 								HttpGet: &app.ContainerAppProbeHttpGetArgs{
/// 									HttpHeaders: app.ContainerAppProbeHttpHeadersArray{
/// 										&app.ContainerAppProbeHttpHeadersArgs{
/// 											Name:  pulumi.String("Custom-Header"),
/// 											Value: pulumi.String("Awesome"),
/// 										},
/// 									},
/// 									Path: pulumi.String("/health"),
/// 									Port: pulumi.Int(8080),
/// 								},
/// 								InitialDelaySeconds: pulumi.Int(3),
/// 								PeriodSeconds:       pulumi.Int(3),
/// 								Type:                pulumi.String(app.TypeLiveness),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				InitContainers: app.InitContainerArray{
/// 					&app.InitContainerArgs{
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("-c"),
/// 							pulumi.String("while true; do echo hello; sleep 10;done"),
/// 						},
/// 						Command: pulumi.StringArray{
/// 							pulumi.String("/bin/sh"),
/// 						},
/// 						Image: pulumi.String("repo/testcontainerApp0:v4"),
/// 						Name:  pulumi.String("testinitcontainerApp0"),
/// 						Resources: &app.ContainerResourcesArgs{
/// 							Cpu:    pulumi.Float64(0.2),
/// 							Memory: pulumi.String("100Mi"),
/// 						},
/// 					},
/// 				},
/// 				Scale: &app.ScaleArgs{
/// 					CooldownPeriod:  pulumi.Int(350),
/// 					MaxReplicas:     pulumi.Int(5),
/// 					MinReplicas:     pulumi.Int(1),
/// 					PollingInterval: pulumi.Int(35),
/// 					Rules: app.ScaleRuleArray{
/// 						&app.ScaleRuleArgs{
/// 							Custom: &app.CustomScaleRuleArgs{
/// 								Metadata: pulumi.StringMap{
/// 									"concurrentRequests": pulumi.String("50"),
/// 								},
/// 								Type: pulumi.String("http"),
/// 							},
/// 							Name: pulumi.String("httpscalingrule"),
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.app.ContainerApp;
/// import com.pulumi.azurenative.app.ContainerAppArgs;
/// import com.pulumi.azurenative.app.inputs.ConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprArgs;
/// import com.pulumi.azurenative.app.inputs.IngressArgs;
/// import com.pulumi.azurenative.app.inputs.CorsPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.IngressStickySessionsArgs;
/// import com.pulumi.azurenative.app.inputs.RuntimeArgs;
/// import com.pulumi.azurenative.app.inputs.RuntimeDotnetArgs;
/// import com.pulumi.azurenative.app.inputs.RuntimeJavaArgs;
/// import com.pulumi.azurenative.app.inputs.RuntimeJavaAgentArgs;
/// import com.pulumi.azurenative.app.inputs.RuntimeLoggingArgs;
/// import com.pulumi.azurenative.app.inputs.ExtendedLocationArgs;
/// import com.pulumi.azurenative.app.inputs.TemplateArgs;
/// import com.pulumi.azurenative.app.inputs.ScaleArgs;
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
///         var containerApp = new ContainerApp("containerApp", ContainerAppArgs.builder()
///             .configuration(ConfigurationArgs.builder()
///                 .dapr(DaprArgs.builder()
///                     .appPort(3000)
///                     .appProtocol("http")
///                     .enableApiLogging(true)
///                     .enabled(true)
///                     .httpMaxRequestSize(10)
///                     .httpReadBufferSize(30)
///                     .logLevel("debug")
///                     .build())
///                 .ingress(IngressArgs.builder()
///                     .additionalPortMappings(
///                         IngressPortMappingArgs.builder()
///                             .external(true)
///                             .targetPort(1234)
///                             .build(),
///                         IngressPortMappingArgs.builder()
///                             .exposedPort(3456)
///                             .external(false)
///                             .targetPort(2345)
///                             .build())
///                     .clientCertificateMode("accept")
///                     .corsPolicy(CorsPolicyArgs.builder()
///                         .allowCredentials(true)
///                         .allowedHeaders(
///                             "HEADER1",
///                             "HEADER2")
///                         .allowedMethods(
///                             "GET",
///                             "POST")
///                         .allowedOrigins(
///                             "https://a.test.com",
///                             "https://b.test.com")
///                         .exposeHeaders(
///                             "HEADER3",
///                             "HEADER4")
///                         .maxAge(1234)
///                         .build())
///                     .customDomains(
///                         CustomDomainArgs.builder()
///                             .bindingType("SniEnabled")
///                             .certificateId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com")
///                             .name("www.my-name.com")
///                             .build(),
///                         CustomDomainArgs.builder()
///                             .bindingType("SniEnabled")
///                             .certificateId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com")
///                             .name("www.my-other-name.com")
///                             .build())
///                     .external(true)
///                     .ipSecurityRestrictions(
///                         IpSecurityRestrictionRuleArgs.builder()
///                             .action("Allow")
///                             .description("Allowing all IP's within the subnet below to access containerapp")
///                             .ipAddressRange("192.168.1.1/32")
///                             .name("Allow work IP A subnet")
///                             .build(),
///                         IpSecurityRestrictionRuleArgs.builder()
///                             .action("Allow")
///                             .description("Allowing all IP's within the subnet below to access containerapp")
///                             .ipAddressRange("192.168.1.1/8")
///                             .name("Allow work IP B subnet")
///                             .build())
///                     .stickySessions(IngressStickySessionsArgs.builder()
///                         .affinity("sticky")
///                         .build())
///                     .targetPort(3000)
///                     .traffic(TrafficWeightArgs.builder()
///                         .label("production")
///                         .revisionName("testcontainerApp0-ab1234")
///                         .weight(100)
///                         .build())
///                     .build())
///                 .maxInactiveRevisions(10)
///                 .revisionTransitionThreshold(100)
///                 .runtime(RuntimeArgs.builder()
///                     .dotnet(RuntimeDotnetArgs.builder()
///                         .autoConfigureDataProtection(true)
///                         .build())
///                     .java(RuntimeJavaArgs.builder()
///                         .enableMetrics(true)
///                         .javaAgent(RuntimeJavaAgentArgs.builder()
///                             .enabled(true)
///                             .logging(RuntimeLoggingArgs.builder()
///                                 .loggerSettings(LoggerSettingArgs.builder()
///                                     .level("debug")
///                                     .logger("org.springframework.boot")
///                                     .build())
///                                 .build())
///                             .build())
///                         .build())
///                     .build())
///                 .build())
///             .containerAppName("testcontainerApp0")
///             .environmentId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube")
///             .extendedLocation(ExtendedLocationArgs.builder()
///                 .name("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation")
///                 .type("CustomLocation")
///                 .build())
///             .location("East US")
///             .resourceGroupName("rg")
///             .template(TemplateArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("repo/testcontainerApp0:v1")
///                     .name("testcontainerApp0")
///                     .probes(ContainerAppProbeArgs.builder()
///                         .httpGet(ContainerAppProbeHttpGetArgs.builder()
///                             .httpHeaders(ContainerAppProbeHttpHeadersArgs.builder()
///                                 .name("Custom-Header")
///                                 .value("Awesome")
///                                 .build())
///                             .path("/health")
///                             .port(8080)
///                             .build())
///                         .initialDelaySeconds(3)
///                         .periodSeconds(3)
///                         .type("Liveness")
///                         .build())
///                     .build())
///                 .initContainers(InitContainerArgs.builder()
///                     .args(
///                         "-c",
///                         "while true; do echo hello; sleep 10;done")
///                     .command("/bin/sh")
///                     .image("repo/testcontainerApp0:v4")
///                     .name("testinitcontainerApp0")
///                     .resources(ContainerResourcesArgs.builder()
///                         .cpu(0.2)
///                         .memory("100Mi")
///                         .build())
///                     .build())
///                 .scale(ScaleArgs.builder()
///                     .cooldownPeriod(350)
///                     .maxReplicas(5)
///                     .minReplicas(1)
///                     .pollingInterval(35)
///                     .rules(ScaleRuleArgs.builder()
///                         .custom(CustomScaleRuleArgs.builder()
///                             .metadata(Map.of("concurrentRequests", "50"))
///                             .type("http")
///                             .build())
///                         .name("httpscalingrule")
///                         .build())
///                     .build())
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
/// const containerApp = new azure_native.app.ContainerApp("containerApp", {
///     configuration: {
///         dapr: {
///             appPort: 3000,
///             appProtocol: azure_native.app.AppProtocol.Http,
///             enableApiLogging: true,
///             enabled: true,
///             httpMaxRequestSize: 10,
///             httpReadBufferSize: 30,
///             logLevel: azure_native.app.LogLevel.Debug,
///         },
///         ingress: {
///             additionalPortMappings: [
///                 {
///                     external: true,
///                     targetPort: 1234,
///                 },
///                 {
///                     exposedPort: 3456,
///                     external: false,
///                     targetPort: 2345,
///                 },
///             ],
///             clientCertificateMode: azure_native.app.IngressClientCertificateMode.Accept,
///             corsPolicy: {
///                 allowCredentials: true,
///                 allowedHeaders: [
///                     "HEADER1",
///                     "HEADER2",
///                 ],
///                 allowedMethods: [
///                     "GET",
///                     "POST",
///                 ],
///                 allowedOrigins: [
///                     "https://a.test.com",
///                     "https://b.test.com",
///                 ],
///                 exposeHeaders: [
///                     "HEADER3",
///                     "HEADER4",
///                 ],
///                 maxAge: 1234,
///             },
///             customDomains: [
///                 {
///                     bindingType: azure_native.app.BindingType.SniEnabled,
///                     certificateId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com",
///                     name: "www.my-name.com",
///                 },
///                 {
///                     bindingType: azure_native.app.BindingType.SniEnabled,
///                     certificateId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com",
///                     name: "www.my-other-name.com",
///                 },
///             ],
///             external: true,
///             ipSecurityRestrictions: [
///                 {
///                     action: azure_native.app.Action.Allow,
///                     description: "Allowing all IP's within the subnet below to access containerapp",
///                     ipAddressRange: "192.168.1.1/32",
///                     name: "Allow work IP A subnet",
///                 },
///                 {
///                     action: azure_native.app.Action.Allow,
///                     description: "Allowing all IP's within the subnet below to access containerapp",
///                     ipAddressRange: "192.168.1.1/8",
///                     name: "Allow work IP B subnet",
///                 },
///             ],
///             stickySessions: {
///                 affinity: azure_native.app.Affinity.Sticky,
///             },
///             targetPort: 3000,
///             traffic: [{
///                 label: "production",
///                 revisionName: "testcontainerApp0-ab1234",
///                 weight: 100,
///             }],
///         },
///         maxInactiveRevisions: 10,
///         revisionTransitionThreshold: 100,
///         runtime: {
///             dotnet: {
///                 autoConfigureDataProtection: true,
///             },
///             java: {
///                 enableMetrics: true,
///                 javaAgent: {
///                     enabled: true,
///                     logging: {
///                         loggerSettings: [{
///                             level: azure_native.app.Level.Debug,
///                             logger: "org.springframework.boot",
///                         }],
///                     },
///                 },
///             },
///         },
///     },
///     containerAppName: "testcontainerApp0",
///     environmentId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube",
///     extendedLocation: {
///         name: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///         type: azure_native.app.ExtendedLocationTypes.CustomLocation,
///     },
///     location: "East US",
///     resourceGroupName: "rg",
///     template: {
///         containers: [{
///             image: "repo/testcontainerApp0:v1",
///             name: "testcontainerApp0",
///             probes: [{
///                 httpGet: {
///                     httpHeaders: [{
///                         name: "Custom-Header",
///                         value: "Awesome",
///                     }],
///                     path: "/health",
///                     port: 8080,
///                 },
///                 initialDelaySeconds: 3,
///                 periodSeconds: 3,
///                 type: azure_native.app.Type.Liveness,
///             }],
///         }],
///         initContainers: [{
///             args: [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             command: ["/bin/sh"],
///             image: "repo/testcontainerApp0:v4",
///             name: "testinitcontainerApp0",
///             resources: {
///                 cpu: 0.2,
///                 memory: "100Mi",
///             },
///         }],
///         scale: {
///             cooldownPeriod: 350,
///             maxReplicas: 5,
///             minReplicas: 1,
///             pollingInterval: 35,
///             rules: [{
///                 custom: {
///                     metadata: {
///                         concurrentRequests: "50",
///                     },
///                     type: "http",
///                 },
///                 name: "httpscalingrule",
///             }],
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_app = azure_native.app.ContainerApp("containerApp",
///     configuration={
///         "dapr": {
///             "app_port": 3000,
///             "app_protocol": azure_native.app.AppProtocol.HTTP,
///             "enable_api_logging": True,
///             "enabled": True,
///             "http_max_request_size": 10,
///             "http_read_buffer_size": 30,
///             "log_level": azure_native.app.LogLevel.DEBUG,
///         },
///         "ingress": {
///             "additional_port_mappings": [
///                 {
///                     "external": True,
///                     "target_port": 1234,
///                 },
///                 {
///                     "exposed_port": 3456,
///                     "external": False,
///                     "target_port": 2345,
///                 },
///             ],
///             "client_certificate_mode": azure_native.app.IngressClientCertificateMode.ACCEPT,
///             "cors_policy": {
///                 "allow_credentials": True,
///                 "allowed_headers": [
///                     "HEADER1",
///                     "HEADER2",
///                 ],
///                 "allowed_methods": [
///                     "GET",
///                     "POST",
///                 ],
///                 "allowed_origins": [
///                     "https://a.test.com",
///                     "https://b.test.com",
///                 ],
///                 "expose_headers": [
///                     "HEADER3",
///                     "HEADER4",
///                 ],
///                 "max_age": 1234,
///             },
///             "custom_domains": [
///                 {
///                     "binding_type": azure_native.app.BindingType.SNI_ENABLED,
///                     "certificate_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com",
///                     "name": "www.my-name.com",
///                 },
///                 {
///                     "binding_type": azure_native.app.BindingType.SNI_ENABLED,
///                     "certificate_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com",
///                     "name": "www.my-other-name.com",
///                 },
///             ],
///             "external": True,
///             "ip_security_restrictions": [
///                 {
///                     "action": azure_native.app.Action.ALLOW,
///                     "description": "Allowing all IP's within the subnet below to access containerapp",
///                     "ip_address_range": "192.168.1.1/32",
///                     "name": "Allow work IP A subnet",
///                 },
///                 {
///                     "action": azure_native.app.Action.ALLOW,
///                     "description": "Allowing all IP's within the subnet below to access containerapp",
///                     "ip_address_range": "192.168.1.1/8",
///                     "name": "Allow work IP B subnet",
///                 },
///             ],
///             "sticky_sessions": {
///                 "affinity": azure_native.app.Affinity.STICKY,
///             },
///             "target_port": 3000,
///             "traffic": [{
///                 "label": "production",
///                 "revision_name": "testcontainerApp0-ab1234",
///                 "weight": 100,
///             }],
///         },
///         "max_inactive_revisions": 10,
///         "revision_transition_threshold": 100,
///         "runtime": {
///             "dotnet": {
///                 "auto_configure_data_protection": True,
///             },
///             "java": {
///                 "enable_metrics": True,
///                 "java_agent": {
///                     "enabled": True,
///                     "logging": {
///                         "logger_settings": [{
///                             "level": azure_native.app.Level.DEBUG,
///                             "logger": "org.springframework.boot",
///                         }],
///                     },
///                 },
///             },
///         },
///     },
///     container_app_name="testcontainerApp0",
///     environment_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube",
///     extended_location={
///         "name": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation",
///         "type": azure_native.app.ExtendedLocationTypes.CUSTOM_LOCATION,
///     },
///     location="East US",
///     resource_group_name="rg",
///     template={
///         "containers": [{
///             "image": "repo/testcontainerApp0:v1",
///             "name": "testcontainerApp0",
///             "probes": [{
///                 "http_get": {
///                     "http_headers": [{
///                         "name": "Custom-Header",
///                         "value": "Awesome",
///                     }],
///                     "path": "/health",
///                     "port": 8080,
///                 },
///                 "initial_delay_seconds": 3,
///                 "period_seconds": 3,
///                 "type": azure_native.app.Type.LIVENESS,
///             }],
///         }],
///         "init_containers": [{
///             "args": [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             "command": ["/bin/sh"],
///             "image": "repo/testcontainerApp0:v4",
///             "name": "testinitcontainerApp0",
///             "resources": {
///                 "cpu": 0.2,
///                 "memory": "100Mi",
///             },
///         }],
///         "scale": {
///             "cooldown_period": 350,
///             "max_replicas": 5,
///             "min_replicas": 1,
///             "polling_interval": 35,
///             "rules": [{
///                 "custom": {
///                     "metadata": {
///                         "concurrentRequests": "50",
///                     },
///                     "type": "http",
///                 },
///                 "name": "httpscalingrule",
///             }],
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   containerApp:
///     type: azure-native:app:ContainerApp
///     properties:
///       configuration:
///         dapr:
///           appPort: 3000
///           appProtocol: http
///           enableApiLogging: true
///           enabled: true
///           httpMaxRequestSize: 10
///           httpReadBufferSize: 30
///           logLevel: debug
///         ingress:
///           additionalPortMappings:
///             - external: true
///               targetPort: 1234
///             - exposedPort: 3456
///               external: false
///               targetPort: 2345
///           clientCertificateMode: accept
///           corsPolicy:
///             allowCredentials: true
///             allowedHeaders:
///               - HEADER1
///               - HEADER2
///             allowedMethods:
///               - GET
///               - POST
///             allowedOrigins:
///               - https://a.test.com
///               - https://b.test.com
///             exposeHeaders:
///               - HEADER3
///               - HEADER4
///             maxAge: 1234
///           customDomains:
///             - bindingType: SniEnabled
///               certificateId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com
///               name: www.my-name.com
///             - bindingType: SniEnabled
///               certificateId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com
///               name: www.my-other-name.com
///           external: true
///           ipSecurityRestrictions:
///             - action: Allow
///               description: Allowing all IP's within the subnet below to access containerapp
///               ipAddressRange: 192.168.1.1/32
///               name: Allow work IP A subnet
///             - action: Allow
///               description: Allowing all IP's within the subnet below to access containerapp
///               ipAddressRange: 192.168.1.1/8
///               name: Allow work IP B subnet
///           stickySessions:
///             affinity: sticky
///           targetPort: 3000
///           traffic:
///             - label: production
///               revisionName: testcontainerApp0-ab1234
///               weight: 100
///         maxInactiveRevisions: 10
///         revisionTransitionThreshold: 100
///         runtime:
///           dotnet:
///             autoConfigureDataProtection: true
///           java:
///             enableMetrics: true
///             javaAgent:
///               enabled: true
///               logging:
///                 loggerSettings:
///                   - level: debug
///                     logger: org.springframework.boot
///       containerAppName: testcontainerApp0
///       environmentId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/connectedEnvironments/demokube
///       extendedLocation:
///         name: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.ExtendedLocation/customLocations/testcustomlocation
///         type: CustomLocation
///       location: East US
///       resourceGroupName: rg
///       template:
///         containers:
///           - image: repo/testcontainerApp0:v1
///             name: testcontainerApp0
///             probes:
///               - httpGet:
///                   httpHeaders:
///                     - name: Custom-Header
///                       value: Awesome
///                   path: /health
///                   port: 8080
///                 initialDelaySeconds: 3
///                 periodSeconds: 3
///                 type: Liveness
///         initContainers:
///           - args:
///               - -c
///               - while true; do echo hello; sleep 10;done
///             command:
///               - /bin/sh
///             image: repo/testcontainerApp0:v4
///             name: testinitcontainerApp0
///             resources:
///               cpu: 0.2
///               memory: 100Mi
///         scale:
///           cooldownPeriod: 350
///           maxReplicas: 5
///           minReplicas: 1
///           pollingInterval: 35
///           rules:
///             - custom:
///                 metadata:
///                   concurrentRequests: '50'
///                 type: http
///               name: httpscalingrule
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update ManagedBy App
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerApp = new AzureNative.App.ContainerApp("containerApp", new()
///     {
///         Configuration = new AzureNative.App.Inputs.ConfigurationArgs
///         {
///             Ingress = new AzureNative.App.Inputs.IngressArgs
///             {
///                 ExposedPort = 4000,
///                 External = true,
///                 TargetPort = 3000,
///                 Traffic = new[]
///                 {
///                     new AzureNative.App.Inputs.TrafficWeightArgs
///                     {
///                         RevisionName = "testcontainerAppManagedBy-ab1234",
///                         Weight = 100,
///                     },
///                 },
///                 Transport = AzureNative.App.IngressTransportMethod.Tcp,
///             },
///         },
///         ContainerAppName = "testcontainerAppManagedBy",
///         EnvironmentId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///         Location = "East US",
///         ManagedBy = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.AppPlatform/Spring/springapp",
///         ResourceGroupName = "rg",
///         Template = new AzureNative.App.Inputs.TemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.ContainerArgs
///                 {
///                     Image = "repo/testcontainerAppManagedBy:v1",
///                     Name = "testcontainerAppManagedBy",
///                     Probes = new[]
///                     {
///                         new AzureNative.App.Inputs.ContainerAppProbeArgs
///                         {
///                             InitialDelaySeconds = 3,
///                             PeriodSeconds = 3,
///                             TcpSocket = new AzureNative.App.Inputs.ContainerAppProbeTcpSocketArgs
///                             {
///                                 Port = 8080,
///                             },
///                             Type = AzureNative.App.Type.Liveness,
///                         },
///                     },
///                 },
///             },
///             Scale = new AzureNative.App.Inputs.ScaleArgs
///             {
///                 CooldownPeriod = 350,
///                 MaxReplicas = 5,
///                 MinReplicas = 1,
///                 PollingInterval = 35,
///                 Rules = new[]
///                 {
///                     new AzureNative.App.Inputs.ScaleRuleArgs
///                     {
///                         Name = "tcpscalingrule",
///                         Tcp = new AzureNative.App.Inputs.TcpScaleRuleArgs
///                         {
///                             Metadata =
///                             {
///                                 { "concurrentConnections", "50" },
///                             },
///                         },
///                     },
///                 },
///             },
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerApp(ctx, "containerApp", &app.ContainerAppArgs{
/// 			Configuration: &app.ConfigurationArgs{
/// 				Ingress: &app.IngressArgs{
/// 					ExposedPort: pulumi.Int(4000),
/// 					External:    pulumi.Bool(true),
/// 					TargetPort:  pulumi.Int(3000),
/// 					Traffic: app.TrafficWeightArray{
/// 						&app.TrafficWeightArgs{
/// 							RevisionName: pulumi.String("testcontainerAppManagedBy-ab1234"),
/// 							Weight:       pulumi.Int(100),
/// 						},
/// 					},
/// 					Transport: pulumi.String(app.IngressTransportMethodTcp),
/// 				},
/// 			},
/// 			ContainerAppName:  pulumi.String("testcontainerAppManagedBy"),
/// 			EnvironmentId:     pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube"),
/// 			Location:          pulumi.String("East US"),
/// 			ManagedBy:         pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.AppPlatform/Spring/springapp"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Template: &app.TemplateArgs{
/// 				Containers: app.ContainerArray{
/// 					&app.ContainerArgs{
/// 						Image: pulumi.String("repo/testcontainerAppManagedBy:v1"),
/// 						Name:  pulumi.String("testcontainerAppManagedBy"),
/// 						Probes: app.ContainerAppProbeArray{
/// 							&app.ContainerAppProbeArgs{
/// 								InitialDelaySeconds: pulumi.Int(3),
/// 								PeriodSeconds:       pulumi.Int(3),
/// 								TcpSocket: &app.ContainerAppProbeTcpSocketArgs{
/// 									Port: pulumi.Int(8080),
/// 								},
/// 								Type: pulumi.String(app.TypeLiveness),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Scale: &app.ScaleArgs{
/// 					CooldownPeriod:  pulumi.Int(350),
/// 					MaxReplicas:     pulumi.Int(5),
/// 					MinReplicas:     pulumi.Int(1),
/// 					PollingInterval: pulumi.Int(35),
/// 					Rules: app.ScaleRuleArray{
/// 						&app.ScaleRuleArgs{
/// 							Name: pulumi.String("tcpscalingrule"),
/// 							Tcp: &app.TcpScaleRuleArgs{
/// 								Metadata: pulumi.StringMap{
/// 									"concurrentConnections": pulumi.String("50"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.app.ContainerApp;
/// import com.pulumi.azurenative.app.ContainerAppArgs;
/// import com.pulumi.azurenative.app.inputs.ConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.IngressArgs;
/// import com.pulumi.azurenative.app.inputs.TemplateArgs;
/// import com.pulumi.azurenative.app.inputs.ScaleArgs;
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
///         var containerApp = new ContainerApp("containerApp", ContainerAppArgs.builder()
///             .configuration(ConfigurationArgs.builder()
///                 .ingress(IngressArgs.builder()
///                     .exposedPort(4000)
///                     .external(true)
///                     .targetPort(3000)
///                     .traffic(TrafficWeightArgs.builder()
///                         .revisionName("testcontainerAppManagedBy-ab1234")
///                         .weight(100)
///                         .build())
///                     .transport("tcp")
///                     .build())
///                 .build())
///             .containerAppName("testcontainerAppManagedBy")
///             .environmentId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube")
///             .location("East US")
///             .managedBy("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.AppPlatform/Spring/springapp")
///             .resourceGroupName("rg")
///             .template(TemplateArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("repo/testcontainerAppManagedBy:v1")
///                     .name("testcontainerAppManagedBy")
///                     .probes(ContainerAppProbeArgs.builder()
///                         .initialDelaySeconds(3)
///                         .periodSeconds(3)
///                         .tcpSocket(ContainerAppProbeTcpSocketArgs.builder()
///                             .port(8080)
///                             .build())
///                         .type("Liveness")
///                         .build())
///                     .build())
///                 .scale(ScaleArgs.builder()
///                     .cooldownPeriod(350)
///                     .maxReplicas(5)
///                     .minReplicas(1)
///                     .pollingInterval(35)
///                     .rules(ScaleRuleArgs.builder()
///                         .name("tcpscalingrule")
///                         .tcp(TcpScaleRuleArgs.builder()
///                             .metadata(Map.of("concurrentConnections", "50"))
///                             .build())
///                         .build())
///                     .build())
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
/// const containerApp = new azure_native.app.ContainerApp("containerApp", {
///     configuration: {
///         ingress: {
///             exposedPort: 4000,
///             external: true,
///             targetPort: 3000,
///             traffic: [{
///                 revisionName: "testcontainerAppManagedBy-ab1234",
///                 weight: 100,
///             }],
///             transport: azure_native.app.IngressTransportMethod.Tcp,
///         },
///     },
///     containerAppName: "testcontainerAppManagedBy",
///     environmentId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     location: "East US",
///     managedBy: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.AppPlatform/Spring/springapp",
///     resourceGroupName: "rg",
///     template: {
///         containers: [{
///             image: "repo/testcontainerAppManagedBy:v1",
///             name: "testcontainerAppManagedBy",
///             probes: [{
///                 initialDelaySeconds: 3,
///                 periodSeconds: 3,
///                 tcpSocket: {
///                     port: 8080,
///                 },
///                 type: azure_native.app.Type.Liveness,
///             }],
///         }],
///         scale: {
///             cooldownPeriod: 350,
///             maxReplicas: 5,
///             minReplicas: 1,
///             pollingInterval: 35,
///             rules: [{
///                 name: "tcpscalingrule",
///                 tcp: {
///                     metadata: {
///                         concurrentConnections: "50",
///                     },
///                 },
///             }],
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_app = azure_native.app.ContainerApp("containerApp",
///     configuration={
///         "ingress": {
///             "exposed_port": 4000,
///             "external": True,
///             "target_port": 3000,
///             "traffic": [{
///                 "revision_name": "testcontainerAppManagedBy-ab1234",
///                 "weight": 100,
///             }],
///             "transport": azure_native.app.IngressTransportMethod.TCP,
///         },
///     },
///     container_app_name="testcontainerAppManagedBy",
///     environment_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     location="East US",
///     managed_by="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.AppPlatform/Spring/springapp",
///     resource_group_name="rg",
///     template={
///         "containers": [{
///             "image": "repo/testcontainerAppManagedBy:v1",
///             "name": "testcontainerAppManagedBy",
///             "probes": [{
///                 "initial_delay_seconds": 3,
///                 "period_seconds": 3,
///                 "tcp_socket": {
///                     "port": 8080,
///                 },
///                 "type": azure_native.app.Type.LIVENESS,
///             }],
///         }],
///         "scale": {
///             "cooldown_period": 350,
///             "max_replicas": 5,
///             "min_replicas": 1,
///             "polling_interval": 35,
///             "rules": [{
///                 "name": "tcpscalingrule",
///                 "tcp": {
///                     "metadata": {
///                         "concurrentConnections": "50",
///                     },
///                 },
///             }],
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   containerApp:
///     type: azure-native:app:ContainerApp
///     properties:
///       configuration:
///         ingress:
///           exposedPort: 4000
///           external: true
///           targetPort: 3000
///           traffic:
///             - revisionName: testcontainerAppManagedBy-ab1234
///               weight: 100
///           transport: tcp
///       containerAppName: testcontainerAppManagedBy
///       environmentId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube
///       location: East US
///       managedBy: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.AppPlatform/Spring/springapp
///       resourceGroupName: rg
///       template:
///         containers:
///           - image: repo/testcontainerAppManagedBy:v1
///             name: testcontainerAppManagedBy
///             probes:
///               - initialDelaySeconds: 3
///                 periodSeconds: 3
///                 tcpSocket:
///                   port: 8080
///                 type: Liveness
///         scale:
///           cooldownPeriod: 350
///           maxReplicas: 5
///           minReplicas: 1
///           pollingInterval: 35
///           rules:
///             - name: tcpscalingrule
///               tcp:
///                 metadata:
///                   concurrentConnections: '50'
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update SourceToCloud App
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerApp = new AzureNative.App.ContainerApp("containerApp", new()
///     {
///         Configuration = new AzureNative.App.Inputs.ConfigurationArgs
///         {
///             Dapr = new AzureNative.App.Inputs.DaprArgs
///             {
///                 AppPort = 3000,
///                 AppProtocol = AzureNative.App.AppProtocol.Http,
///                 EnableApiLogging = true,
///                 Enabled = true,
///                 HttpMaxRequestSize = 10,
///                 HttpReadBufferSize = 30,
///                 LogLevel = AzureNative.App.LogLevel.Debug,
///             },
///             Ingress = new AzureNative.App.Inputs.IngressArgs
///             {
///                 AdditionalPortMappings = new[]
///                 {
///                     new AzureNative.App.Inputs.IngressPortMappingArgs
///                     {
///                         External = true,
///                         TargetPort = 1234,
///                     },
///                     new AzureNative.App.Inputs.IngressPortMappingArgs
///                     {
///                         ExposedPort = 3456,
///                         External = false,
///                         TargetPort = 2345,
///                     },
///                 },
///                 ClientCertificateMode = AzureNative.App.IngressClientCertificateMode.Accept,
///                 CorsPolicy = new AzureNative.App.Inputs.CorsPolicyArgs
///                 {
///                     AllowCredentials = true,
///                     AllowedHeaders = new[]
///                     {
///                         "HEADER1",
///                         "HEADER2",
///                     },
///                     AllowedMethods = new[]
///                     {
///                         "GET",
///                         "POST",
///                     },
///                     AllowedOrigins = new[]
///                     {
///                         "https://a.test.com",
///                         "https://b.test.com",
///                     },
///                     ExposeHeaders = new[]
///                     {
///                         "HEADER3",
///                         "HEADER4",
///                     },
///                     MaxAge = 1234,
///                 },
///                 CustomDomains = new[]
///                 {
///                     new AzureNative.App.Inputs.CustomDomainArgs
///                     {
///                         BindingType = AzureNative.App.BindingType.SniEnabled,
///                         CertificateId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com",
///                         Name = "www.my-name.com",
///                     },
///                     new AzureNative.App.Inputs.CustomDomainArgs
///                     {
///                         BindingType = AzureNative.App.BindingType.SniEnabled,
///                         CertificateId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com",
///                         Name = "www.my-other-name.com",
///                     },
///                 },
///                 External = true,
///                 IpSecurityRestrictions = new[]
///                 {
///                     new AzureNative.App.Inputs.IpSecurityRestrictionRuleArgs
///                     {
///                         Action = AzureNative.App.Action.Allow,
///                         Description = "Allowing all IP's within the subnet below to access containerapp",
///                         IpAddressRange = "192.168.1.1/32",
///                         Name = "Allow work IP A subnet",
///                     },
///                     new AzureNative.App.Inputs.IpSecurityRestrictionRuleArgs
///                     {
///                         Action = AzureNative.App.Action.Allow,
///                         Description = "Allowing all IP's within the subnet below to access containerapp",
///                         IpAddressRange = "192.168.1.1/8",
///                         Name = "Allow work IP B subnet",
///                     },
///                 },
///                 StickySessions = new AzureNative.App.Inputs.IngressStickySessionsArgs
///                 {
///                     Affinity = AzureNative.App.Affinity.Sticky,
///                 },
///                 TargetPort = 3000,
///                 Traffic = new[]
///                 {
///                     new AzureNative.App.Inputs.TrafficWeightArgs
///                     {
///                         Label = "production",
///                         RevisionName = "testcontainerApp0-ab1234",
///                         Weight = 100,
///                     },
///                 },
///             },
///             MaxInactiveRevisions = 10,
///             RevisionTransitionThreshold = 100,
///             Service = new AzureNative.App.Inputs.ServiceArgs
///             {
///                 Type = "redis",
///             },
///         },
///         ContainerAppName = "testcontainerApp0",
///         EnvironmentId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///         Location = "East US",
///         PatchingConfiguration = new AzureNative.App.Inputs.ContainerAppPatchingConfigurationArgs
///         {
///             PatchingMode = AzureNative.App.PatchingMode.Automatic,
///         },
///         ResourceGroupName = "rg",
///         Template = new AzureNative.App.Inputs.TemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.ContainerArgs
///                 {
///                     Image = "",
///                     ImageType = AzureNative.App.ImageType.CloudBuild,
///                     Name = "testcontainerApp0",
///                     Probes = new[]
///                     {
///                         new AzureNative.App.Inputs.ContainerAppProbeArgs
///                         {
///                             HttpGet = new AzureNative.App.Inputs.ContainerAppProbeHttpGetArgs
///                             {
///                                 HttpHeaders = new[]
///                                 {
///                                     new AzureNative.App.Inputs.ContainerAppProbeHttpHeadersArgs
///                                     {
///                                         Name = "Custom-Header",
///                                         Value = "Awesome",
///                                     },
///                                 },
///                                 Path = "/health",
///                                 Port = 8080,
///                             },
///                             InitialDelaySeconds = 3,
///                             PeriodSeconds = 3,
///                             Type = AzureNative.App.Type.Liveness,
///                         },
///                     },
///                     VolumeMounts = new[]
///                     {
///                         new AzureNative.App.Inputs.VolumeMountArgs
///                         {
///                             MountPath = "/mnt/path1",
///                             SubPath = "subPath1",
///                             VolumeName = "azurefile",
///                         },
///                         new AzureNative.App.Inputs.VolumeMountArgs
///                         {
///                             MountPath = "/mnt/path2",
///                             SubPath = "subPath2",
///                             VolumeName = "nfsazurefile",
///                         },
///                     },
///                 },
///             },
///             InitContainers = new[]
///             {
///                 new AzureNative.App.Inputs.InitContainerArgs
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
///                     Image = "repo/testcontainerApp0:v4",
///                     Name = "testinitcontainerApp0",
///                     Resources = new AzureNative.App.Inputs.ContainerResourcesArgs
///                     {
///                         Cpu = 0.2,
///                         Memory = "100Mi",
///                     },
///                 },
///             },
///             Scale = new AzureNative.App.Inputs.ScaleArgs
///             {
///                 CooldownPeriod = 350,
///                 MaxReplicas = 5,
///                 MinReplicas = 1,
///                 PollingInterval = 35,
///                 Rules = new[]
///                 {
///                     new AzureNative.App.Inputs.ScaleRuleArgs
///                     {
///                         Custom = new AzureNative.App.Inputs.CustomScaleRuleArgs
///                         {
///                             Metadata =
///                             {
///                                 { "concurrentRequests", "50" },
///                             },
///                             Type = "http",
///                         },
///                         Name = "httpscalingrule",
///                     },
///                 },
///             },
///             ServiceBinds = new[]
///             {
///                 new AzureNative.App.Inputs.ServiceBindArgs
///                 {
///                     ClientType = "dotnet",
///                     CustomizedKeys =
///                     {
///                         { "DesiredKey", "defaultKey" },
///                     },
///                     Name = "redisService",
///                     ServiceId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/containerApps/redisService",
///                 },
///             },
///             Volumes = new[]
///             {
///                 new AzureNative.App.Inputs.VolumeArgs
///                 {
///                     Name = "azurefile",
///                     StorageName = "storage",
///                     StorageType = AzureNative.App.StorageType.AzureFile,
///                 },
///                 new AzureNative.App.Inputs.VolumeArgs
///                 {
///                     Name = "nfsazurefile",
///                     StorageName = "nfsStorage",
///                     StorageType = AzureNative.App.StorageType.NfsAzureFile,
///                 },
///             },
///         },
///         WorkloadProfileName = "My-GP-01",
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
/// 		_, err := app.NewContainerApp(ctx, "containerApp", &app.ContainerAppArgs{
/// 			Configuration: &app.ConfigurationArgs{
/// 				Dapr: &app.DaprArgs{
/// 					AppPort:            pulumi.Int(3000),
/// 					AppProtocol:        pulumi.String(app.AppProtocolHttp),
/// 					EnableApiLogging:   pulumi.Bool(true),
/// 					Enabled:            pulumi.Bool(true),
/// 					HttpMaxRequestSize: pulumi.Int(10),
/// 					HttpReadBufferSize: pulumi.Int(30),
/// 					LogLevel:           pulumi.String(app.LogLevelDebug),
/// 				},
/// 				Ingress: &app.IngressArgs{
/// 					AdditionalPortMappings: app.IngressPortMappingArray{
/// 						&app.IngressPortMappingArgs{
/// 							External:   pulumi.Bool(true),
/// 							TargetPort: pulumi.Int(1234),
/// 						},
/// 						&app.IngressPortMappingArgs{
/// 							ExposedPort: pulumi.Int(3456),
/// 							External:    pulumi.Bool(false),
/// 							TargetPort:  pulumi.Int(2345),
/// 						},
/// 					},
/// 					ClientCertificateMode: pulumi.String(app.IngressClientCertificateModeAccept),
/// 					CorsPolicy: &app.CorsPolicyArgs{
/// 						AllowCredentials: pulumi.Bool(true),
/// 						AllowedHeaders: pulumi.StringArray{
/// 							pulumi.String("HEADER1"),
/// 							pulumi.String("HEADER2"),
/// 						},
/// 						AllowedMethods: pulumi.StringArray{
/// 							pulumi.String("GET"),
/// 							pulumi.String("POST"),
/// 						},
/// 						AllowedOrigins: pulumi.StringArray{
/// 							pulumi.String("https://a.test.com"),
/// 							pulumi.String("https://b.test.com"),
/// 						},
/// 						ExposeHeaders: pulumi.StringArray{
/// 							pulumi.String("HEADER3"),
/// 							pulumi.String("HEADER4"),
/// 						},
/// 						MaxAge: pulumi.Int(1234),
/// 					},
/// 					CustomDomains: app.CustomDomainArray{
/// 						&app.CustomDomainArgs{
/// 							BindingType:   pulumi.String(app.BindingTypeSniEnabled),
/// 							CertificateId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com"),
/// 							Name:          pulumi.String("www.my-name.com"),
/// 						},
/// 						&app.CustomDomainArgs{
/// 							BindingType:   pulumi.String(app.BindingTypeSniEnabled),
/// 							CertificateId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com"),
/// 							Name:          pulumi.String("www.my-other-name.com"),
/// 						},
/// 					},
/// 					External: pulumi.Bool(true),
/// 					IpSecurityRestrictions: app.IpSecurityRestrictionRuleArray{
/// 						&app.IpSecurityRestrictionRuleArgs{
/// 							Action:         pulumi.String(app.ActionAllow),
/// 							Description:    pulumi.String("Allowing all IP's within the subnet below to access containerapp"),
/// 							IpAddressRange: pulumi.String("192.168.1.1/32"),
/// 							Name:           pulumi.String("Allow work IP A subnet"),
/// 						},
/// 						&app.IpSecurityRestrictionRuleArgs{
/// 							Action:         pulumi.String(app.ActionAllow),
/// 							Description:    pulumi.String("Allowing all IP's within the subnet below to access containerapp"),
/// 							IpAddressRange: pulumi.String("192.168.1.1/8"),
/// 							Name:           pulumi.String("Allow work IP B subnet"),
/// 						},
/// 					},
/// 					StickySessions: &app.IngressStickySessionsArgs{
/// 						Affinity: pulumi.String(app.AffinitySticky),
/// 					},
/// 					TargetPort: pulumi.Int(3000),
/// 					Traffic: app.TrafficWeightArray{
/// 						&app.TrafficWeightArgs{
/// 							Label:        pulumi.String("production"),
/// 							RevisionName: pulumi.String("testcontainerApp0-ab1234"),
/// 							Weight:       pulumi.Int(100),
/// 						},
/// 					},
/// 				},
/// 				MaxInactiveRevisions:        pulumi.Int(10),
/// 				RevisionTransitionThreshold: pulumi.Int(100),
/// 				Service: &app.ServiceArgs{
/// 					Type: pulumi.String("redis"),
/// 				},
/// 			},
/// 			ContainerAppName: pulumi.String("testcontainerApp0"),
/// 			EnvironmentId:    pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube"),
/// 			Location:         pulumi.String("East US"),
/// 			PatchingConfiguration: &app.ContainerAppPatchingConfigurationArgs{
/// 				PatchingMode: pulumi.String(app.PatchingModeAutomatic),
/// 			},
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Template: &app.TemplateArgs{
/// 				Containers: app.ContainerArray{
/// 					&app.ContainerArgs{
/// 						Image:     pulumi.String(""),
/// 						ImageType: pulumi.String(app.ImageTypeCloudBuild),
/// 						Name:      pulumi.String("testcontainerApp0"),
/// 						Probes: app.ContainerAppProbeArray{
/// 							&app.ContainerAppProbeArgs{
/// 								HttpGet: &app.ContainerAppProbeHttpGetArgs{
/// 									HttpHeaders: app.ContainerAppProbeHttpHeadersArray{
/// 										&app.ContainerAppProbeHttpHeadersArgs{
/// 											Name:  pulumi.String("Custom-Header"),
/// 											Value: pulumi.String("Awesome"),
/// 										},
/// 									},
/// 									Path: pulumi.String("/health"),
/// 									Port: pulumi.Int(8080),
/// 								},
/// 								InitialDelaySeconds: pulumi.Int(3),
/// 								PeriodSeconds:       pulumi.Int(3),
/// 								Type:                pulumi.String(app.TypeLiveness),
/// 							},
/// 						},
/// 						VolumeMounts: app.VolumeMountArray{
/// 							&app.VolumeMountArgs{
/// 								MountPath:  pulumi.String("/mnt/path1"),
/// 								SubPath:    pulumi.String("subPath1"),
/// 								VolumeName: pulumi.String("azurefile"),
/// 							},
/// 							&app.VolumeMountArgs{
/// 								MountPath:  pulumi.String("/mnt/path2"),
/// 								SubPath:    pulumi.String("subPath2"),
/// 								VolumeName: pulumi.String("nfsazurefile"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				InitContainers: app.InitContainerArray{
/// 					&app.InitContainerArgs{
/// 						Args: pulumi.StringArray{
/// 							pulumi.String("-c"),
/// 							pulumi.String("while true; do echo hello; sleep 10;done"),
/// 						},
/// 						Command: pulumi.StringArray{
/// 							pulumi.String("/bin/sh"),
/// 						},
/// 						Image: pulumi.String("repo/testcontainerApp0:v4"),
/// 						Name:  pulumi.String("testinitcontainerApp0"),
/// 						Resources: &app.ContainerResourcesArgs{
/// 							Cpu:    pulumi.Float64(0.2),
/// 							Memory: pulumi.String("100Mi"),
/// 						},
/// 					},
/// 				},
/// 				Scale: &app.ScaleArgs{
/// 					CooldownPeriod:  pulumi.Int(350),
/// 					MaxReplicas:     pulumi.Int(5),
/// 					MinReplicas:     pulumi.Int(1),
/// 					PollingInterval: pulumi.Int(35),
/// 					Rules: app.ScaleRuleArray{
/// 						&app.ScaleRuleArgs{
/// 							Custom: &app.CustomScaleRuleArgs{
/// 								Metadata: pulumi.StringMap{
/// 									"concurrentRequests": pulumi.String("50"),
/// 								},
/// 								Type: pulumi.String("http"),
/// 							},
/// 							Name: pulumi.String("httpscalingrule"),
/// 						},
/// 					},
/// 				},
/// 				ServiceBinds: app.ServiceBindArray{
/// 					&app.ServiceBindArgs{
/// 						ClientType: pulumi.String("dotnet"),
/// 						CustomizedKeys: pulumi.StringMap{
/// 							"DesiredKey": pulumi.String("defaultKey"),
/// 						},
/// 						Name:      pulumi.String("redisService"),
/// 						ServiceId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/containerApps/redisService"),
/// 					},
/// 				},
/// 				Volumes: app.VolumeArray{
/// 					&app.VolumeArgs{
/// 						Name:        pulumi.String("azurefile"),
/// 						StorageName: pulumi.String("storage"),
/// 						StorageType: pulumi.String(app.StorageTypeAzureFile),
/// 					},
/// 					&app.VolumeArgs{
/// 						Name:        pulumi.String("nfsazurefile"),
/// 						StorageName: pulumi.String("nfsStorage"),
/// 						StorageType: pulumi.String(app.StorageTypeNfsAzureFile),
/// 					},
/// 				},
/// 			},
/// 			WorkloadProfileName: pulumi.String("My-GP-01"),
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
/// import com.pulumi.azurenative.app.ContainerApp;
/// import com.pulumi.azurenative.app.ContainerAppArgs;
/// import com.pulumi.azurenative.app.inputs.ConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.DaprArgs;
/// import com.pulumi.azurenative.app.inputs.IngressArgs;
/// import com.pulumi.azurenative.app.inputs.CorsPolicyArgs;
/// import com.pulumi.azurenative.app.inputs.IngressStickySessionsArgs;
/// import com.pulumi.azurenative.app.inputs.ServiceArgs;
/// import com.pulumi.azurenative.app.inputs.ContainerAppPatchingConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.TemplateArgs;
/// import com.pulumi.azurenative.app.inputs.ScaleArgs;
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
///         var containerApp = new ContainerApp("containerApp", ContainerAppArgs.builder()
///             .configuration(ConfigurationArgs.builder()
///                 .dapr(DaprArgs.builder()
///                     .appPort(3000)
///                     .appProtocol("http")
///                     .enableApiLogging(true)
///                     .enabled(true)
///                     .httpMaxRequestSize(10)
///                     .httpReadBufferSize(30)
///                     .logLevel("debug")
///                     .build())
///                 .ingress(IngressArgs.builder()
///                     .additionalPortMappings(
///                         IngressPortMappingArgs.builder()
///                             .external(true)
///                             .targetPort(1234)
///                             .build(),
///                         IngressPortMappingArgs.builder()
///                             .exposedPort(3456)
///                             .external(false)
///                             .targetPort(2345)
///                             .build())
///                     .clientCertificateMode("accept")
///                     .corsPolicy(CorsPolicyArgs.builder()
///                         .allowCredentials(true)
///                         .allowedHeaders(
///                             "HEADER1",
///                             "HEADER2")
///                         .allowedMethods(
///                             "GET",
///                             "POST")
///                         .allowedOrigins(
///                             "https://a.test.com",
///                             "https://b.test.com")
///                         .exposeHeaders(
///                             "HEADER3",
///                             "HEADER4")
///                         .maxAge(1234)
///                         .build())
///                     .customDomains(
///                         CustomDomainArgs.builder()
///                             .bindingType("SniEnabled")
///                             .certificateId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com")
///                             .name("www.my-name.com")
///                             .build(),
///                         CustomDomainArgs.builder()
///                             .bindingType("SniEnabled")
///                             .certificateId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com")
///                             .name("www.my-other-name.com")
///                             .build())
///                     .external(true)
///                     .ipSecurityRestrictions(
///                         IpSecurityRestrictionRuleArgs.builder()
///                             .action("Allow")
///                             .description("Allowing all IP's within the subnet below to access containerapp")
///                             .ipAddressRange("192.168.1.1/32")
///                             .name("Allow work IP A subnet")
///                             .build(),
///                         IpSecurityRestrictionRuleArgs.builder()
///                             .action("Allow")
///                             .description("Allowing all IP's within the subnet below to access containerapp")
///                             .ipAddressRange("192.168.1.1/8")
///                             .name("Allow work IP B subnet")
///                             .build())
///                     .stickySessions(IngressStickySessionsArgs.builder()
///                         .affinity("sticky")
///                         .build())
///                     .targetPort(3000)
///                     .traffic(TrafficWeightArgs.builder()
///                         .label("production")
///                         .revisionName("testcontainerApp0-ab1234")
///                         .weight(100)
///                         .build())
///                     .build())
///                 .maxInactiveRevisions(10)
///                 .revisionTransitionThreshold(100)
///                 .service(ServiceArgs.builder()
///                     .type("redis")
///                     .build())
///                 .build())
///             .containerAppName("testcontainerApp0")
///             .environmentId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube")
///             .location("East US")
///             .patchingConfiguration(ContainerAppPatchingConfigurationArgs.builder()
///                 .patchingMode("Automatic")
///                 .build())
///             .resourceGroupName("rg")
///             .template(TemplateArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("")
///                     .imageType("CloudBuild")
///                     .name("testcontainerApp0")
///                     .probes(ContainerAppProbeArgs.builder()
///                         .httpGet(ContainerAppProbeHttpGetArgs.builder()
///                             .httpHeaders(ContainerAppProbeHttpHeadersArgs.builder()
///                                 .name("Custom-Header")
///                                 .value("Awesome")
///                                 .build())
///                             .path("/health")
///                             .port(8080)
///                             .build())
///                         .initialDelaySeconds(3)
///                         .periodSeconds(3)
///                         .type("Liveness")
///                         .build())
///                     .volumeMounts(
///                         VolumeMountArgs.builder()
///                             .mountPath("/mnt/path1")
///                             .subPath("subPath1")
///                             .volumeName("azurefile")
///                             .build(),
///                         VolumeMountArgs.builder()
///                             .mountPath("/mnt/path2")
///                             .subPath("subPath2")
///                             .volumeName("nfsazurefile")
///                             .build())
///                     .build())
///                 .initContainers(InitContainerArgs.builder()
///                     .args(
///                         "-c",
///                         "while true; do echo hello; sleep 10;done")
///                     .command("/bin/sh")
///                     .image("repo/testcontainerApp0:v4")
///                     .name("testinitcontainerApp0")
///                     .resources(ContainerResourcesArgs.builder()
///                         .cpu(0.2)
///                         .memory("100Mi")
///                         .build())
///                     .build())
///                 .scale(ScaleArgs.builder()
///                     .cooldownPeriod(350)
///                     .maxReplicas(5)
///                     .minReplicas(1)
///                     .pollingInterval(35)
///                     .rules(ScaleRuleArgs.builder()
///                         .custom(CustomScaleRuleArgs.builder()
///                             .metadata(Map.of("concurrentRequests", "50"))
///                             .type("http")
///                             .build())
///                         .name("httpscalingrule")
///                         .build())
///                     .build())
///                 .serviceBinds(ServiceBindArgs.builder()
///                     .clientType("dotnet")
///                     .customizedKeys(Map.of("DesiredKey", "defaultKey"))
///                     .name("redisService")
///                     .serviceId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/containerApps/redisService")
///                     .build())
///                 .volumes(
///                     VolumeArgs.builder()
///                         .name("azurefile")
///                         .storageName("storage")
///                         .storageType("AzureFile")
///                         .build(),
///                     VolumeArgs.builder()
///                         .name("nfsazurefile")
///                         .storageName("nfsStorage")
///                         .storageType("NfsAzureFile")
///                         .build())
///                 .build())
///             .workloadProfileName("My-GP-01")
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
/// const containerApp = new azure_native.app.ContainerApp("containerApp", {
///     configuration: {
///         dapr: {
///             appPort: 3000,
///             appProtocol: azure_native.app.AppProtocol.Http,
///             enableApiLogging: true,
///             enabled: true,
///             httpMaxRequestSize: 10,
///             httpReadBufferSize: 30,
///             logLevel: azure_native.app.LogLevel.Debug,
///         },
///         ingress: {
///             additionalPortMappings: [
///                 {
///                     external: true,
///                     targetPort: 1234,
///                 },
///                 {
///                     exposedPort: 3456,
///                     external: false,
///                     targetPort: 2345,
///                 },
///             ],
///             clientCertificateMode: azure_native.app.IngressClientCertificateMode.Accept,
///             corsPolicy: {
///                 allowCredentials: true,
///                 allowedHeaders: [
///                     "HEADER1",
///                     "HEADER2",
///                 ],
///                 allowedMethods: [
///                     "GET",
///                     "POST",
///                 ],
///                 allowedOrigins: [
///                     "https://a.test.com",
///                     "https://b.test.com",
///                 ],
///                 exposeHeaders: [
///                     "HEADER3",
///                     "HEADER4",
///                 ],
///                 maxAge: 1234,
///             },
///             customDomains: [
///                 {
///                     bindingType: azure_native.app.BindingType.SniEnabled,
///                     certificateId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com",
///                     name: "www.my-name.com",
///                 },
///                 {
///                     bindingType: azure_native.app.BindingType.SniEnabled,
///                     certificateId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com",
///                     name: "www.my-other-name.com",
///                 },
///             ],
///             external: true,
///             ipSecurityRestrictions: [
///                 {
///                     action: azure_native.app.Action.Allow,
///                     description: "Allowing all IP's within the subnet below to access containerapp",
///                     ipAddressRange: "192.168.1.1/32",
///                     name: "Allow work IP A subnet",
///                 },
///                 {
///                     action: azure_native.app.Action.Allow,
///                     description: "Allowing all IP's within the subnet below to access containerapp",
///                     ipAddressRange: "192.168.1.1/8",
///                     name: "Allow work IP B subnet",
///                 },
///             ],
///             stickySessions: {
///                 affinity: azure_native.app.Affinity.Sticky,
///             },
///             targetPort: 3000,
///             traffic: [{
///                 label: "production",
///                 revisionName: "testcontainerApp0-ab1234",
///                 weight: 100,
///             }],
///         },
///         maxInactiveRevisions: 10,
///         revisionTransitionThreshold: 100,
///         service: {
///             type: "redis",
///         },
///     },
///     containerAppName: "testcontainerApp0",
///     environmentId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     location: "East US",
///     patchingConfiguration: {
///         patchingMode: azure_native.app.PatchingMode.Automatic,
///     },
///     resourceGroupName: "rg",
///     template: {
///         containers: [{
///             image: "",
///             imageType: azure_native.app.ImageType.CloudBuild,
///             name: "testcontainerApp0",
///             probes: [{
///                 httpGet: {
///                     httpHeaders: [{
///                         name: "Custom-Header",
///                         value: "Awesome",
///                     }],
///                     path: "/health",
///                     port: 8080,
///                 },
///                 initialDelaySeconds: 3,
///                 periodSeconds: 3,
///                 type: azure_native.app.Type.Liveness,
///             }],
///             volumeMounts: [
///                 {
///                     mountPath: "/mnt/path1",
///                     subPath: "subPath1",
///                     volumeName: "azurefile",
///                 },
///                 {
///                     mountPath: "/mnt/path2",
///                     subPath: "subPath2",
///                     volumeName: "nfsazurefile",
///                 },
///             ],
///         }],
///         initContainers: [{
///             args: [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             command: ["/bin/sh"],
///             image: "repo/testcontainerApp0:v4",
///             name: "testinitcontainerApp0",
///             resources: {
///                 cpu: 0.2,
///                 memory: "100Mi",
///             },
///         }],
///         scale: {
///             cooldownPeriod: 350,
///             maxReplicas: 5,
///             minReplicas: 1,
///             pollingInterval: 35,
///             rules: [{
///                 custom: {
///                     metadata: {
///                         concurrentRequests: "50",
///                     },
///                     type: "http",
///                 },
///                 name: "httpscalingrule",
///             }],
///         },
///         serviceBinds: [{
///             clientType: "dotnet",
///             customizedKeys: {
///                 DesiredKey: "defaultKey",
///             },
///             name: "redisService",
///             serviceId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/containerApps/redisService",
///         }],
///         volumes: [
///             {
///                 name: "azurefile",
///                 storageName: "storage",
///                 storageType: azure_native.app.StorageType.AzureFile,
///             },
///             {
///                 name: "nfsazurefile",
///                 storageName: "nfsStorage",
///                 storageType: azure_native.app.StorageType.NfsAzureFile,
///             },
///         ],
///     },
///     workloadProfileName: "My-GP-01",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_app = azure_native.app.ContainerApp("containerApp",
///     configuration={
///         "dapr": {
///             "app_port": 3000,
///             "app_protocol": azure_native.app.AppProtocol.HTTP,
///             "enable_api_logging": True,
///             "enabled": True,
///             "http_max_request_size": 10,
///             "http_read_buffer_size": 30,
///             "log_level": azure_native.app.LogLevel.DEBUG,
///         },
///         "ingress": {
///             "additional_port_mappings": [
///                 {
///                     "external": True,
///                     "target_port": 1234,
///                 },
///                 {
///                     "exposed_port": 3456,
///                     "external": False,
///                     "target_port": 2345,
///                 },
///             ],
///             "client_certificate_mode": azure_native.app.IngressClientCertificateMode.ACCEPT,
///             "cors_policy": {
///                 "allow_credentials": True,
///                 "allowed_headers": [
///                     "HEADER1",
///                     "HEADER2",
///                 ],
///                 "allowed_methods": [
///                     "GET",
///                     "POST",
///                 ],
///                 "allowed_origins": [
///                     "https://a.test.com",
///                     "https://b.test.com",
///                 ],
///                 "expose_headers": [
///                     "HEADER3",
///                     "HEADER4",
///                 ],
///                 "max_age": 1234,
///             },
///             "custom_domains": [
///                 {
///                     "binding_type": azure_native.app.BindingType.SNI_ENABLED,
///                     "certificate_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com",
///                     "name": "www.my-name.com",
///                 },
///                 {
///                     "binding_type": azure_native.app.BindingType.SNI_ENABLED,
///                     "certificate_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com",
///                     "name": "www.my-other-name.com",
///                 },
///             ],
///             "external": True,
///             "ip_security_restrictions": [
///                 {
///                     "action": azure_native.app.Action.ALLOW,
///                     "description": "Allowing all IP's within the subnet below to access containerapp",
///                     "ip_address_range": "192.168.1.1/32",
///                     "name": "Allow work IP A subnet",
///                 },
///                 {
///                     "action": azure_native.app.Action.ALLOW,
///                     "description": "Allowing all IP's within the subnet below to access containerapp",
///                     "ip_address_range": "192.168.1.1/8",
///                     "name": "Allow work IP B subnet",
///                 },
///             ],
///             "sticky_sessions": {
///                 "affinity": azure_native.app.Affinity.STICKY,
///             },
///             "target_port": 3000,
///             "traffic": [{
///                 "label": "production",
///                 "revision_name": "testcontainerApp0-ab1234",
///                 "weight": 100,
///             }],
///         },
///         "max_inactive_revisions": 10,
///         "revision_transition_threshold": 100,
///         "service": {
///             "type": "redis",
///         },
///     },
///     container_app_name="testcontainerApp0",
///     environment_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     location="East US",
///     patching_configuration={
///         "patching_mode": azure_native.app.PatchingMode.AUTOMATIC,
///     },
///     resource_group_name="rg",
///     template={
///         "containers": [{
///             "image": "",
///             "image_type": azure_native.app.ImageType.CLOUD_BUILD,
///             "name": "testcontainerApp0",
///             "probes": [{
///                 "http_get": {
///                     "http_headers": [{
///                         "name": "Custom-Header",
///                         "value": "Awesome",
///                     }],
///                     "path": "/health",
///                     "port": 8080,
///                 },
///                 "initial_delay_seconds": 3,
///                 "period_seconds": 3,
///                 "type": azure_native.app.Type.LIVENESS,
///             }],
///             "volume_mounts": [
///                 {
///                     "mount_path": "/mnt/path1",
///                     "sub_path": "subPath1",
///                     "volume_name": "azurefile",
///                 },
///                 {
///                     "mount_path": "/mnt/path2",
///                     "sub_path": "subPath2",
///                     "volume_name": "nfsazurefile",
///                 },
///             ],
///         }],
///         "init_containers": [{
///             "args": [
///                 "-c",
///                 "while true; do echo hello; sleep 10;done",
///             ],
///             "command": ["/bin/sh"],
///             "image": "repo/testcontainerApp0:v4",
///             "name": "testinitcontainerApp0",
///             "resources": {
///                 "cpu": 0.2,
///                 "memory": "100Mi",
///             },
///         }],
///         "scale": {
///             "cooldown_period": 350,
///             "max_replicas": 5,
///             "min_replicas": 1,
///             "polling_interval": 35,
///             "rules": [{
///                 "custom": {
///                     "metadata": {
///                         "concurrentRequests": "50",
///                     },
///                     "type": "http",
///                 },
///                 "name": "httpscalingrule",
///             }],
///         },
///         "service_binds": [{
///             "client_type": "dotnet",
///             "customized_keys": {
///                 "DesiredKey": "defaultKey",
///             },
///             "name": "redisService",
///             "service_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/containerApps/redisService",
///         }],
///         "volumes": [
///             {
///                 "name": "azurefile",
///                 "storage_name": "storage",
///                 "storage_type": azure_native.app.StorageType.AZURE_FILE,
///             },
///             {
///                 "name": "nfsazurefile",
///                 "storage_name": "nfsStorage",
///                 "storage_type": azure_native.app.StorageType.NFS_AZURE_FILE,
///             },
///         ],
///     },
///     workload_profile_name="My-GP-01")
///
/// ```
///
/// ```yaml
/// resources:
///   containerApp:
///     type: azure-native:app:ContainerApp
///     properties:
///       configuration:
///         dapr:
///           appPort: 3000
///           appProtocol: http
///           enableApiLogging: true
///           enabled: true
///           httpMaxRequestSize: 10
///           httpReadBufferSize: 30
///           logLevel: debug
///         ingress:
///           additionalPortMappings:
///             - external: true
///               targetPort: 1234
///             - exposedPort: 3456
///               external: false
///               targetPort: 2345
///           clientCertificateMode: accept
///           corsPolicy:
///             allowCredentials: true
///             allowedHeaders:
///               - HEADER1
///               - HEADER2
///             allowedMethods:
///               - GET
///               - POST
///             allowedOrigins:
///               - https://a.test.com
///               - https://b.test.com
///             exposeHeaders:
///               - HEADER3
///               - HEADER4
///             maxAge: 1234
///           customDomains:
///             - bindingType: SniEnabled
///               certificateId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-name-dot-com
///               name: www.my-name.com
///             - bindingType: SniEnabled
///               certificateId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube/certificates/my-certificate-for-my-other-name-dot-com
///               name: www.my-other-name.com
///           external: true
///           ipSecurityRestrictions:
///             - action: Allow
///               description: Allowing all IP's within the subnet below to access containerapp
///               ipAddressRange: 192.168.1.1/32
///               name: Allow work IP A subnet
///             - action: Allow
///               description: Allowing all IP's within the subnet below to access containerapp
///               ipAddressRange: 192.168.1.1/8
///               name: Allow work IP B subnet
///           stickySessions:
///             affinity: sticky
///           targetPort: 3000
///           traffic:
///             - label: production
///               revisionName: testcontainerApp0-ab1234
///               weight: 100
///         maxInactiveRevisions: 10
///         revisionTransitionThreshold: 100
///         service:
///           type: redis
///       containerAppName: testcontainerApp0
///       environmentId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube
///       location: East US
///       patchingConfiguration:
///         patchingMode: Automatic
///       resourceGroupName: rg
///       template:
///         containers:
///           - image: ""
///             imageType: CloudBuild
///             name: testcontainerApp0
///             probes:
///               - httpGet:
///                   httpHeaders:
///                     - name: Custom-Header
///                       value: Awesome
///                   path: /health
///                   port: 8080
///                 initialDelaySeconds: 3
///                 periodSeconds: 3
///                 type: Liveness
///             volumeMounts:
///               - mountPath: /mnt/path1
///                 subPath: subPath1
///                 volumeName: azurefile
///               - mountPath: /mnt/path2
///                 subPath: subPath2
///                 volumeName: nfsazurefile
///         initContainers:
///           - args:
///               - -c
///               - while true; do echo hello; sleep 10;done
///             command:
///               - /bin/sh
///             image: repo/testcontainerApp0:v4
///             name: testinitcontainerApp0
///             resources:
///               cpu: 0.2
///               memory: 100Mi
///         scale:
///           cooldownPeriod: 350
///           maxReplicas: 5
///           minReplicas: 1
///           pollingInterval: 35
///           rules:
///             - custom:
///                 metadata:
///                   concurrentRequests: '50'
///                 type: http
///               name: httpscalingrule
///         serviceBinds:
///           - clientType: dotnet
///             customizedKeys:
///               DesiredKey: defaultKey
///             name: redisService
///             serviceId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/containerApps/redisService
///         volumes:
///           - name: azurefile
///             storageName: storage
///             storageType: AzureFile
///           - name: nfsazurefile
///             storageName: nfsStorage
///             storageType: NfsAzureFile
///       workloadProfileName: My-GP-01
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Tcp App
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var containerApp = new AzureNative.App.ContainerApp("containerApp", new()
///     {
///         Configuration = new AzureNative.App.Inputs.ConfigurationArgs
///         {
///             Ingress = new AzureNative.App.Inputs.IngressArgs
///             {
///                 ExposedPort = 4000,
///                 External = true,
///                 TargetPort = 3000,
///                 Traffic = new[]
///                 {
///                     new AzureNative.App.Inputs.TrafficWeightArgs
///                     {
///                         RevisionName = "testcontainerAppTcp-ab1234",
///                         Weight = 100,
///                     },
///                 },
///                 Transport = AzureNative.App.IngressTransportMethod.Tcp,
///             },
///         },
///         ContainerAppName = "testcontainerAppTcp",
///         EnvironmentId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///         Location = "East US",
///         ResourceGroupName = "rg",
///         Template = new AzureNative.App.Inputs.TemplateArgs
///         {
///             Containers = new[]
///             {
///                 new AzureNative.App.Inputs.ContainerArgs
///                 {
///                     Image = "repo/testcontainerAppTcp:v1",
///                     Name = "testcontainerAppTcp",
///                     Probes = new[]
///                     {
///                         new AzureNative.App.Inputs.ContainerAppProbeArgs
///                         {
///                             InitialDelaySeconds = 3,
///                             PeriodSeconds = 3,
///                             TcpSocket = new AzureNative.App.Inputs.ContainerAppProbeTcpSocketArgs
///                             {
///                                 Port = 8080,
///                             },
///                             Type = AzureNative.App.Type.Liveness,
///                         },
///                     },
///                 },
///             },
///             Scale = new AzureNative.App.Inputs.ScaleArgs
///             {
///                 CooldownPeriod = 350,
///                 MaxReplicas = 5,
///                 MinReplicas = 1,
///                 PollingInterval = 35,
///                 Rules = new[]
///                 {
///                     new AzureNative.App.Inputs.ScaleRuleArgs
///                     {
///                         Name = "tcpscalingrule",
///                         Tcp = new AzureNative.App.Inputs.TcpScaleRuleArgs
///                         {
///                             Metadata =
///                             {
///                                 { "concurrentConnections", "50" },
///                             },
///                         },
///                     },
///                 },
///             },
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
/// 	app "github.com/pulumi/pulumi-azure-native-sdk/app/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := app.NewContainerApp(ctx, "containerApp", &app.ContainerAppArgs{
/// 			Configuration: &app.ConfigurationArgs{
/// 				Ingress: &app.IngressArgs{
/// 					ExposedPort: pulumi.Int(4000),
/// 					External:    pulumi.Bool(true),
/// 					TargetPort:  pulumi.Int(3000),
/// 					Traffic: app.TrafficWeightArray{
/// 						&app.TrafficWeightArgs{
/// 							RevisionName: pulumi.String("testcontainerAppTcp-ab1234"),
/// 							Weight:       pulumi.Int(100),
/// 						},
/// 					},
/// 					Transport: pulumi.String(app.IngressTransportMethodTcp),
/// 				},
/// 			},
/// 			ContainerAppName:  pulumi.String("testcontainerAppTcp"),
/// 			EnvironmentId:     pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube"),
/// 			Location:          pulumi.String("East US"),
/// 			ResourceGroupName: pulumi.String("rg"),
/// 			Template: &app.TemplateArgs{
/// 				Containers: app.ContainerArray{
/// 					&app.ContainerArgs{
/// 						Image: pulumi.String("repo/testcontainerAppTcp:v1"),
/// 						Name:  pulumi.String("testcontainerAppTcp"),
/// 						Probes: app.ContainerAppProbeArray{
/// 							&app.ContainerAppProbeArgs{
/// 								InitialDelaySeconds: pulumi.Int(3),
/// 								PeriodSeconds:       pulumi.Int(3),
/// 								TcpSocket: &app.ContainerAppProbeTcpSocketArgs{
/// 									Port: pulumi.Int(8080),
/// 								},
/// 								Type: pulumi.String(app.TypeLiveness),
/// 							},
/// 						},
/// 					},
/// 				},
/// 				Scale: &app.ScaleArgs{
/// 					CooldownPeriod:  pulumi.Int(350),
/// 					MaxReplicas:     pulumi.Int(5),
/// 					MinReplicas:     pulumi.Int(1),
/// 					PollingInterval: pulumi.Int(35),
/// 					Rules: app.ScaleRuleArray{
/// 						&app.ScaleRuleArgs{
/// 							Name: pulumi.String("tcpscalingrule"),
/// 							Tcp: &app.TcpScaleRuleArgs{
/// 								Metadata: pulumi.StringMap{
/// 									"concurrentConnections": pulumi.String("50"),
/// 								},
/// 							},
/// 						},
/// 					},
/// 				},
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
/// import com.pulumi.azurenative.app.ContainerApp;
/// import com.pulumi.azurenative.app.ContainerAppArgs;
/// import com.pulumi.azurenative.app.inputs.ConfigurationArgs;
/// import com.pulumi.azurenative.app.inputs.IngressArgs;
/// import com.pulumi.azurenative.app.inputs.TemplateArgs;
/// import com.pulumi.azurenative.app.inputs.ScaleArgs;
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
///         var containerApp = new ContainerApp("containerApp", ContainerAppArgs.builder()
///             .configuration(ConfigurationArgs.builder()
///                 .ingress(IngressArgs.builder()
///                     .exposedPort(4000)
///                     .external(true)
///                     .targetPort(3000)
///                     .traffic(TrafficWeightArgs.builder()
///                         .revisionName("testcontainerAppTcp-ab1234")
///                         .weight(100)
///                         .build())
///                     .transport("tcp")
///                     .build())
///                 .build())
///             .containerAppName("testcontainerAppTcp")
///             .environmentId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube")
///             .location("East US")
///             .resourceGroupName("rg")
///             .template(TemplateArgs.builder()
///                 .containers(ContainerArgs.builder()
///                     .image("repo/testcontainerAppTcp:v1")
///                     .name("testcontainerAppTcp")
///                     .probes(ContainerAppProbeArgs.builder()
///                         .initialDelaySeconds(3)
///                         .periodSeconds(3)
///                         .tcpSocket(ContainerAppProbeTcpSocketArgs.builder()
///                             .port(8080)
///                             .build())
///                         .type("Liveness")
///                         .build())
///                     .build())
///                 .scale(ScaleArgs.builder()
///                     .cooldownPeriod(350)
///                     .maxReplicas(5)
///                     .minReplicas(1)
///                     .pollingInterval(35)
///                     .rules(ScaleRuleArgs.builder()
///                         .name("tcpscalingrule")
///                         .tcp(TcpScaleRuleArgs.builder()
///                             .metadata(Map.of("concurrentConnections", "50"))
///                             .build())
///                         .build())
///                     .build())
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
/// const containerApp = new azure_native.app.ContainerApp("containerApp", {
///     configuration: {
///         ingress: {
///             exposedPort: 4000,
///             external: true,
///             targetPort: 3000,
///             traffic: [{
///                 revisionName: "testcontainerAppTcp-ab1234",
///                 weight: 100,
///             }],
///             transport: azure_native.app.IngressTransportMethod.Tcp,
///         },
///     },
///     containerAppName: "testcontainerAppTcp",
///     environmentId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     location: "East US",
///     resourceGroupName: "rg",
///     template: {
///         containers: [{
///             image: "repo/testcontainerAppTcp:v1",
///             name: "testcontainerAppTcp",
///             probes: [{
///                 initialDelaySeconds: 3,
///                 periodSeconds: 3,
///                 tcpSocket: {
///                     port: 8080,
///                 },
///                 type: azure_native.app.Type.Liveness,
///             }],
///         }],
///         scale: {
///             cooldownPeriod: 350,
///             maxReplicas: 5,
///             minReplicas: 1,
///             pollingInterval: 35,
///             rules: [{
///                 name: "tcpscalingrule",
///                 tcp: {
///                     metadata: {
///                         concurrentConnections: "50",
///                     },
///                 },
///             }],
///         },
///     },
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// container_app = azure_native.app.ContainerApp("containerApp",
///     configuration={
///         "ingress": {
///             "exposed_port": 4000,
///             "external": True,
///             "target_port": 3000,
///             "traffic": [{
///                 "revision_name": "testcontainerAppTcp-ab1234",
///                 "weight": 100,
///             }],
///             "transport": azure_native.app.IngressTransportMethod.TCP,
///         },
///     },
///     container_app_name="testcontainerAppTcp",
///     environment_id="/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube",
///     location="East US",
///     resource_group_name="rg",
///     template={
///         "containers": [{
///             "image": "repo/testcontainerAppTcp:v1",
///             "name": "testcontainerAppTcp",
///             "probes": [{
///                 "initial_delay_seconds": 3,
///                 "period_seconds": 3,
///                 "tcp_socket": {
///                     "port": 8080,
///                 },
///                 "type": azure_native.app.Type.LIVENESS,
///             }],
///         }],
///         "scale": {
///             "cooldown_period": 350,
///             "max_replicas": 5,
///             "min_replicas": 1,
///             "polling_interval": 35,
///             "rules": [{
///                 "name": "tcpscalingrule",
///                 "tcp": {
///                     "metadata": {
///                         "concurrentConnections": "50",
///                     },
///                 },
///             }],
///         },
///     })
///
/// ```
///
/// ```yaml
/// resources:
///   containerApp:
///     type: azure-native:app:ContainerApp
///     properties:
///       configuration:
///         ingress:
///           exposedPort: 4000
///           external: true
///           targetPort: 3000
///           traffic:
///             - revisionName: testcontainerAppTcp-ab1234
///               weight: 100
///           transport: tcp
///       containerAppName: testcontainerAppTcp
///       environmentId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/rg/providers/Microsoft.App/managedEnvironments/demokube
///       location: East US
///       resourceGroupName: rg
///       template:
///         containers:
///           - image: repo/testcontainerAppTcp:v1
///             name: testcontainerAppTcp
///             probes:
///               - initialDelaySeconds: 3
///                 periodSeconds: 3
///                 tcpSocket:
///                   port: 8080
///                 type: Liveness
///         scale:
///           cooldownPeriod: 350
///           maxReplicas: 5
///           minReplicas: 1
///           pollingInterval: 35
///           rules:
///             - name: tcpscalingrule
///               tcp:
///                 metadata:
///                   concurrentConnections: '50'
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
/// $ pulumi import azure-native:app:ContainerApp testcontainerAppTcp /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/containerApps/{containerAppName}
/// ```
class ContainerApp extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Non versioned Container App configuration properties.
  late final pulumi.Output<ConfigurationResponse?> configuration;
  /// Id used to verify domain name ownership
  late final pulumi.Output<String> customDomainVerificationId;
  /// Any errors that occurred during deployment
  late final pulumi.Output<String> deploymentErrors;
  /// Resource ID of environment.
  late final pulumi.Output<String?> environmentId;
  /// The endpoint of the eventstream of the container app.
  late final pulumi.Output<String> eventStreamEndpoint;
  /// The complex type of the extended location.
  late final pulumi.Output<ExtendedLocationResponse?> extendedLocation;
  /// managed identities for the Container App to interact with other Azure services without maintaining any secrets or credentials in code.
  late final pulumi.Output<ManagedServiceIdentityResponse?> identity;
  /// Metadata used to render different experiences for resources of the same type; e.g. WorkflowApp is a kind of Microsoft.App/ContainerApps type. If supported, the resource provider must validate and persist this value.
  late final pulumi.Output<String?> kind;
  /// Name of the latest ready revision of the Container App.
  late final pulumi.Output<String> latestReadyRevisionName;
  /// Fully Qualified Domain Name of the latest revision of the Container App.
  late final pulumi.Output<String> latestRevisionFqdn;
  /// Name of the latest revision of the Container App.
  late final pulumi.Output<String> latestRevisionName;
  /// The geo-location where the resource lives
  late final pulumi.Output<String> location;
  /// The fully qualified resource ID of the resource that manages this resource. Indicates if this resource is managed by another Azure resource. If this is present, complete mode deployment will not delete the resource if it is removed from the template since it is managed by another resource.
  late final pulumi.Output<String?> managedBy;
  /// Deprecated. Resource ID of the Container App's environment.
  late final pulumi.Output<String?> managedEnvironmentId;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Outbound IP Addresses for container app.
  late final pulumi.Output<List<String>> outboundIpAddresses;
  /// Container App auto patch configuration.
  late final pulumi.Output<ContainerAppResponsePatchingConfiguration?> patchingConfiguration;
  /// Provisioning state of the Container App.
  late final pulumi.Output<String> provisioningState;
  /// Running status of the Container App.
  late final pulumi.Output<String> runningStatus;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Container App versioned application definition.
  late final pulumi.Output<TemplateResponse?> template;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Workload profile name to pin for container app execution.
  late final pulumi.Output<String?> workloadProfileName;

  /// Creates a new [ContainerApp].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ContainerApp]. {@macro pulumi_app_container_app_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ContainerApp(
    String name, {
    ContainerAppArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:ContainerApp',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.configuration = registerOutput<ConfigurationResponse?>('configuration');
    this.customDomainVerificationId = registerOutput<String>('customDomainVerificationId');
    this.deploymentErrors = registerOutput<String>('deploymentErrors');
    this.environmentId = registerOutput<String?>('environmentId');
    this.eventStreamEndpoint = registerOutput<String>('eventStreamEndpoint');
    this.extendedLocation = registerOutput<ExtendedLocationResponse?>('extendedLocation');
    this.identity = registerOutput<ManagedServiceIdentityResponse?>('identity');
    this.kind = registerOutput<String?>('kind');
    this.latestReadyRevisionName = registerOutput<String>('latestReadyRevisionName');
    this.latestRevisionFqdn = registerOutput<String>('latestRevisionFqdn');
    this.latestRevisionName = registerOutput<String>('latestRevisionName');
    this.location = registerOutput<String>('location');
    this.managedBy = registerOutput<String?>('managedBy');
    this.managedEnvironmentId = registerOutput<String?>('managedEnvironmentId');
    this.name = registerOutput<String>('name');
    this.outboundIpAddresses = registerOutput<List<String>>('outboundIpAddresses');
    this.patchingConfiguration = registerOutput<ContainerAppResponsePatchingConfiguration?>('patchingConfiguration');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.runningStatus = registerOutput<String>('runningStatus');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.template = registerOutput<TemplateResponse?>('template');
    this.type = registerOutput<String>('type');
    this.workloadProfileName = registerOutput<String?>('workloadProfileName');
  }
}
