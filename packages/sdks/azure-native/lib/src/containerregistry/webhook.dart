import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'webhook_args.dart';

/// An object that represents a webhook for a container registry.
///
/// Uses Azure REST API version 2024-11-01-preview. In version 2.x of the Azure Native provider, it used API version 2022-12-01.
///
/// Other available API versions: 2019-12-01-preview, 2020-11-01-preview, 2021-06-01-preview, 2021-08-01-preview, 2021-09-01, 2021-12-01-preview, 2022-02-01-preview, 2022-12-01, 2023-01-01-preview, 2023-06-01-preview, 2023-07-01, 2023-08-01-preview, 2023-11-01-preview, 2025-03-01-preview, 2025-04-01, 2025-05-01-preview, 2025-06-01-preview, 2025-11-01. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native containerregistry [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### WebhookCreate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var webhook = new AzureNative.ContainerRegistry.Webhook("webhook", new()
///     {
///         Actions = new[]
///         {
///             AzureNative.ContainerRegistry.WebhookAction.Push,
///         },
///         CustomHeaders =
///         {
///             { "Authorization", "******" },
///         },
///         Location = "westus",
///         RegistryName = "myRegistry",
///         ResourceGroupName = "myResourceGroup",
///         Scope = "myRepository",
///         ServiceUri = "http://myservice.com",
///         Status = AzureNative.ContainerRegistry.WebhookStatus.Enabled,
///         Tags =
///         {
///             { "key", "value" },
///         },
///         WebhookName = "myWebhook",
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
/// 	containerregistry "github.com/pulumi/pulumi-azure-native-sdk/containerregistry/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := containerregistry.NewWebhook(ctx, "webhook", &containerregistry.WebhookArgs{
/// 			Actions: pulumi.StringArray{
/// 				pulumi.String(containerregistry.WebhookActionPush),
/// 			},
/// 			CustomHeaders: pulumi.StringMap{
/// 				"Authorization": pulumi.String("******"),
/// 			},
/// 			Location:          pulumi.String("westus"),
/// 			RegistryName:      pulumi.String("myRegistry"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			Scope:             pulumi.String("myRepository"),
/// 			ServiceUri:        pulumi.String("http://myservice.com"),
/// 			Status:            pulumi.String(containerregistry.WebhookStatusEnabled),
/// 			Tags: pulumi.StringMap{
/// 				"key": pulumi.String("value"),
/// 			},
/// 			WebhookName: pulumi.String("myWebhook"),
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
/// import com.pulumi.azurenative.containerregistry.Webhook;
/// import com.pulumi.azurenative.containerregistry.WebhookArgs;
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
///         var webhook = new Webhook("webhook", WebhookArgs.builder()
///             .actions("push")
///             .customHeaders(Map.of("Authorization", "******"))
///             .location("westus")
///             .registryName("myRegistry")
///             .resourceGroupName("myResourceGroup")
///             .scope("myRepository")
///             .serviceUri("http://myservice.com")
///             .status("enabled")
///             .tags(Map.of("key", "value"))
///             .webhookName("myWebhook")
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
/// const webhook = new azure_native.containerregistry.Webhook("webhook", {
///     actions: [azure_native.containerregistry.WebhookAction.Push],
///     customHeaders: {
///         Authorization: "******",
///     },
///     location: "westus",
///     registryName: "myRegistry",
///     resourceGroupName: "myResourceGroup",
///     scope: "myRepository",
///     serviceUri: "http://myservice.com",
///     status: azure_native.containerregistry.WebhookStatus.Enabled,
///     tags: {
///         key: "value",
///     },
///     webhookName: "myWebhook",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// webhook = azure_native.containerregistry.Webhook("webhook",
///     actions=[azure_native.containerregistry.WebhookAction.PUSH],
///     custom_headers={
///         "Authorization": "******",
///     },
///     location="westus",
///     registry_name="myRegistry",
///     resource_group_name="myResourceGroup",
///     scope="myRepository",
///     service_uri="http://myservice.com",
///     status=azure_native.containerregistry.WebhookStatus.ENABLED,
///     tags={
///         "key": "value",
///     },
///     webhook_name="myWebhook")
///
/// ```
///
/// ```yaml
/// resources:
///   webhook:
///     type: azure-native:containerregistry:Webhook
///     properties:
///       actions:
///         - push
///       customHeaders:
///         Authorization: '******'
///       location: westus
///       registryName: myRegistry
///       resourceGroupName: myResourceGroup
///       scope: myRepository
///       serviceUri: http://myservice.com
///       status: enabled
///       tags:
///         key: value
///       webhookName: myWebhook
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
/// $ pulumi import azure-native:containerregistry:Webhook myWebhook /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.ContainerRegistry/registries/{registryName}/webhooks/{webhookName}
/// ```
class Webhook extends pulumi.CustomResource {
  /// The list of actions that trigger the webhook to post notifications.
  late final pulumi.Output<List<String>> actions;
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The location of the resource. This cannot be changed after the resource is created.
  late final pulumi.Output<String> location;
  /// The name of the resource.
  late final pulumi.Output<String> name;
  /// The provisioning state of the webhook at the time the operation was called.
  late final pulumi.Output<String> provisioningState;
  /// The scope of repositories where the event can be triggered. For example, 'foo:*' means events for all tags under repository 'foo'. 'foo:bar' means events for 'foo:bar' only. 'foo' is equivalent to 'foo:latest'. Empty means all events.
  late final pulumi.Output<String?> scope;
  /// The status of the webhook at the time the operation was called.
  late final pulumi.Output<String?> status;
  /// Metadata pertaining to creation and last modification of the resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;
  /// The type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [Webhook].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Webhook]. {@macro pulumi_containerregistry_webhook_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Webhook(
    String name, {
    WebhookArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:containerregistry:Webhook',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.actions = registerOutput<List<String>>('actions');
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.location = registerOutput<String>('location');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.scope = registerOutput<String?>('scope');
    this.status = registerOutput<String?>('status');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.type = registerOutput<String>('type');
  }
}
