import 'package:pulumi/pulumi.dart' as pulumi;
import 'dapr_subscription_args.dart';
import 'dapr_subscription_bulk_subscribe_options_response.dart';
import 'dapr_subscription_routes_response.dart';
import 'system_data_response.dart';

/// Dapr PubSub Event Subscription.
///
/// Uses Azure REST API version 2025-02-02-preview. In version 2.x of the Azure Native provider, it used API version 2023-08-01-preview.
///
/// Other available API versions: 2023-08-01-preview, 2023-11-02-preview, 2024-02-02-preview, 2024-08-02-preview, 2024-10-02-preview, 2025-10-02-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native app [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Create or update dapr subscription with bulk subscribe configuration and scopes
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprSubscription = new AzureNative.App.DaprSubscription("daprSubscription", new()
///     {
///         BulkSubscribe = new AzureNative.App.Inputs.DaprSubscriptionBulkSubscribeOptionsArgs
///         {
///             Enabled = true,
///             MaxAwaitDurationMs = 500,
///             MaxMessagesCount = 123,
///         },
///         EnvironmentName = "myenvironment",
///         Name = "mysubscription",
///         PubsubName = "mypubsubcomponent",
///         ResourceGroupName = "examplerg",
///         Routes = new AzureNative.App.Inputs.DaprSubscriptionRoutesArgs
///         {
///             Default = "/products",
///         },
///         Scopes = new[]
///         {
///             "warehouseapp",
///             "customersupportapp",
///         },
///         Topic = "inventory",
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
/// 		_, err := app.NewDaprSubscription(ctx, "daprSubscription", &app.DaprSubscriptionArgs{
/// 			BulkSubscribe: &app.DaprSubscriptionBulkSubscribeOptionsArgs{
/// 				Enabled:            pulumi.Bool(true),
/// 				MaxAwaitDurationMs: pulumi.Int(500),
/// 				MaxMessagesCount:   pulumi.Int(123),
/// 			},
/// 			EnvironmentName:   pulumi.String("myenvironment"),
/// 			Name:              pulumi.String("mysubscription"),
/// 			PubsubName:        pulumi.String("mypubsubcomponent"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Routes: &app.DaprSubscriptionRoutesArgs{
/// 				Default: pulumi.String("/products"),
/// 			},
/// 			Scopes: pulumi.StringArray{
/// 				pulumi.String("warehouseapp"),
/// 				pulumi.String("customersupportapp"),
/// 			},
/// 			Topic: pulumi.String("inventory"),
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
/// import com.pulumi.azurenative.app.DaprSubscription;
/// import com.pulumi.azurenative.app.DaprSubscriptionArgs;
/// import com.pulumi.azurenative.app.inputs.DaprSubscriptionBulkSubscribeOptionsArgs;
/// import com.pulumi.azurenative.app.inputs.DaprSubscriptionRoutesArgs;
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
///         var daprSubscription = new DaprSubscription("daprSubscription", DaprSubscriptionArgs.builder()
///             .bulkSubscribe(DaprSubscriptionBulkSubscribeOptionsArgs.builder()
///                 .enabled(true)
///                 .maxAwaitDurationMs(500)
///                 .maxMessagesCount(123)
///                 .build())
///             .environmentName("myenvironment")
///             .name("mysubscription")
///             .pubsubName("mypubsubcomponent")
///             .resourceGroupName("examplerg")
///             .routes(DaprSubscriptionRoutesArgs.builder()
///                 .default_("/products")
///                 .build())
///             .scopes(
///                 "warehouseapp",
///                 "customersupportapp")
///             .topic("inventory")
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
/// const daprSubscription = new azure_native.app.DaprSubscription("daprSubscription", {
///     bulkSubscribe: {
///         enabled: true,
///         maxAwaitDurationMs: 500,
///         maxMessagesCount: 123,
///     },
///     environmentName: "myenvironment",
///     name: "mysubscription",
///     pubsubName: "mypubsubcomponent",
///     resourceGroupName: "examplerg",
///     routes: {
///         "default": "/products",
///     },
///     scopes: [
///         "warehouseapp",
///         "customersupportapp",
///     ],
///     topic: "inventory",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_subscription = azure_native.app.DaprSubscription("daprSubscription",
///     bulk_subscribe={
///         "enabled": True,
///         "max_await_duration_ms": 500,
///         "max_messages_count": 123,
///     },
///     environment_name="myenvironment",
///     name="mysubscription",
///     pubsub_name="mypubsubcomponent",
///     resource_group_name="examplerg",
///     routes={
///         "default": "/products",
///     },
///     scopes=[
///         "warehouseapp",
///         "customersupportapp",
///     ],
///     topic="inventory")
///
/// ```
///
/// ```yaml
/// resources:
///   daprSubscription:
///     type: azure-native:app:DaprSubscription
///     properties:
///       bulkSubscribe:
///         enabled: true
///         maxAwaitDurationMs: 500
///         maxMessagesCount: 123
///       environmentName: myenvironment
///       name: mysubscription
///       pubsubName: mypubsubcomponent
///       resourceGroupName: examplerg
///       routes:
///         default: /products
///       scopes:
///         - warehouseapp
///         - customersupportapp
///       topic: inventory
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update dapr subscription with default route only
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprSubscription = new AzureNative.App.DaprSubscription("daprSubscription", new()
///     {
///         EnvironmentName = "myenvironment",
///         Name = "mysubscription",
///         PubsubName = "mypubsubcomponent",
///         ResourceGroupName = "examplerg",
///         Routes = new AzureNative.App.Inputs.DaprSubscriptionRoutesArgs
///         {
///             Default = "/products",
///         },
///         Topic = "inventory",
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
/// 		_, err := app.NewDaprSubscription(ctx, "daprSubscription", &app.DaprSubscriptionArgs{
/// 			EnvironmentName:   pulumi.String("myenvironment"),
/// 			Name:              pulumi.String("mysubscription"),
/// 			PubsubName:        pulumi.String("mypubsubcomponent"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Routes: &app.DaprSubscriptionRoutesArgs{
/// 				Default: pulumi.String("/products"),
/// 			},
/// 			Topic: pulumi.String("inventory"),
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
/// import com.pulumi.azurenative.app.DaprSubscription;
/// import com.pulumi.azurenative.app.DaprSubscriptionArgs;
/// import com.pulumi.azurenative.app.inputs.DaprSubscriptionRoutesArgs;
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
///         var daprSubscription = new DaprSubscription("daprSubscription", DaprSubscriptionArgs.builder()
///             .environmentName("myenvironment")
///             .name("mysubscription")
///             .pubsubName("mypubsubcomponent")
///             .resourceGroupName("examplerg")
///             .routes(DaprSubscriptionRoutesArgs.builder()
///                 .default_("/products")
///                 .build())
///             .topic("inventory")
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
/// const daprSubscription = new azure_native.app.DaprSubscription("daprSubscription", {
///     environmentName: "myenvironment",
///     name: "mysubscription",
///     pubsubName: "mypubsubcomponent",
///     resourceGroupName: "examplerg",
///     routes: {
///         "default": "/products",
///     },
///     topic: "inventory",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_subscription = azure_native.app.DaprSubscription("daprSubscription",
///     environment_name="myenvironment",
///     name="mysubscription",
///     pubsub_name="mypubsubcomponent",
///     resource_group_name="examplerg",
///     routes={
///         "default": "/products",
///     },
///     topic="inventory")
///
/// ```
///
/// ```yaml
/// resources:
///   daprSubscription:
///     type: azure-native:app:DaprSubscription
///     properties:
///       environmentName: myenvironment
///       name: mysubscription
///       pubsubName: mypubsubcomponent
///       resourceGroupName: examplerg
///       routes:
///         default: /products
///       topic: inventory
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### Create or update dapr subscription with route rules and metadata
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var daprSubscription = new AzureNative.App.DaprSubscription("daprSubscription", new()
///     {
///         EnvironmentName = "myenvironment",
///         Metadata =
///         {
///             { "foo", "bar" },
///             { "hello", "world" },
///         },
///         Name = "mysubscription",
///         PubsubName = "mypubsubcomponent",
///         ResourceGroupName = "examplerg",
///         Routes = new AzureNative.App.Inputs.DaprSubscriptionRoutesArgs
///         {
///             Default = "/products",
///             Rules = new[]
///             {
///                 new AzureNative.App.Inputs.DaprSubscriptionRouteRuleArgs
///                 {
///                     Match = "event.type == 'widget'",
///                     Path = "/widgets",
///                 },
///                 new AzureNative.App.Inputs.DaprSubscriptionRouteRuleArgs
///                 {
///                     Match = "event.type == 'gadget'",
///                     Path = "/gadgets",
///                 },
///             },
///         },
///         Topic = "inventory",
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
/// 		_, err := app.NewDaprSubscription(ctx, "daprSubscription", &app.DaprSubscriptionArgs{
/// 			EnvironmentName: pulumi.String("myenvironment"),
/// 			Metadata: pulumi.StringMap{
/// 				"foo":   pulumi.String("bar"),
/// 				"hello": pulumi.String("world"),
/// 			},
/// 			Name:              pulumi.String("mysubscription"),
/// 			PubsubName:        pulumi.String("mypubsubcomponent"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Routes: &app.DaprSubscriptionRoutesArgs{
/// 				Default: pulumi.String("/products"),
/// 				Rules: app.DaprSubscriptionRouteRuleArray{
/// 					&app.DaprSubscriptionRouteRuleArgs{
/// 						Match: pulumi.String("event.type == 'widget'"),
/// 						Path:  pulumi.String("/widgets"),
/// 					},
/// 					&app.DaprSubscriptionRouteRuleArgs{
/// 						Match: pulumi.String("event.type == 'gadget'"),
/// 						Path:  pulumi.String("/gadgets"),
/// 					},
/// 				},
/// 			},
/// 			Topic: pulumi.String("inventory"),
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
/// import com.pulumi.azurenative.app.DaprSubscription;
/// import com.pulumi.azurenative.app.DaprSubscriptionArgs;
/// import com.pulumi.azurenative.app.inputs.DaprSubscriptionRoutesArgs;
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
///         var daprSubscription = new DaprSubscription("daprSubscription", DaprSubscriptionArgs.builder()
///             .environmentName("myenvironment")
///             .metadata(Map.ofEntries(
///                 Map.entry("foo", "bar"),
///                 Map.entry("hello", "world")
///             ))
///             .name("mysubscription")
///             .pubsubName("mypubsubcomponent")
///             .resourceGroupName("examplerg")
///             .routes(DaprSubscriptionRoutesArgs.builder()
///                 .default_("/products")
///                 .rules(
///                     DaprSubscriptionRouteRuleArgs.builder()
///                         .match("event.type == 'widget'")
///                         .path("/widgets")
///                         .build(),
///                     DaprSubscriptionRouteRuleArgs.builder()
///                         .match("event.type == 'gadget'")
///                         .path("/gadgets")
///                         .build())
///                 .build())
///             .topic("inventory")
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
/// const daprSubscription = new azure_native.app.DaprSubscription("daprSubscription", {
///     environmentName: "myenvironment",
///     metadata: {
///         foo: "bar",
///         hello: "world",
///     },
///     name: "mysubscription",
///     pubsubName: "mypubsubcomponent",
///     resourceGroupName: "examplerg",
///     routes: {
///         "default": "/products",
///         rules: [
///             {
///                 match: "event.type == 'widget'",
///                 path: "/widgets",
///             },
///             {
///                 match: "event.type == 'gadget'",
///                 path: "/gadgets",
///             },
///         ],
///     },
///     topic: "inventory",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// dapr_subscription = azure_native.app.DaprSubscription("daprSubscription",
///     environment_name="myenvironment",
///     metadata={
///         "foo": "bar",
///         "hello": "world",
///     },
///     name="mysubscription",
///     pubsub_name="mypubsubcomponent",
///     resource_group_name="examplerg",
///     routes={
///         "default": "/products",
///         "rules": [
///             {
///                 "match": "event.type == 'widget'",
///                 "path": "/widgets",
///             },
///             {
///                 "match": "event.type == 'gadget'",
///                 "path": "/gadgets",
///             },
///         ],
///     },
///     topic="inventory")
///
/// ```
///
/// ```yaml
/// resources:
///   daprSubscription:
///     type: azure-native:app:DaprSubscription
///     properties:
///       environmentName: myenvironment
///       metadata:
///         foo: bar
///         hello: world
///       name: mysubscription
///       pubsubName: mypubsubcomponent
///       resourceGroupName: examplerg
///       routes:
///         default: /products
///         rules:
///           - match: event.type == 'widget'
///             path: /widgets
///           - match: event.type == 'gadget'
///             path: /gadgets
///       topic: inventory
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
/// $ pulumi import azure-native:app:DaprSubscription mysubscription /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.App/managedEnvironments/{environmentName}/daprSubscriptions/{name}
/// ```
class DaprSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Bulk subscription options
  late final pulumi.Output<DaprSubscriptionBulkSubscribeOptionsResponse?> bulkSubscribe;
  /// Deadletter topic name
  late final pulumi.Output<String?> deadLetterTopic;
  /// Subscription metadata
  late final pulumi.Output<Map<String, String>?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Dapr PubSub component name
  late final pulumi.Output<String?> pubsubName;
  /// Subscription routes
  late final pulumi.Output<DaprSubscriptionRoutesResponse?> routes;
  /// Application scopes to restrict the subscription to specific apps.
  late final pulumi.Output<List<String>?> scopes;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Topic name
  late final pulumi.Output<String?> topic;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [DaprSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [DaprSubscription]. {@macro pulumi_app_dapr_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  DaprSubscription(
    String name, {
    DaprSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:app:DaprSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.bulkSubscribe = registerOutput<DaprSubscriptionBulkSubscribeOptionsResponse?>('bulkSubscribe');
    this.deadLetterTopic = registerOutput<String?>('deadLetterTopic');
    this.metadata = registerOutput<Map<String, String>?>('metadata');
    this.name = registerOutput<String>('name');
    this.pubsubName = registerOutput<String?>('pubsubName');
    this.routes = registerOutput<DaprSubscriptionRoutesResponse?>('routes');
    this.scopes = registerOutput<List<String>?>('scopes');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.topic = registerOutput<String?>('topic');
    this.type = registerOutput<String>('type');
  }
}
