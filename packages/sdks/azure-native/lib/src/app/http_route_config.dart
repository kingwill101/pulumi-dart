import 'package:pulumi/pulumi.dart' as pulumi;
import 'http_route_config_args.dart';
import 'http_route_config_response_properties.dart';
import 'system_data_response.dart';

/// Advanced Ingress routing for path/header based routing for a Container App Environment
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2024-10-02-preview.
///
/// Other available API versions: 2024-10-02-preview, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or Update Http Route
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var httpRouteConfig = new AzureNative.App.HttpRouteConfig("httpRouteConfig", new()
///     {
///         EnvironmentName = "testcontainerenv",
///         HttpRouteName = "httproutefriendlyname",
///         Properties = new AzureNative.App.Inputs.HttpRouteConfigPropertiesArgs
///         {
///             CustomDomains = new[]
///             {
///                 new AzureNative.App.Inputs.CustomDomainArgs
///                 {
///                     BindingType = AzureNative.App.BindingType.SniEnabled,
///                     CertificateId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///                     Name = "example.com",
///                 },
///             },
///             Rules = new[]
///             {
///                 new AzureNative.App.Inputs.HttpRouteRuleArgs
///                 {
///                     Description = "random-description",
///                     Routes = new[]
///                     {
///                         new AzureNative.App.Inputs.HttpRouteArgs
///                         {
///                             Action = new AzureNative.App.Inputs.HttpRouteActionArgs
///                             {
///                                 PrefixRewrite = "/v1/api",
///                             },
///                             Match = new AzureNative.App.Inputs.HttpRouteMatchArgs
///                             {
///                                 CaseSensitive = true,
///                                 Path = "/v1",
///                             },
///                         },
///                     },
///                     Targets = new[]
///                     {
///                         new AzureNative.App.Inputs.HttpRouteTargetArgs
///                         {
///                             ContainerApp = "capp-1",
///                             Revision = "rev-1",
///                             Weight = 100,
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "examplerg",
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
/// 		_, err := app.NewHttpRouteConfig(ctx, "httpRouteConfig", &app.HttpRouteConfigArgs{
/// 			EnvironmentName: pulumi.String("testcontainerenv"),
/// 			HttpRouteName:   pulumi.String("httproutefriendlyname"),
/// 			Properties: &app.HttpRouteConfigPropertiesArgs{
/// 				CustomDomains: app.CustomDomainArray{
/// 					&app.CustomDomainArgs{
/// 						BindingType:   pulumi.String(app.BindingTypeSniEnabled),
/// 						CertificateId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1"),
/// 						Name:          pulumi.String("example.com"),
/// 					},
/// 				},
/// 				Rules: app.HttpRouteRuleArray{
/// 					&app.HttpRouteRuleArgs{
/// 						Description: pulumi.String("random-description"),
/// 						Routes: app.HttpRouteArray{
/// 							&app.HttpRouteArgs{
/// 								Action: &app.HttpRouteActionArgs{
/// 									PrefixRewrite: pulumi.String("/v1/api"),
/// 								},
/// 								Match: &app.HttpRouteMatchArgs{
/// 									CaseSensitive: pulumi.Bool(true),
/// 									Path:          pulumi.String("/v1"),
/// 								},
/// 							},
/// 						},
/// 						Targets: app.HttpRouteTargetArray{
/// 							&app.HttpRouteTargetArgs{
/// 								ContainerApp: pulumi.String("capp-1"),
/// 								Revision:     pulumi.String("rev-1"),
/// 								Weight:       pulumi.Int(100),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// resource "azure-native_app_httprouteconfig" "httpRouteConfig" {
///   environment_name = "testcontainerenv"
///   http_route_name  = "httproutefriendlyname"
///   properties = {
///     custom_domains = [{
///       "bindingType"   = "SniEnabled"
///       "certificateId" = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1"
///       "name"          = "example.com"
///     }]
///     rules = [{
///       "description" = "random-description"
///       "routes" = [{
///         "action" = {
///           "prefixRewrite" = "/v1/api"
///         }
///         "match" = {
///           "caseSensitive" = true
///           "path"          = "/v1"
///         }
///       }]
///       "targets" = [{
///         "containerApp" = "capp-1"
///         "revision"     = "rev-1"
///         "weight"       = 100
///       }]
///     }]
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.HttpRouteConfig;
/// import com.pulumi.azurenative.app.HttpRouteConfigArgs;
/// import com.pulumi.azurenative.app.inputs.HttpRouteConfigPropertiesArgs;
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
///         var httpRouteConfig = new HttpRouteConfig("httpRouteConfig", HttpRouteConfigArgs.builder()
///             .environmentName("testcontainerenv")
///             .httpRouteName("httproutefriendlyname")
///             .properties(HttpRouteConfigPropertiesArgs.builder()
///                 .customDomains(CustomDomainArgs.builder()
///                     .bindingType("SniEnabled")
///                     .certificateId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1")
///                     .name("example.com")
///                     .build())
///                 .rules(HttpRouteRuleArgs.builder()
///                     .description("random-description")
///                     .routes(HttpRouteArgs.builder()
///                         .action(HttpRouteActionArgs.builder()
///                             .prefixRewrite("/v1/api")
///                             .build())
///                         .match(HttpRouteMatchArgs.builder()
///                             .caseSensitive(true)
///                             .path("/v1")
///                             .build())
///                         .build())
///                     .targets(HttpRouteTargetArgs.builder()
///                         .containerApp("capp-1")
///                         .revision("rev-1")
///                         .weight(100)
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const httpRouteConfig = new azure_native.app.HttpRouteConfig("httpRouteConfig", {
///     environmentName: "testcontainerenv",
///     httpRouteName: "httproutefriendlyname",
///     properties: {
///         customDomains: [{
///             bindingType: azure_native.app.BindingType.SniEnabled,
///             certificateId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///             name: "example.com",
///         }],
///         rules: [{
///             description: "random-description",
///             routes: [{
///                 action: {
///                     prefixRewrite: "/v1/api",
///                 },
///                 match: {
///                     caseSensitive: true,
///                     path: "/v1",
///                 },
///             }],
///             targets: [{
///                 containerApp: "capp-1",
///                 revision: "rev-1",
///                 weight: 100,
///             }],
///         }],
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// http_route_config = azure_native.app.HttpRouteConfig("httpRouteConfig",
///     environment_name="testcontainerenv",
///     http_route_name="httproutefriendlyname",
///     properties={
///         "custom_domains": [{
///             "binding_type": azure_native.app.BindingType.SNI_ENABLED,
///             "certificate_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///             "name": "example.com",
///         }],
///         "rules": [{
///             "description": "random-description",
///             "routes": [{
///                 "action": {
///                     "prefix_rewrite": "/v1/api",
///                 },
///                 "match": {
///                     "case_sensitive": True,
///                     "path": "/v1",
///                 },
///             }],
///             "targets": [{
///                 "container_app": "capp-1",
///                 "revision": "rev-1",
///                 "weight": 100,
///             }],
///         }],
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   httpRouteConfig:
///     type: azure-native:app:HttpRouteConfig
///     properties:
///       environmentName: testcontainerenv
///       httpRouteName: httproutefriendlyname
///       properties:
///         customDomains:
///           - bindingType: SniEnabled
///             certificateId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1
///             name: example.com
///         rules:
///           - description: random-description
///             routes:
///               - action:
///                   prefixRewrite: /v1/api
///                 match:
///                   caseSensitive: true
///                   path: /v1
///             targets:
///               - containerApp: capp-1
///                 revision: rev-1
///                 weight: 100
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Http Route Path Separated Prefix Rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var httpRouteConfig = new AzureNative.App.HttpRouteConfig("httpRouteConfig", new()
///     {
///         EnvironmentName = "testcontainerenv",
///         HttpRouteName = "httproutefriendlyname",
///         Properties = new AzureNative.App.Inputs.HttpRouteConfigPropertiesArgs
///         {
///             CustomDomains = new[]
///             {
///                 new AzureNative.App.Inputs.CustomDomainArgs
///                 {
///                     BindingType = AzureNative.App.BindingType.Disabled,
///                     CertificateId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///                     Name = "example.com",
///                 },
///             },
///             Rules = new[]
///             {
///                 new AzureNative.App.Inputs.HttpRouteRuleArgs
///                 {
///                     Description = "random-description",
///                     Routes = new[]
///                     {
///                         new AzureNative.App.Inputs.HttpRouteArgs
///                         {
///                             Action = new AzureNative.App.Inputs.HttpRouteActionArgs
///                             {
///                                 PrefixRewrite = "/v1/api",
///                             },
///                             Match = new AzureNative.App.Inputs.HttpRouteMatchArgs
///                             {
///                                 CaseSensitive = true,
///                                 PathSeparatedPrefix = "/v1",
///                             },
///                         },
///                     },
///                     Targets = new[]
///                     {
///                         new AzureNative.App.Inputs.HttpRouteTargetArgs
///                         {
///                             ContainerApp = "capp-1",
///                             Label = "label-1",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "examplerg",
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
/// 		_, err := app.NewHttpRouteConfig(ctx, "httpRouteConfig", &app.HttpRouteConfigArgs{
/// 			EnvironmentName: pulumi.String("testcontainerenv"),
/// 			HttpRouteName:   pulumi.String("httproutefriendlyname"),
/// 			Properties: &app.HttpRouteConfigPropertiesArgs{
/// 				CustomDomains: app.CustomDomainArray{
/// 					&app.CustomDomainArgs{
/// 						BindingType:   pulumi.String(app.BindingTypeDisabled),
/// 						CertificateId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1"),
/// 						Name:          pulumi.String("example.com"),
/// 					},
/// 				},
/// 				Rules: app.HttpRouteRuleArray{
/// 					&app.HttpRouteRuleArgs{
/// 						Description: pulumi.String("random-description"),
/// 						Routes: app.HttpRouteArray{
/// 							&app.HttpRouteArgs{
/// 								Action: &app.HttpRouteActionArgs{
/// 									PrefixRewrite: pulumi.String("/v1/api"),
/// 								},
/// 								Match: &app.HttpRouteMatchArgs{
/// 									CaseSensitive:       pulumi.Bool(true),
/// 									PathSeparatedPrefix: pulumi.String("/v1"),
/// 								},
/// 							},
/// 						},
/// 						Targets: app.HttpRouteTargetArray{
/// 							&app.HttpRouteTargetArgs{
/// 								ContainerApp: pulumi.String("capp-1"),
/// 								Label:        pulumi.String("label-1"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// resource "azure-native_app_httprouteconfig" "httpRouteConfig" {
///   environment_name = "testcontainerenv"
///   http_route_name  = "httproutefriendlyname"
///   properties = {
///     custom_domains = [{
///       "bindingType"   = "Disabled"
///       "certificateId" = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1"
///       "name"          = "example.com"
///     }]
///     rules = [{
///       "description" = "random-description"
///       "routes" = [{
///         "action" = {
///           "prefixRewrite" = "/v1/api"
///         }
///         "match" = {
///           "caseSensitive"       = true
///           "pathSeparatedPrefix" = "/v1"
///         }
///       }]
///       "targets" = [{
///         "containerApp" = "capp-1"
///         "label"        = "label-1"
///       }]
///     }]
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.HttpRouteConfig;
/// import com.pulumi.azurenative.app.HttpRouteConfigArgs;
/// import com.pulumi.azurenative.app.inputs.HttpRouteConfigPropertiesArgs;
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
///         var httpRouteConfig = new HttpRouteConfig("httpRouteConfig", HttpRouteConfigArgs.builder()
///             .environmentName("testcontainerenv")
///             .httpRouteName("httproutefriendlyname")
///             .properties(HttpRouteConfigPropertiesArgs.builder()
///                 .customDomains(CustomDomainArgs.builder()
///                     .bindingType("Disabled")
///                     .certificateId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1")
///                     .name("example.com")
///                     .build())
///                 .rules(HttpRouteRuleArgs.builder()
///                     .description("random-description")
///                     .routes(HttpRouteArgs.builder()
///                         .action(HttpRouteActionArgs.builder()
///                             .prefixRewrite("/v1/api")
///                             .build())
///                         .match(HttpRouteMatchArgs.builder()
///                             .caseSensitive(true)
///                             .pathSeparatedPrefix("/v1")
///                             .build())
///                         .build())
///                     .targets(HttpRouteTargetArgs.builder()
///                         .containerApp("capp-1")
///                         .label("label-1")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const httpRouteConfig = new azure_native.app.HttpRouteConfig("httpRouteConfig", {
///     environmentName: "testcontainerenv",
///     httpRouteName: "httproutefriendlyname",
///     properties: {
///         customDomains: [{
///             bindingType: azure_native.app.BindingType.Disabled,
///             certificateId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///             name: "example.com",
///         }],
///         rules: [{
///             description: "random-description",
///             routes: [{
///                 action: {
///                     prefixRewrite: "/v1/api",
///                 },
///                 match: {
///                     caseSensitive: true,
///                     pathSeparatedPrefix: "/v1",
///                 },
///             }],
///             targets: [{
///                 containerApp: "capp-1",
///                 label: "label-1",
///             }],
///         }],
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// http_route_config = azure_native.app.HttpRouteConfig("httpRouteConfig",
///     environment_name="testcontainerenv",
///     http_route_name="httproutefriendlyname",
///     properties={
///         "custom_domains": [{
///             "binding_type": azure_native.app.BindingType.DISABLED,
///             "certificate_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///             "name": "example.com",
///         }],
///         "rules": [{
///             "description": "random-description",
///             "routes": [{
///                 "action": {
///                     "prefix_rewrite": "/v1/api",
///                 },
///                 "match": {
///                     "case_sensitive": True,
///                     "path_separated_prefix": "/v1",
///                 },
///             }],
///             "targets": [{
///                 "container_app": "capp-1",
///                 "label": "label-1",
///             }],
///         }],
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   httpRouteConfig:
///     type: azure-native:app:HttpRouteConfig
///     properties:
///       environmentName: testcontainerenv
///       httpRouteName: httproutefriendlyname
///       properties:
///         customDomains:
///           - bindingType: Disabled
///             certificateId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1
///             name: example.com
///         rules:
///           - description: random-description
///             routes:
///               - action:
///                   prefixRewrite: /v1/api
///                 match:
///                   caseSensitive: true
///                   pathSeparatedPrefix: /v1
///             targets:
///               - containerApp: capp-1
///                 label: label-1
///       resourceGroupName: examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or Update Http Route Prefix Rule
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var httpRouteConfig = new AzureNative.App.HttpRouteConfig("httpRouteConfig", new()
///     {
///         EnvironmentName = "testcontainerenv",
///         HttpRouteName = "httproutefriendlyname",
///         Properties = new AzureNative.App.Inputs.HttpRouteConfigPropertiesArgs
///         {
///             CustomDomains = new[]
///             {
///                 new AzureNative.App.Inputs.CustomDomainArgs
///                 {
///                     BindingType = AzureNative.App.BindingType.Disabled,
///                     CertificateId = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///                     Name = "example.com",
///                 },
///             },
///             Rules = new[]
///             {
///                 new AzureNative.App.Inputs.HttpRouteRuleArgs
///                 {
///                     Description = "random-description",
///                     Routes = new[]
///                     {
///                         new AzureNative.App.Inputs.HttpRouteArgs
///                         {
///                             Action = new AzureNative.App.Inputs.HttpRouteActionArgs
///                             {
///                                 PrefixRewrite = "/v1/api",
///                             },
///                             Match = new AzureNative.App.Inputs.HttpRouteMatchArgs
///                             {
///                                 CaseSensitive = true,
///                                 Prefix = "/v1",
///                             },
///                         },
///                     },
///                     Targets = new[]
///                     {
///                         new AzureNative.App.Inputs.HttpRouteTargetArgs
///                         {
///                             ContainerApp = "capp-1",
///                             Label = "label-1",
///                         },
///                     },
///                 },
///             },
///         },
///         ResourceGroupName = "examplerg",
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
/// 		_, err := app.NewHttpRouteConfig(ctx, "httpRouteConfig", &app.HttpRouteConfigArgs{
/// 			EnvironmentName: pulumi.String("testcontainerenv"),
/// 			HttpRouteName:   pulumi.String("httproutefriendlyname"),
/// 			Properties: &app.HttpRouteConfigPropertiesArgs{
/// 				CustomDomains: app.CustomDomainArray{
/// 					&app.CustomDomainArgs{
/// 						BindingType:   pulumi.String(app.BindingTypeDisabled),
/// 						CertificateId: pulumi.String("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1"),
/// 						Name:          pulumi.String("example.com"),
/// 					},
/// 				},
/// 				Rules: app.HttpRouteRuleArray{
/// 					&app.HttpRouteRuleArgs{
/// 						Description: pulumi.String("random-description"),
/// 						Routes: app.HttpRouteArray{
/// 							&app.HttpRouteArgs{
/// 								Action: &app.HttpRouteActionArgs{
/// 									PrefixRewrite: pulumi.String("/v1/api"),
/// 								},
/// 								Match: &app.HttpRouteMatchArgs{
/// 									CaseSensitive: pulumi.Bool(true),
/// 									Prefix:        pulumi.String("/v1"),
/// 								},
/// 							},
/// 						},
/// 						Targets: app.HttpRouteTargetArray{
/// 							&app.HttpRouteTargetArgs{
/// 								ContainerApp: pulumi.String("capp-1"),
/// 								Label:        pulumi.String("label-1"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
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
/// resource "azure-native_app_httprouteconfig" "httpRouteConfig" {
///   environment_name = "testcontainerenv"
///   http_route_name  = "httproutefriendlyname"
///   properties = {
///     custom_domains = [{
///       "bindingType"   = "Disabled"
///       "certificateId" = "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1"
///       "name"          = "example.com"
///     }]
///     rules = [{
///       "description" = "random-description"
///       "routes" = [{
///         "action" = {
///           "prefixRewrite" = "/v1/api"
///         }
///         "match" = {
///           "caseSensitive" = true
///           "prefix"        = "/v1"
///         }
///       }]
///       "targets" = [{
///         "containerApp" = "capp-1"
///         "label"        = "label-1"
///       }]
///     }]
///   }
///   resource_group_name = "examplerg"
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
/// import com.pulumi.azurenative.app.HttpRouteConfig;
/// import com.pulumi.azurenative.app.HttpRouteConfigArgs;
/// import com.pulumi.azurenative.app.inputs.HttpRouteConfigPropertiesArgs;
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
///         var httpRouteConfig = new HttpRouteConfig("httpRouteConfig", HttpRouteConfigArgs.builder()
///             .environmentName("testcontainerenv")
///             .httpRouteName("httproutefriendlyname")
///             .properties(HttpRouteConfigPropertiesArgs.builder()
///                 .customDomains(CustomDomainArgs.builder()
///                     .bindingType("Disabled")
///                     .certificateId("/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1")
///                     .name("example.com")
///                     .build())
///                 .rules(HttpRouteRuleArgs.builder()
///                     .description("random-description")
///                     .routes(HttpRouteArgs.builder()
///                         .action(HttpRouteActionArgs.builder()
///                             .prefixRewrite("/v1/api")
///                             .build())
///                         .match(HttpRouteMatchArgs.builder()
///                             .caseSensitive(true)
///                             .prefix("/v1")
///                             .build())
///                         .build())
///                     .targets(HttpRouteTargetArgs.builder()
///                         .containerApp("capp-1")
///                         .label("label-1")
///                         .build())
///                     .build())
///                 .build())
///             .resourceGroupName("examplerg")
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
/// const httpRouteConfig = new azure_native.app.HttpRouteConfig("httpRouteConfig", {
///     environmentName: "testcontainerenv",
///     httpRouteName: "httproutefriendlyname",
///     properties: {
///         customDomains: [{
///             bindingType: azure_native.app.BindingType.Disabled,
///             certificateId: "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///             name: "example.com",
///         }],
///         rules: [{
///             description: "random-description",
///             routes: [{
///                 action: {
///                     prefixRewrite: "/v1/api",
///                 },
///                 match: {
///                     caseSensitive: true,
///                     prefix: "/v1",
///                 },
///             }],
///             targets: [{
///                 containerApp: "capp-1",
///                 label: "label-1",
///             }],
///         }],
///     },
///     resourceGroupName: "examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// http_route_config = azure_native.app.HttpRouteConfig("httpRouteConfig",
///     environment_name="testcontainerenv",
///     http_route_name="httproutefriendlyname",
///     properties={
///         "custom_domains": [{
///             "binding_type": azure_native.app.BindingType.DISABLED,
///             "certificate_id": "/subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1",
///             "name": "example.com",
///         }],
///         "rules": [{
///             "description": "random-description",
///             "routes": [{
///                 "action": {
///                     "prefix_rewrite": "/v1/api",
///                 },
///                 "match": {
///                     "case_sensitive": True,
///                     "prefix": "/v1",
///                 },
///             }],
///             "targets": [{
///                 "container_app": "capp-1",
///                 "label": "label-1",
///             }],
///         }],
///     },
///     resource_group_name="examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   httpRouteConfig:
///     type: azure-native:app:HttpRouteConfig
///     properties:
///       environmentName: testcontainerenv
///       httpRouteName: httproutefriendlyname
///       properties:
///         customDomains:
///           - bindingType: Disabled
///             certificateId: /subscriptions/34adfa4f-cedf-4dc0-ba29-b6d1a69ab345/resourceGroups/examplerg/providers/Microsoft.App/managedEnvironments/testcontainerenv/certificates/certificate-1
///             name: example.com
///         rules:
///           - description: random-description
///             routes:
///               - action:
///                   prefixRewrite: /v1/api
///                 match:
///                   caseSensitive: true
///                   prefix: /v1
///             targets:
///               - containerApp: capp-1
///                 label: label-1
///       resourceGroupName: examplerg
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
/// $ pulumi import azure-native:app:HttpRouteConfig myresource1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/httpRouteConfigs/{httpRouteName}
/// ```
class HttpRouteConfig extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Http Route Config properties
  late final pulumi.Output<HttpRouteConfigResponseProperties> properties;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [HttpRouteConfig].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [HttpRouteConfig]. {@macro pulumi_app_http_route_config_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  HttpRouteConfig(
    String name, {
    HttpRouteConfigArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:HttpRouteConfig',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HttpRouteConfigResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpRouteConfigResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }

  /// Creates a typed reference to an existing [HttpRouteConfig] resource.
  HttpRouteConfig.reference(String urn)
    : super(
        'azure-native:app:HttpRouteConfig',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    this.name = registerOutput<String>('name');
    properties = registerOutput<HttpRouteConfigResponseProperties>('properties', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return HttpRouteConfigResponseProperties.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
