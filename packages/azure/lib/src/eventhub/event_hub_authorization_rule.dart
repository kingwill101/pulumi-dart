import 'package:pulumi/pulumi.dart' as pulumi;
import 'event_hub_authorization_rule_args.dart';

/// Manages a Event Hubs authorization Rule within an Event Hub.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as azure from "@pulumi/azure";
///
/// const example = new azure.core.ResourceGroup("example", {
///     name: "example-resources",
///     location: "West Europe",
/// });
/// const exampleEventHubNamespace = new azure.eventhub.EventHubNamespace("example", {
///     name: "acceptanceTestEventHubNamespace",
///     location: example.location,
///     resourceGroupName: example.name,
///     sku: "Basic",
///     capacity: 2,
///     tags: {
///         environment: "Production",
///     },
/// });
/// const exampleEventHub = new azure.eventhub.EventHub("example", {
///     name: "acceptanceTestEventHub",
///     namespaceName: exampleEventHubNamespace.name,
///     resourceGroupName: example.name,
///     partitionCount: 2,
///     messageRetention: 2,
/// });
/// const exampleAuthorizationRule = new azure.eventhub.AuthorizationRule("example", {
///     name: "navi",
///     namespaceName: exampleEventHubNamespace.name,
///     eventhubName: exampleEventHub.name,
///     resourceGroupName: example.name,
///     listen: true,
///     send: false,
///     manage: false,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_azure as azure
///
/// example = azure.core.ResourceGroup("example",
///     name="example-resources",
///     location="West Europe")
/// example_event_hub_namespace = azure.eventhub.EventHubNamespace("example",
///     name="acceptanceTestEventHubNamespace",
///     location=example.location,
///     resource_group_name=example.name,
///     sku="Basic",
///     capacity=2,
///     tags={
///         "environment": "Production",
///     })
/// example_event_hub = azure.eventhub.EventHub("example",
///     name="acceptanceTestEventHub",
///     namespace_name=example_event_hub_namespace.name,
///     resource_group_name=example.name,
///     partition_count=2,
///     message_retention=2)
/// example_authorization_rule = azure.eventhub.AuthorizationRule("example",
///     name="navi",
///     namespace_name=example_event_hub_namespace.name,
///     eventhub_name=example_event_hub.name,
///     resource_group_name=example.name,
///     listen=True,
///     send=False,
///     manage=False)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Azure = Pulumi.Azure;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Azure.Core.ResourceGroup("example", new()
///     {
///         Name = "example-resources",
///         Location = "West Europe",
///     });
///
///     var exampleEventHubNamespace = new Azure.EventHub.EventHubNamespace("example", new()
///     {
///         Name = "acceptanceTestEventHubNamespace",
///         Location = example.Location,
///         ResourceGroupName = example.Name,
///         Sku = "Basic",
///         Capacity = 2,
///         Tags =
///         {
///             { "environment", "Production" },
///         },
///     });
///
///     var exampleEventHub = new Azure.EventHub.EventHub("example", new()
///     {
///         Name = "acceptanceTestEventHub",
///         NamespaceName = exampleEventHubNamespace.Name,
///         ResourceGroupName = example.Name,
///         PartitionCount = 2,
///         MessageRetention = 2,
///     });
///
///     var exampleAuthorizationRule = new Azure.EventHub.AuthorizationRule("example", new()
///     {
///         Name = "navi",
///         NamespaceName = exampleEventHubNamespace.Name,
///         EventhubName = exampleEventHub.Name,
///         ResourceGroupName = example.Name,
///         Listen = true,
///         Send = false,
///         Manage = false,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/core"
/// 	"github.com/pulumi/pulumi-azure/sdk/v6/go/azure/eventhub"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := core.NewResourceGroup(ctx, "example", &core.ResourceGroupArgs{
/// 			Name:     pulumi.String("example-resources"),
/// 			Location: pulumi.String("West Europe"),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHubNamespace, err := eventhub.NewEventHubNamespace(ctx, "example", &eventhub.EventHubNamespaceArgs{
/// 			Name:              pulumi.String("acceptanceTestEventHubNamespace"),
/// 			Location:          example.Location,
/// 			ResourceGroupName: example.Name,
/// 			Sku:               pulumi.String("Basic"),
/// 			Capacity:          pulumi.Int(2),
/// 			Tags: pulumi.StringMap{
/// 				"environment": pulumi.String("Production"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleEventHub, err := eventhub.NewEventHub(ctx, "example", &eventhub.EventHubArgs{
/// 			Name:              pulumi.String("acceptanceTestEventHub"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			ResourceGroupName: example.Name,
/// 			PartitionCount:    pulumi.Int(2),
/// 			MessageRetention:  pulumi.Int(2),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = eventhub.NewAuthorizationRule(ctx, "example", &eventhub.AuthorizationRuleArgs{
/// 			Name:              pulumi.String("navi"),
/// 			NamespaceName:     exampleEventHubNamespace.Name,
/// 			EventhubName:      exampleEventHub.Name,
/// 			ResourceGroupName: example.Name,
/// 			Listen:            pulumi.Bool(true),
/// 			Send:              pulumi.Bool(false),
/// 			Manage:            pulumi.Bool(false),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.azure.core.ResourceGroup;
/// import com.pulumi.azure.core.ResourceGroupArgs;
/// import com.pulumi.azure.eventhub.EventHubNamespace;
/// import com.pulumi.azure.eventhub.EventHubNamespaceArgs;
/// import com.pulumi.azure.eventhub.EventHub;
/// import com.pulumi.azure.eventhub.EventHubArgs;
/// import com.pulumi.azure.eventhub.AuthorizationRule;
/// import com.pulumi.azure.eventhub.AuthorizationRuleArgs;
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
///         var example = new ResourceGroup("example", ResourceGroupArgs.builder()
///             .name("example-resources")
///             .location("West Europe")
///             .build());
///
///         var exampleEventHubNamespace = new EventHubNamespace("exampleEventHubNamespace", EventHubNamespaceArgs.builder()
///             .name("acceptanceTestEventHubNamespace")
///             .location(example.location())
///             .resourceGroupName(example.name())
///             .sku("Basic")
///             .capacity(2)
///             .tags(Map.of("environment", "Production"))
///             .build());
///
///         var exampleEventHub = new EventHub("exampleEventHub", EventHubArgs.builder()
///             .name("acceptanceTestEventHub")
///             .namespaceName(exampleEventHubNamespace.name())
///             .resourceGroupName(example.name())
///             .partitionCount(2)
///             .messageRetention(2)
///             .build());
///
///         var exampleAuthorizationRule = new AuthorizationRule("exampleAuthorizationRule", AuthorizationRuleArgs.builder()
///             .name("navi")
///             .namespaceName(exampleEventHubNamespace.name())
///             .eventhubName(exampleEventHub.name())
///             .resourceGroupName(example.name())
///             .listen(true)
///             .send(false)
///             .manage(false)
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: azure:core:ResourceGroup
///     properties:
///       name: example-resources
///       location: West Europe
///   exampleEventHubNamespace:
///     type: azure:eventhub:EventHubNamespace
///     name: example
///     properties:
///       name: acceptanceTestEventHubNamespace
///       location: ${example.location}
///       resourceGroupName: ${example.name}
///       sku: Basic
///       capacity: 2
///       tags:
///         environment: Production
///   exampleEventHub:
///     type: azure:eventhub:EventHub
///     name: example
///     properties:
///       name: acceptanceTestEventHub
///       namespaceName: ${exampleEventHubNamespace.name}
///       resourceGroupName: ${example.name}
///       partitionCount: 2
///       messageRetention: 2
///   exampleAuthorizationRule:
///     type: azure:eventhub:AuthorizationRule
///     name: example
///     properties:
///       name: navi
///       namespaceName: ${exampleEventHubNamespace.name}
///       eventhubName: ${exampleEventHub.name}
///       resourceGroupName: ${example.name}
///       listen: true
///       send: false
///       manage: false
/// ```
///
///
/// ## API Providers
///
/// <!-- This section is generated, changes will be overwritten -->
/// This resource uses the following Azure API Providers:
///
/// * `Microsoft.EventHub` - 2024-01-01
///
/// ## Import
///
/// EventHub Authorization Rules can be imported using the `resource id`, e.g.
///
/// ```sh
/// $ pulumi import azure:eventhub/eventHubAuthorizationRule:EventHubAuthorizationRule rule1 /subscriptions/00000000-0000-0000-0000-000000000000/resourceGroups/group1/providers/Microsoft.EventHub/namespaces/namespace1/eventhubs/eventhub1/authorizationRules/rule1
/// ```
class EventHubAuthorizationRule extends pulumi.CustomResource {
  /// Specifies the name of the EventHub. Changing this forces a new resource to be created.
  late final pulumi.Output<String> eventhubName;
  /// Does this Authorization Rule have permissions to Listen to the Event Hub? Defaults to `false`.
  late final pulumi.Output<bool?> listen;
  /// Does this Authorization Rule have permissions to Manage to the Event Hub? When this property is `true` - both `listen` and `send` must be too. Defaults to `false`.
  late final pulumi.Output<bool?> manage;
  /// Specifies the name of the EventHub Authorization Rule resource. Changing this forces a new resource to be created.
  late final pulumi.Output<String> name;
  /// Specifies the name of the grandparent EventHub Namespace. Changing this forces a new resource to be created.
  late final pulumi.Output<String> namespaceName;
  /// The Primary Connection String for the Event Hubs authorization Rule.
  late final pulumi.Output<String> primaryConnectionString;
  /// The alias of the Primary Connection String for the Event Hubs authorization Rule, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> primaryConnectionStringAlias;
  /// The Primary Key for the Event Hubs authorization Rule.
  late final pulumi.Output<String> primaryKey;
  /// The name of the resource group in which the EventHub Namespace exists. Changing this forces a new resource to be created.
  ///
  /// > **Note:** At least one of the 3 permissions below needs to be set.
  late final pulumi.Output<String> resourceGroupName;
  /// The Secondary Connection String for the Event Hubs Authorization Rule.
  late final pulumi.Output<String> secondaryConnectionString;
  /// The alias of the Secondary Connection String for the Event Hubs Authorization Rule, which is generated when disaster recovery is enabled.
  late final pulumi.Output<String> secondaryConnectionStringAlias;
  /// The Secondary Key for the Event Hubs Authorization Rule.
  late final pulumi.Output<String> secondaryKey;
  /// Does this Authorization Rule have permissions to Send to the Event Hub? Defaults to `false`.
  late final pulumi.Output<bool?> send;

  /// Creates a new [EventHubAuthorizationRule].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventHubAuthorizationRule]. {@macro pulumi_eventhub_event_hub_authorization_rule_event_hub_authorization_rule_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventHubAuthorizationRule(
    String name, {
    EventHubAuthorizationRuleArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure:eventhub/eventHubAuthorizationRule:EventHubAuthorizationRule',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.eventhubName = registerOutput<String>('eventhubName');
    this.listen = registerOutput<bool?>('listen');
    this.manage = registerOutput<bool?>('manage');
    this.name = registerOutput<String>('name');
    this.namespaceName = registerOutput<String>('namespaceName');
    this.primaryConnectionString = registerOutput<String>('primaryConnectionString');
    this.primaryConnectionStringAlias = registerOutput<String>('primaryConnectionStringAlias');
    this.primaryKey = registerOutput<String>('primaryKey');
    this.resourceGroupName = registerOutput<String>('resourceGroupName');
    this.secondaryConnectionString = registerOutput<String>('secondaryConnectionString');
    this.secondaryConnectionStringAlias = registerOutput<String>('secondaryConnectionStringAlias');
    this.secondaryKey = registerOutput<String>('secondaryKey');
    this.send = registerOutput<bool?>('send');
  }
}
