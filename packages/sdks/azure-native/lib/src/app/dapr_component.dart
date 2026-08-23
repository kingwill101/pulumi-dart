import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_component_args.dart';
import 'system_data_response.dart';

/// Dapr Component.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2022-10-01.
///
/// Other available API versions: 2022-10-01, 2022-11-01-preview, 2023-04-01-preview, 2023-05-01, 2023-05-02-preview, 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-03-01, 2024-08-02-preview, 2024-10-02-preview, 2025-01-01, 2025-07-01, 2025-10-02-preview, 2026-01-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update dapr component with secret store component
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprComponent = new AzureNative.App.DaprComponent("daprComponent", new()
///     {
///         ComponentName = "reddog",
///         ComponentType = "state.azure.cosmosdb",
///         EnvironmentName = "myenvironment",
///         IgnoreErrors = false,
///         InitTimeout = "50s",
///         Metadata = new[]
///         {
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "url",
///                 Value = "<COSMOS-URL>",
///             },
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "database",
///                 Value = "itemsDB",
///             },
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "collection",
///                 Value = "items",
///             },
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "masterkey",
///                 SecretRef = "masterkey",
///             },
///         },
///         ResourceGroupName = "examplerg",
///         Scopes = new[]
///         {
///             "container-app-1",
///             "container-app-2",
///         },
///         SecretStoreComponent = "my-secret-store",
///         ServiceComponentBind = new[]
///         {
///             new AzureNative.App.Inputs.DaprComponentServiceBindingArgs
///             {
///                 Metadata = new AzureNative.App.Inputs.DaprServiceBindMetadataArgs
///                 {
///                     Name = "daprcomponentBind",
///                     Value = "redis-bind",
///                 },
///                 Name = "statestore",
///                 ServiceId = "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis",
///             },
///         },
///         Version = "v1",
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
/// 		_, err := app.NewDaprComponent(ctx, "daprComponent", &app.DaprComponentArgs{
/// 			ComponentName:   pulumi.String("reddog"),
/// 			ComponentType:   pulumi.String("state.azure.cosmosdb"),
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			IgnoreErrors:    pulumi.Bool(false),
/// 			InitTimeout:     pulumi.String("50s"),
/// 			Metadata: app.DaprMetadataArray{
/// 				&app.DaprMetadataArgs{
/// 					Name:  pulumi.String("url"),
/// 					Value: pulumi.String("<COSMOS-URL>"),
/// 				},
/// 				&app.DaprMetadataArgs{
/// 					Name:  pulumi.String("database"),
/// 					Value: pulumi.String("itemsDB"),
/// 				},
/// 				&app.DaprMetadataArgs{
/// 					Name:  pulumi.String("collection"),
/// 					Value: pulumi.String("items"),
/// 				},
/// 				&app.DaprMetadataArgs{
/// 					Name:      pulumi.String("masterkey"),
/// 					SecretRef: pulumi.String("masterkey"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("container-app-1"),
/// 				pulumi.String("container-app-2"),
/// 			},
/// 			SecretStoreComponent: pulumi.String("my-secret-store"),
/// 			ServiceComponentBind: app.DaprComponentServiceBindingArray{
/// 				&app.DaprComponentServiceBindingArgs{
/// 					Metadata: &app.DaprServiceBindMetadataArgs{
/// 						Name:  pulumi.String("daprcomponentBind"),
/// 						Value: pulumi.String("redis-bind"),
/// 					},
/// 					Name:      pulumi.String("statestore"),
/// 					ServiceId: pulumi.String("/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis"),
/// 				},
/// 			},
/// 			Version: pulumi.String("v1"),
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
/// resource "azure-native_app_daprcomponent" "daprComponent" {
///   component_name   = "reddog"
///   component_type   = "state.azure.cosmosdb"
///   environment_name = "myenvironment"
///   ignore_errors    = false
///   init_timeout     = "50s"
///   metadata {
///     name  = "url"
///     value = "<COSMOS-URL>"
///   }
///   metadata {
///     name  = "database"
///     value = "itemsDB"
///   }
///   metadata {
///     name  = "collection"
///     value = "items"
///   }
///   metadata {
///     name       = "masterkey"
///     secret_ref = "masterkey"
///   }
///   resource_group_name    = "examplerg"
///   scopes                 = ["container-app-1", "container-app-2"]
///   secret_store_component = "my-secret-store"
///   service_component_bind {
///     metadata = {
///       name  = "daprcomponentBind"
///       value = "redis-bind"
///     }
///     name       = "statestore"
///     service_id = "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis"
///   }
///   version = "v1"
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
/// import com.pulumi.azurenative.app.DaprComponent;
/// import com.pulumi.azurenative.app.DaprComponentArgs;
/// import com.pulumi.azurenative.app.inputs.DaprMetadataArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentServiceBindingArgs;
/// import com.pulumi.azurenative.app.inputs.DaprServiceBindMetadataArgs;
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
///         var daprComponent = new DaprComponent("daprComponent", DaprComponentArgs.builder()
///             .componentName("reddog")
///             .componentType("state.azure.cosmosdb")
///             .environmentName("myenvironment")
///             .ignoreErrors(false)
///             .initTimeout("50s")
///             .metadata(
///                 DaprMetadataArgs.builder()
///                     .name("url")
///                     .value("<COSMOS-URL>")
///                     .build(),
///                 DaprMetadataArgs.builder()
///                     .name("database")
///                     .value("itemsDB")
///                     .build(),
///                 DaprMetadataArgs.builder()
///                     .name("collection")
///                     .value("items")
///                     .build(),
///                 DaprMetadataArgs.builder()
///                     .name("masterkey")
///                     .secretRef("masterkey")
///                     .build())
///             .resourceGroupName("examplerg")
///             .scopes(
///                 "container-app-1",
///                 "container-app-2")
///             .secretStoreComponent("my-secret-store")
///             .serviceComponentBind(DaprComponentServiceBindingArgs.builder()
///                 .metadata(DaprServiceBindMetadataArgs.builder()
///                     .name("daprcomponentBind")
///                     .value("redis-bind")
///                     .build())
///                 .name("statestore")
///                 .serviceId("/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis")
///                 .build())
///             .version("v1")
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
/// const daprComponent = new azure_native.app.DaprComponent("daprComponent", {
///     componentName: "reddog",
///     componentType: "state.azure.cosmosdb",
///     environmentName: "myenvironment",
///     ignoreErrors: false,
///     initTimeout: "50s",
///     metadata: [
///         {
///             name: "url",
///             value: "<COSMOS-URL>",
///         },
///         {
///             name: "database",
///             value: "itemsDB",
///         },
///         {
///             name: "collection",
///             value: "items",
///         },
///         {
///             name: "masterkey",
///             secretRef: "masterkey",
///         },
///     ],
///     resourceGroupName: "examplerg",
///     scopes: [
///         "container-app-1",
///         "container-app-2",
///     ],
///     secretStoreComponent: "my-secret-store",
///     serviceComponentBind: [{
///         metadata: {
///             name: "daprcomponentBind",
///             value: "redis-bind",
///         },
///         name: "statestore",
///         serviceId: "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis",
///     }],
///     version: "v1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_component = azure_native.app.DaprComponent("daprComponent",
///     component_name="reddog",
///     component_type="state.azure.cosmosdb",
///     environment_name="myenvironment",
///     ignore_errors=False,
///     init_timeout="50s",
///     metadata=[
///         {
///             "name": "url",
///             "value": "<COSMOS-URL>",
///         },
///         {
///             "name": "database",
///             "value": "itemsDB",
///         },
///         {
///             "name": "collection",
///             "value": "items",
///         },
///         {
///             "name": "masterkey",
///             "secret_ref": "masterkey",
///         },
///     ],
///     resource_group_name="examplerg",
///     scopes=[
///         "container-app-1",
///         "container-app-2",
///     ],
///     secret_store_component="my-secret-store",
///     service_component_bind=[{
///         "metadata": {
///             "name": "daprcomponentBind",
///             "value": "redis-bind",
///         },
///         "name": "statestore",
///         "service_id": "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis",
///     }],
///     version="v1")
///
/// ```
///
/// ```yaml
/// resources:
///   daprComponent:
///     type: azure-native:app:DaprComponent
///     properties:
///       componentName: reddog
///       componentType: state.azure.cosmosdb
///       environmentName: myenvironment
///       ignoreErrors: false
///       initTimeout: 50s
///       metadata:
///         - name: url
///           value: <COSMOS-URL>
///         - name: database
///           value: itemsDB
///         - name: collection
///           value: items
///         - name: masterkey
///           secretRef: masterkey
///       resourceGroupName: examplerg
///       scopes:
///         - container-app-1
///         - container-app-2
///       secretStoreComponent: my-secret-store
///       serviceComponentBind:
///         - metadata:
///             name: daprcomponentBind
///             value: redis-bind
///           name: statestore
///           serviceId: /subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis
///       version: v1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update dapr component with secrets
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprComponent = new AzureNative.App.DaprComponent("daprComponent", new()
///     {
///         ComponentName = "reddog",
///         ComponentType = "state.azure.cosmosdb",
///         EnvironmentName = "myenvironment",
///         IgnoreErrors = false,
///         InitTimeout = "50s",
///         Metadata = new[]
///         {
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "url",
///                 Value = "<COSMOS-URL>",
///             },
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "database",
///                 Value = "itemsDB",
///             },
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "collection",
///                 Value = "items",
///             },
///             new AzureNative.App.Inputs.DaprMetadataArgs
///             {
///                 Name = "masterkey",
///                 SecretRef = "masterkey",
///             },
///         },
///         ResourceGroupName = "examplerg",
///         Scopes = new[]
///         {
///             "container-app-1",
///             "container-app-2",
///         },
///         Secrets = new[]
///         {
///             new AzureNative.App.Inputs.SecretArgs
///             {
///                 Name = "masterkey",
///                 Value = "keyvalue",
///             },
///         },
///         ServiceComponentBind = new[]
///         {
///             new AzureNative.App.Inputs.DaprComponentServiceBindingArgs
///             {
///                 Metadata = new AzureNative.App.Inputs.DaprServiceBindMetadataArgs
///                 {
///                     Name = "daprcomponentBind",
///                     Value = "redis-bind",
///                 },
///                 Name = "statestore",
///                 ServiceId = "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis",
///             },
///         },
///         Version = "v1",
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
/// 		_, err := app.NewDaprComponent(ctx, "daprComponent", &app.DaprComponentArgs{
/// 			ComponentName:   pulumi.String("reddog"),
/// 			ComponentType:   pulumi.String("state.azure.cosmosdb"),
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			IgnoreErrors:    pulumi.Bool(false),
/// 			InitTimeout:     pulumi.String("50s"),
/// 			Metadata: app.DaprMetadataArray{
/// 				&app.DaprMetadataArgs{
/// 					Name:  pulumi.String("url"),
/// 					Value: pulumi.String("<COSMOS-URL>"),
/// 				},
/// 				&app.DaprMetadataArgs{
/// 					Name:  pulumi.String("database"),
/// 					Value: pulumi.String("itemsDB"),
/// 				},
/// 				&app.DaprMetadataArgs{
/// 					Name:  pulumi.String("collection"),
/// 					Value: pulumi.String("items"),
/// 				},
/// 				&app.DaprMetadataArgs{
/// 					Name:      pulumi.String("masterkey"),
/// 					SecretRef: pulumi.String("masterkey"),
/// 				},
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("container-app-1"),
/// 				pulumi.String("container-app-2"),
/// 			},
/// 			Secrets: app.SecretArray{
/// 				&app.SecretArgs{
/// 					Name:  pulumi.String("masterkey"),
/// 					Value: pulumi.String("keyvalue"),
/// 				},
/// 			},
/// 			ServiceComponentBind: app.DaprComponentServiceBindingArray{
/// 				&app.DaprComponentServiceBindingArgs{
/// 					Metadata: &app.DaprServiceBindMetadataArgs{
/// 						Name:  pulumi.String("daprcomponentBind"),
/// 						Value: pulumi.String("redis-bind"),
/// 					},
/// 					Name:      pulumi.String("statestore"),
/// 					ServiceId: pulumi.String("/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis"),
/// 				},
/// 			},
/// 			Version: pulumi.String("v1"),
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
/// resource "azure-native_app_daprcomponent" "daprComponent" {
///   component_name   = "reddog"
///   component_type   = "state.azure.cosmosdb"
///   environment_name = "myenvironment"
///   ignore_errors    = false
///   init_timeout     = "50s"
///   metadata {
///     name  = "url"
///     value = "<COSMOS-URL>"
///   }
///   metadata {
///     name  = "database"
///     value = "itemsDB"
///   }
///   metadata {
///     name  = "collection"
///     value = "items"
///   }
///   metadata {
///     name       = "masterkey"
///     secret_ref = "masterkey"
///   }
///   resource_group_name = "examplerg"
///   scopes              = ["container-app-1", "container-app-2"]
///   secrets {
///     name  = "masterkey"
///     value = "keyvalue"
///   }
///   service_component_bind {
///     metadata = {
///       name  = "daprcomponentBind"
///       value = "redis-bind"
///     }
///     name       = "statestore"
///     service_id = "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis"
///   }
///   version = "v1"
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
/// import com.pulumi.azurenative.app.DaprComponent;
/// import com.pulumi.azurenative.app.DaprComponentArgs;
/// import com.pulumi.azurenative.app.inputs.DaprMetadataArgs;
/// import com.pulumi.azurenative.app.inputs.SecretArgs;
/// import com.pulumi.azurenative.app.inputs.DaprComponentServiceBindingArgs;
/// import com.pulumi.azurenative.app.inputs.DaprServiceBindMetadataArgs;
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
///         var daprComponent = new DaprComponent("daprComponent", DaprComponentArgs.builder()
///             .componentName("reddog")
///             .componentType("state.azure.cosmosdb")
///             .environmentName("myenvironment")
///             .ignoreErrors(false)
///             .initTimeout("50s")
///             .metadata(
///                 DaprMetadataArgs.builder()
///                     .name("url")
///                     .value("<COSMOS-URL>")
///                     .build(),
///                 DaprMetadataArgs.builder()
///                     .name("database")
///                     .value("itemsDB")
///                     .build(),
///                 DaprMetadataArgs.builder()
///                     .name("collection")
///                     .value("items")
///                     .build(),
///                 DaprMetadataArgs.builder()
///                     .name("masterkey")
///                     .secretRef("masterkey")
///                     .build())
///             .resourceGroupName("examplerg")
///             .scopes(
///                 "container-app-1",
///                 "container-app-2")
///             .secrets(SecretArgs.builder()
///                 .name("masterkey")
///                 .value("keyvalue")
///                 .build())
///             .serviceComponentBind(DaprComponentServiceBindingArgs.builder()
///                 .metadata(DaprServiceBindMetadataArgs.builder()
///                     .name("daprcomponentBind")
///                     .value("redis-bind")
///                     .build())
///                 .name("statestore")
///                 .serviceId("/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis")
///                 .build())
///             .version("v1")
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
/// const daprComponent = new azure_native.app.DaprComponent("daprComponent", {
///     componentName: "reddog",
///     componentType: "state.azure.cosmosdb",
///     environmentName: "myenvironment",
///     ignoreErrors: false,
///     initTimeout: "50s",
///     metadata: [
///         {
///             name: "url",
///             value: "<COSMOS-URL>",
///         },
///         {
///             name: "database",
///             value: "itemsDB",
///         },
///         {
///             name: "collection",
///             value: "items",
///         },
///         {
///             name: "masterkey",
///             secretRef: "masterkey",
///         },
///     ],
///     resourceGroupName: "examplerg",
///     scopes: [
///         "container-app-1",
///         "container-app-2",
///     ],
///     secrets: [{
///         name: "masterkey",
///         value: "keyvalue",
///     }],
///     serviceComponentBind: [{
///         metadata: {
///             name: "daprcomponentBind",
///             value: "redis-bind",
///         },
///         name: "statestore",
///         serviceId: "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis",
///     }],
///     version: "v1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_component = azure_native.app.DaprComponent("daprComponent",
///     component_name="reddog",
///     component_type="state.azure.cosmosdb",
///     environment_name="myenvironment",
///     ignore_errors=False,
///     init_timeout="50s",
///     metadata=[
///         {
///             "name": "url",
///             "value": "<COSMOS-URL>",
///         },
///         {
///             "name": "database",
///             "value": "itemsDB",
///         },
///         {
///             "name": "collection",
///             "value": "items",
///         },
///         {
///             "name": "masterkey",
///             "secret_ref": "masterkey",
///         },
///     ],
///     resource_group_name="examplerg",
///     scopes=[
///         "container-app-1",
///         "container-app-2",
///     ],
///     secrets=[{
///         "name": "masterkey",
///         "value": "keyvalue",
///     }],
///     service_component_bind=[{
///         "metadata": {
///             "name": "daprcomponentBind",
///             "value": "redis-bind",
///         },
///         "name": "statestore",
///         "service_id": "/subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis",
///     }],
///     version="v1")
///
/// ```
///
/// ```yaml
/// resources:
///   daprComponent:
///     type: azure-native:app:DaprComponent
///     properties:
///       componentName: reddog
///       componentType: state.azure.cosmosdb
///       environmentName: myenvironment
///       ignoreErrors: false
///       initTimeout: 50s
///       metadata:
///         - name: url
///           value: <COSMOS-URL>
///         - name: database
///           value: itemsDB
///         - name: collection
///           value: items
///         - name: masterkey
///           secretRef: masterkey
///       resourceGroupName: examplerg
///       scopes:
///         - container-app-1
///         - container-app-2
///       secrets:
///         - name: masterkey
///           value: keyvalue
///       serviceComponentBind:
///         - metadata:
///             name: daprcomponentBind
///             value: redis-bind
///           name: statestore
///           serviceId: /subscriptions/9f7371f1-b593-4c3c-84e2-9167806ad358/resourceGroups/ca-syn2-group/providers/Microsoft.App/containerapps/cappredis
///       version: v1
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
/// $ pulumi import azure-native:app:DaprComponent reddog /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/daprComponents/{componentName}
/// ```
class DaprComponent extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Component type
  late final pulumi.Output<String?> componentType;
  /// Boolean describing if the component errors are ignores
  late final pulumi.Output<bool?> ignoreErrors;
  /// Initialization timeout
  late final pulumi.Output<String?> initTimeout;
  /// Component metadata
  late final pulumi.Output<List<Map<String, dynamic>>?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Names of container apps that can use this Dapr component
  late final pulumi.Output<List<String>?> scopes;
  /// Name of a Dapr component to retrieve component secrets from
  late final pulumi.Output<String?> secretStoreComponent;
  /// Collection of secrets used by a Dapr component
  late final pulumi.Output<List<Map<String, dynamic>>?> secrets;
  /// List of container app services that are bound to the Dapr component
  late final pulumi.Output<List<Map<String, dynamic>>?> serviceComponentBind;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;
  /// Component version
  late final pulumi.Output<String?> version;

  /// Creates a new [DaprComponent].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaprComponent]. {@macro pulumi_app_dapr_component_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaprComponent(
    String name, {
    DaprComponentArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:DaprComponent',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    componentType = registerOutput<String?>('componentType');
    ignoreErrors = registerOutput<bool?>('ignoreErrors');
    initTimeout = registerOutput<String?>('initTimeout');
    metadata = registerOutput<List<Map<String, dynamic>>?>('metadata');
    this.name = registerOutput<String>('name');
    scopes = registerOutput<List<String>?>('scopes');
    secretStoreComponent = registerOutput<String?>('secretStoreComponent');
    secrets = registerOutput<List<Map<String, dynamic>>?>('secrets');
    serviceComponentBind = registerOutput<List<Map<String, dynamic>>?>('serviceComponentBind');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
    version = registerOutput<String?>('version');
  }
}
