import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_function_event_subscription_destination_response.dart';
import 'dead_letter_with_resource_identity_response.dart';
import 'delivery_with_resource_identity_response.dart';
import 'event_subscription_filter_response.dart';
import 'retry_policy_response.dart';
import 'storage_blob_dead_letter_destination_response.dart';
import 'system_data_response.dart';
import 'topic_event_subscription_args.dart';

/// Event Subscription.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TopicEventSubscriptions_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topicEventSubscription = new AzureNative.EventGrid.TopicEventSubscription("topicEventSubscription", new()
///     {
///         Destination = new AzureNative.EventGrid.Inputs.WebHookEventSubscriptionDestinationArgs
///         {
///             EndpointType = "WebHook",
///             EndpointUrl = "https://requestb.in/15ksip71",
///         },
///         EventSubscriptionName = "exampleEventSubscriptionName1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         ResourceGroupName = "examplerg",
///         TopicName = "exampleTopic1",
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
/// 		_, err := eventgrid.NewTopicEventSubscription(ctx, "topicEventSubscription", &eventgrid.TopicEventSubscriptionArgs{
/// 			Destination: &eventgrid.WebHookEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("WebHook"),
/// 				EndpointUrl:  pulumi.String("https://requestb.in/15ksip71"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("exampleEventSubscriptionName1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			TopicName:         pulumi.String("exampleTopic1"),
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
/// import com.pulumi.azurenative.eventgrid.TopicEventSubscription;
/// import com.pulumi.azurenative.eventgrid.TopicEventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.EventSubscriptionFilterArgs;
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
///         var topicEventSubscription = new TopicEventSubscription("topicEventSubscription", TopicEventSubscriptionArgs.builder()
///             .destination(WebHookEventSubscriptionDestinationArgs.builder()
///                 .endpointType("WebHook")
///                 .endpointUrl("https://requestb.in/15ksip71")
///                 .build())
///             .eventSubscriptionName("exampleEventSubscriptionName1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .resourceGroupName("examplerg")
///             .topicName("exampleTopic1")
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
/// const topicEventSubscription = new azure_native.eventgrid.TopicEventSubscription("topicEventSubscription", {
///     destination: {
///         endpointType: "WebHook",
///         endpointUrl: "https://requestb.in/15ksip71",
///     },
///     eventSubscriptionName: "exampleEventSubscriptionName1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     resourceGroupName: "examplerg",
///     topicName: "exampleTopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// topic_event_subscription = azure_native.eventgrid.TopicEventSubscription("topicEventSubscription",
///     destination={
///         "endpoint_type": "WebHook",
///         "endpoint_url": "https://requestb.in/15ksip71",
///     },
///     event_subscription_name="exampleEventSubscriptionName1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     resource_group_name="examplerg",
///     topic_name="exampleTopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   topicEventSubscription:
///     type: azure-native:eventgrid:TopicEventSubscription
///     properties:
///       destination:
///         endpointType: WebHook
///         endpointUrl: https://requestb.in/15ksip71
///       eventSubscriptionName: exampleEventSubscriptionName1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       resourceGroupName: examplerg
///       topicName: exampleTopic1
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
/// $ pulumi import azure-native:eventgrid:TopicEventSubscription exampleEventSubscriptionName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/topics/{topicName}/eventSubscriptions/{eventSubscriptionName}
/// ```
class TopicEventSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<StorageBlobDeadLetterDestinationResponse?> deadLetterDestination;
  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<DeadLetterWithResourceIdentityResponse?> deadLetterWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<DeliveryWithResourceIdentityResponse?> deliveryWithResourceIdentity;
  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<AzureFunctionEventSubscriptionDestinationResponse?> destination;
  /// The event delivery schema for the event subscription.
  late final pulumi.Output<String?> eventDeliverySchema;
  /// Expiration time of the event subscription.
  late final pulumi.Output<String?> expirationTimeUtc;
  /// Information about the filter for the event subscription.
  late final pulumi.Output<EventSubscriptionFilterResponse?> filter;
  /// List of user defined labels.
  late final pulumi.Output<List<String>?> labels;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the event subscription.
  late final pulumi.Output<String> provisioningState;
  /// The retry policy for events. This can be used to configure maximum number of delivery attempts and time to live for events.
  late final pulumi.Output<RetryPolicyResponse?> retryPolicy;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Name of the topic of the event subscription.
  late final pulumi.Output<String> topic;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [TopicEventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicEventSubscription]. {@macro pulumi_eventgrid_topic_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicEventSubscription(
    String name, {
    TopicEventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:TopicEventSubscription',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.deadLetterDestination = registerOutput<StorageBlobDeadLetterDestinationResponse?>('deadLetterDestination');
    this.deadLetterWithResourceIdentity = registerOutput<DeadLetterWithResourceIdentityResponse?>('deadLetterWithResourceIdentity');
    this.deliveryWithResourceIdentity = registerOutput<DeliveryWithResourceIdentityResponse?>('deliveryWithResourceIdentity');
    this.destination = registerOutput<AzureFunctionEventSubscriptionDestinationResponse?>('destination');
    this.eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    this.expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    this.filter = registerOutput<EventSubscriptionFilterResponse?>('filter');
    this.labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.retryPolicy = registerOutput<RetryPolicyResponse?>('retryPolicy');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.topic = registerOutput<String>('topic');
    this.type = registerOutput<String>('type');
  }
}
