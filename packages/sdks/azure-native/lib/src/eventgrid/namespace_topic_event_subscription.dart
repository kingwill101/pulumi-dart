import 'package:pulumi/pulumi.dart' as pulumi;
import 'delivery_configuration_response.dart';
import 'filters_configuration_response.dart';
import 'namespace_topic_event_subscription_args.dart';
import 'system_data_response.dart';

/// Event Subscription.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NamespaceTopicEventSubscriptions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceTopicEventSubscription = new AzureNative.EventGrid.NamespaceTopicEventSubscription("namespaceTopicEventSubscription", new()
///     {
///         DeliveryConfiguration = new AzureNative.EventGrid.Inputs.DeliveryConfigurationArgs
///         {
///             DeliveryMode = AzureNative.EventGrid.DeliveryMode.Queue,
///             Queue = new AzureNative.EventGrid.Inputs.QueueInfoArgs
///             {
///                 EventTimeToLive = "P1D",
///                 MaxDeliveryCount = 4,
///                 ReceiveLockDurationInSeconds = 60,
///             },
///         },
///         EventDeliverySchema = AzureNative.EventGrid.DeliverySchema.CloudEventSchemaV1_0,
///         EventSubscriptionName = "examplenamespacetopicEventSub2",
///         NamespaceName = "examplenamespace2",
///         ResourceGroupName = "examplerg",
///         TopicName = "examplenamespacetopic2",
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
/// 	eventgrid "github.com/pulumi/pulumi-azure-native-sdk/eventgrid/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := eventgrid.NewNamespaceTopicEventSubscription(ctx, "namespaceTopicEventSubscription", &eventgrid.NamespaceTopicEventSubscriptionArgs{
/// 			DeliveryConfiguration: &eventgrid.DeliveryConfigurationArgs{
/// 				DeliveryMode: pulumi.String(eventgrid.DeliveryModeQueue),
/// 				Queue: &eventgrid.QueueInfoArgs{
/// 					EventTimeToLive:              pulumi.String("P1D"),
/// 					MaxDeliveryCount:             pulumi.Int(4),
/// 					ReceiveLockDurationInSeconds: pulumi.Int(60),
/// 				},
/// 			},
/// 			EventDeliverySchema:   pulumi.String(eventgrid.DeliverySchema_CloudEventSchemaV1_0),
/// 			EventSubscriptionName: pulumi.String("examplenamespacetopicEventSub2"),
/// 			NamespaceName:         pulumi.String("examplenamespace2"),
/// 			ResourceGroupName:     pulumi.String("examplerg"),
/// 			TopicName:             pulumi.String("examplenamespacetopic2"),
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
/// import com.pulumi.azurenative.eventgrid.NamespaceTopicEventSubscription;
/// import com.pulumi.azurenative.eventgrid.NamespaceTopicEventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.DeliveryConfigurationArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.QueueInfoArgs;
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
///         var namespaceTopicEventSubscription = new NamespaceTopicEventSubscription("namespaceTopicEventSubscription", NamespaceTopicEventSubscriptionArgs.builder()
///             .deliveryConfiguration(DeliveryConfigurationArgs.builder()
///                 .deliveryMode("Queue")
///                 .queue(QueueInfoArgs.builder()
///                     .eventTimeToLive("P1D")
///                     .maxDeliveryCount(4)
///                     .receiveLockDurationInSeconds(60)
///                     .build())
///                 .build())
///             .eventDeliverySchema("CloudEventSchemaV1_0")
///             .eventSubscriptionName("examplenamespacetopicEventSub2")
///             .namespaceName("examplenamespace2")
///             .resourceGroupName("examplerg")
///             .topicName("examplenamespacetopic2")
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
/// const namespaceTopicEventSubscription = new azure_native.eventgrid.NamespaceTopicEventSubscription("namespaceTopicEventSubscription", {
///     deliveryConfiguration: {
///         deliveryMode: azure_native.eventgrid.DeliveryMode.Queue,
///         queue: {
///             eventTimeToLive: "P1D",
///             maxDeliveryCount: 4,
///             receiveLockDurationInSeconds: 60,
///         },
///     },
///     eventDeliverySchema: azure_native.eventgrid.DeliverySchema.CloudEventSchemaV1_0,
///     eventSubscriptionName: "examplenamespacetopicEventSub2",
///     namespaceName: "examplenamespace2",
///     resourceGroupName: "examplerg",
///     topicName: "examplenamespacetopic2",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// namespace_topic_event_subscription = azure_native.eventgrid.NamespaceTopicEventSubscription("namespaceTopicEventSubscription",
///     delivery_configuration={
///         "delivery_mode": azure_native.eventgrid.DeliveryMode.QUEUE,
///         "queue": {
///             "event_time_to_live": "P1D",
///             "max_delivery_count": 4,
///             "receive_lock_duration_in_seconds": 60,
///         },
///     },
///     event_delivery_schema=azure_native.eventgrid.DeliverySchema.CLOUD_EVENT_SCHEMA_V1_0,
///     event_subscription_name="examplenamespacetopicEventSub2",
///     namespace_name="examplenamespace2",
///     resource_group_name="examplerg",
///     topic_name="examplenamespacetopic2")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceTopicEventSubscription:
///     type: azure-native:eventgrid:NamespaceTopicEventSubscription
///     properties:
///       deliveryConfiguration:
///         deliveryMode: Queue
///         queue:
///           eventTimeToLive: P1D
///           maxDeliveryCount: 4
///           receiveLockDurationInSeconds: 60
///       eventDeliverySchema: CloudEventSchemaV1_0
///       eventSubscriptionName: examplenamespacetopicEventSub2
///       namespaceName: examplenamespace2
///       resourceGroupName: examplerg
///       topicName: examplenamespacetopic2
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
/// $ pulumi import azure-native:eventgrid:NamespaceTopicEventSubscription examplenamespacetopicEventSub2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}/topics/{topicName}/eventSubscriptions/{eventSubscriptionName}
/// ```
class NamespaceTopicEventSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Information about the delivery configuration of the event subscription.
  late final pulumi.Output<DeliveryConfigurationResponse?> deliveryConfiguration;
  /// The event delivery schema for the event subscription.
  late final pulumi.Output<String?> eventDeliverySchema;
  /// Expiration time of the event subscription.
  late final pulumi.Output<String?> expirationTimeUtc;
  /// Information about the filter for the event subscription.
  late final pulumi.Output<FiltersConfigurationResponse?> filtersConfiguration;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the event subscription.
  late final pulumi.Output<String> provisioningState;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [NamespaceTopicEventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceTopicEventSubscription]. {@macro pulumi_eventgrid_namespace_topic_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceTopicEventSubscription(
    String name, {
    NamespaceTopicEventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:NamespaceTopicEventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.deliveryConfiguration = registerOutput<DeliveryConfigurationResponse?>('deliveryConfiguration');
    this.eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    this.expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    this.filtersConfiguration = registerOutput<FiltersConfigurationResponse?>('filtersConfiguration');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.type = registerOutput<String>('type');
  }
}
