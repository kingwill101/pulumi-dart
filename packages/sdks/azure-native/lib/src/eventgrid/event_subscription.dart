import 'package:pulumi/pulumi.dart' as pulumi;
import 'azure_function_event_subscription_destination_response.dart';
import 'dead_letter_with_resource_identity_response.dart';
import 'delivery_with_resource_identity_response.dart';
import 'event_subscription_args.dart';
import 'event_subscription_filter_response.dart';
import 'retry_policy_response.dart';
import 'storage_blob_dead_letter_destination_response.dart';
import 'system_data_response.dart';

/// Event Subscription.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         Destination = new AzureNative.EventGrid.Inputs.EventHubEventSubscriptionDestinationArgs
///         {
///             EndpointType = "EventHub",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			Destination: &eventgrid.EventHubEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("EventHub"),
/// 				ResourceId:   pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .destination(EventHubEventSubscriptionDestinationArgs.builder()
///                 .endpointType("EventHub")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     destination: {
///         endpointType: "EventHub",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     destination={
///         "endpoint_type": "EventHub",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       destination:
///         endpointType: EventHub
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic_AzureFunctionDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         DeadLetterDestination = new AzureNative.EventGrid.Inputs.StorageBlobDeadLetterDestinationArgs
///         {
///             BlobContainerName = "contosocontainer",
///             EndpointType = "StorageBlob",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///         },
///         Destination = new AzureNative.EventGrid.Inputs.AzureFunctionEventSubscriptionDestinationArgs
///         {
///             EndpointType = "AzureFunction",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			DeadLetterDestination: &eventgrid.StorageBlobDeadLetterDestinationArgs{
/// 				BlobContainerName: pulumi.String("contosocontainer"),
/// 				EndpointType:      pulumi.String("StorageBlob"),
/// 				ResourceId:        pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg"),
/// 			},
/// 			Destination: &eventgrid.AzureFunctionEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("AzureFunction"),
/// 				ResourceId:   pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.StorageBlobDeadLetterDestinationArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .deadLetterDestination(StorageBlobDeadLetterDestinationArgs.builder()
///                 .blobContainerName("contosocontainer")
///                 .endpointType("StorageBlob")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg")
///                 .build())
///             .destination(AzureFunctionEventSubscriptionDestinationArgs.builder()
///                 .endpointType("AzureFunction")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     deadLetterDestination: {
///         blobContainerName: "contosocontainer",
///         endpointType: "StorageBlob",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination: {
///         endpointType: "AzureFunction",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     dead_letter_destination={
///         "blob_container_name": "contosocontainer",
///         "endpoint_type": "StorageBlob",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination={
///         "endpoint_type": "AzureFunction",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       deadLetterDestination:
///         blobContainerName: contosocontainer
///         endpointType: StorageBlob
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg
///       destination:
///         endpointType: AzureFunction
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Web/sites/ContosoSite/funtions/ContosoFunc
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic_EventHubDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         DeadLetterDestination = new AzureNative.EventGrid.Inputs.StorageBlobDeadLetterDestinationArgs
///         {
///             BlobContainerName = "contosocontainer",
///             EndpointType = "StorageBlob",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///         },
///         Destination = new AzureNative.EventGrid.Inputs.EventHubEventSubscriptionDestinationArgs
///         {
///             EndpointType = "EventHub",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			DeadLetterDestination: &eventgrid.StorageBlobDeadLetterDestinationArgs{
/// 				BlobContainerName: pulumi.String("contosocontainer"),
/// 				EndpointType:      pulumi.String("StorageBlob"),
/// 				ResourceId:        pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg"),
/// 			},
/// 			Destination: &eventgrid.EventHubEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("EventHub"),
/// 				ResourceId:   pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.StorageBlobDeadLetterDestinationArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .deadLetterDestination(StorageBlobDeadLetterDestinationArgs.builder()
///                 .blobContainerName("contosocontainer")
///                 .endpointType("StorageBlob")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg")
///                 .build())
///             .destination(EventHubEventSubscriptionDestinationArgs.builder()
///                 .endpointType("EventHub")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     deadLetterDestination: {
///         blobContainerName: "contosocontainer",
///         endpointType: "StorageBlob",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination: {
///         endpointType: "EventHub",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     dead_letter_destination={
///         "blob_container_name": "contosocontainer",
///         "endpoint_type": "StorageBlob",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination={
///         "endpoint_type": "EventHub",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       deadLetterDestination:
///         blobContainerName: contosocontainer
///         endpointType: StorageBlob
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg
///       destination:
///         endpointType: EventHub
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.EventHub/namespaces/ContosoNamespace/eventhubs/EH1
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic_HybridConnectionDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         DeadLetterDestination = new AzureNative.EventGrid.Inputs.StorageBlobDeadLetterDestinationArgs
///         {
///             BlobContainerName = "contosocontainer",
///             EndpointType = "StorageBlob",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///         },
///         Destination = new AzureNative.EventGrid.Inputs.HybridConnectionEventSubscriptionDestinationArgs
///         {
///             EndpointType = "HybridConnection",
///             ResourceId = "/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Relay/namespaces/ContosoNamespace/hybridConnections/HC1",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			DeadLetterDestination: &eventgrid.StorageBlobDeadLetterDestinationArgs{
/// 				BlobContainerName: pulumi.String("contosocontainer"),
/// 				EndpointType:      pulumi.String("StorageBlob"),
/// 				ResourceId:        pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg"),
/// 			},
/// 			Destination: &eventgrid.HybridConnectionEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("HybridConnection"),
/// 				ResourceId:   pulumi.String("/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Relay/namespaces/ContosoNamespace/hybridConnections/HC1"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.StorageBlobDeadLetterDestinationArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .deadLetterDestination(StorageBlobDeadLetterDestinationArgs.builder()
///                 .blobContainerName("contosocontainer")
///                 .endpointType("StorageBlob")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg")
///                 .build())
///             .destination(HybridConnectionEventSubscriptionDestinationArgs.builder()
///                 .endpointType("HybridConnection")
///                 .resourceId("/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Relay/namespaces/ContosoNamespace/hybridConnections/HC1")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     deadLetterDestination: {
///         blobContainerName: "contosocontainer",
///         endpointType: "StorageBlob",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination: {
///         endpointType: "HybridConnection",
///         resourceId: "/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Relay/namespaces/ContosoNamespace/hybridConnections/HC1",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     dead_letter_destination={
///         "blob_container_name": "contosocontainer",
///         "endpoint_type": "StorageBlob",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination={
///         "endpoint_type": "HybridConnection",
///         "resource_id": "/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Relay/namespaces/ContosoNamespace/hybridConnections/HC1",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       deadLetterDestination:
///         blobContainerName: contosocontainer
///         endpointType: StorageBlob
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg
///       destination:
///         endpointType: HybridConnection
///         resourceId: /subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Relay/namespaces/ContosoNamespace/hybridConnections/HC1
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic_ServiceBusQueueDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         DeadLetterDestination = new AzureNative.EventGrid.Inputs.StorageBlobDeadLetterDestinationArgs
///         {
///             BlobContainerName = "contosocontainer",
///             EndpointType = "StorageBlob",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///         },
///         Destination = new AzureNative.EventGrid.Inputs.ServiceBusQueueEventSubscriptionDestinationArgs
///         {
///             EndpointType = "ServiceBusQueue",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/queues/SBQ",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			DeadLetterDestination: &eventgrid.StorageBlobDeadLetterDestinationArgs{
/// 				BlobContainerName: pulumi.String("contosocontainer"),
/// 				EndpointType:      pulumi.String("StorageBlob"),
/// 				ResourceId:        pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg"),
/// 			},
/// 			Destination: &eventgrid.ServiceBusQueueEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("ServiceBusQueue"),
/// 				ResourceId:   pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/queues/SBQ"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.StorageBlobDeadLetterDestinationArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .deadLetterDestination(StorageBlobDeadLetterDestinationArgs.builder()
///                 .blobContainerName("contosocontainer")
///                 .endpointType("StorageBlob")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg")
///                 .build())
///             .destination(ServiceBusQueueEventSubscriptionDestinationArgs.builder()
///                 .endpointType("ServiceBusQueue")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/queues/SBQ")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     deadLetterDestination: {
///         blobContainerName: "contosocontainer",
///         endpointType: "StorageBlob",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination: {
///         endpointType: "ServiceBusQueue",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/queues/SBQ",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     dead_letter_destination={
///         "blob_container_name": "contosocontainer",
///         "endpoint_type": "StorageBlob",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination={
///         "endpoint_type": "ServiceBusQueue",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/queues/SBQ",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       deadLetterDestination:
///         blobContainerName: contosocontainer
///         endpointType: StorageBlob
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg
///       destination:
///         endpointType: ServiceBusQueue
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/queues/SBQ
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic_ServiceBusTopicDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         DeadLetterDestination = new AzureNative.EventGrid.Inputs.StorageBlobDeadLetterDestinationArgs
///         {
///             BlobContainerName = "contosocontainer",
///             EndpointType = "StorageBlob",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///         },
///         Destination = new AzureNative.EventGrid.Inputs.ServiceBusTopicEventSubscriptionDestinationArgs
///         {
///             EndpointType = "ServiceBusTopic",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/topics/SBT",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			DeadLetterDestination: &eventgrid.StorageBlobDeadLetterDestinationArgs{
/// 				BlobContainerName: pulumi.String("contosocontainer"),
/// 				EndpointType:      pulumi.String("StorageBlob"),
/// 				ResourceId:        pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg"),
/// 			},
/// 			Destination: &eventgrid.ServiceBusTopicEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("ServiceBusTopic"),
/// 				ResourceId:   pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/topics/SBT"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.StorageBlobDeadLetterDestinationArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .deadLetterDestination(StorageBlobDeadLetterDestinationArgs.builder()
///                 .blobContainerName("contosocontainer")
///                 .endpointType("StorageBlob")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg")
///                 .build())
///             .destination(ServiceBusTopicEventSubscriptionDestinationArgs.builder()
///                 .endpointType("ServiceBusTopic")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/topics/SBT")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     deadLetterDestination: {
///         blobContainerName: "contosocontainer",
///         endpointType: "StorageBlob",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination: {
///         endpointType: "ServiceBusTopic",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/topics/SBT",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     dead_letter_destination={
///         "blob_container_name": "contosocontainer",
///         "endpoint_type": "StorageBlob",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination={
///         "endpoint_type": "ServiceBusTopic",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/topics/SBT",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       deadLetterDestination:
///         blobContainerName: contosocontainer
///         endpointType: StorageBlob
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg
///       destination:
///         endpointType: ServiceBusTopic
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.ServiceBus/namespaces/ContosoNamespace/topics/SBT
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic_StorageQueueDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         DeadLetterDestination = new AzureNative.EventGrid.Inputs.StorageBlobDeadLetterDestinationArgs
///         {
///             BlobContainerName = "contosocontainer",
///             EndpointType = "StorageBlob",
///             ResourceId = "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///         },
///         Destination = new AzureNative.EventGrid.Inputs.StorageQueueEventSubscriptionDestinationArgs
///         {
///             EndpointType = "StorageQueue",
///             QueueName = "queue1",
///             ResourceId = "/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			DeadLetterDestination: &eventgrid.StorageBlobDeadLetterDestinationArgs{
/// 				BlobContainerName: pulumi.String("contosocontainer"),
/// 				EndpointType:      pulumi.String("StorageBlob"),
/// 				ResourceId:        pulumi.String("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg"),
/// 			},
/// 			Destination: &eventgrid.StorageQueueEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("StorageQueue"),
/// 				QueueName:    pulumi.String("queue1"),
/// 				ResourceId:   pulumi.String("/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
/// import com.pulumi.azurenative.eventgrid.inputs.StorageBlobDeadLetterDestinationArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .deadLetterDestination(StorageBlobDeadLetterDestinationArgs.builder()
///                 .blobContainerName("contosocontainer")
///                 .endpointType("StorageBlob")
///                 .resourceId("/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg")
///                 .build())
///             .destination(StorageQueueEventSubscriptionDestinationArgs.builder()
///                 .endpointType("StorageQueue")
///                 .queueName("queue1")
///                 .resourceId("/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     deadLetterDestination: {
///         blobContainerName: "contosocontainer",
///         endpointType: "StorageBlob",
///         resourceId: "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination: {
///         endpointType: "StorageQueue",
///         queueName: "queue1",
///         resourceId: "/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     dead_letter_destination={
///         "blob_container_name": "contosocontainer",
///         "endpoint_type": "StorageBlob",
///         "resource_id": "/subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     destination={
///         "endpoint_type": "StorageQueue",
///         "queue_name": "queue1",
///         "resource_id": "/subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       deadLetterDestination:
///         blobContainerName: contosocontainer
///         endpointType: StorageBlob
///         resourceId: /subscriptions/55f3dcd4-cac7-43b4-990b-a139d62a1eb2/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg
///       destination:
///         endpointType: StorageQueue
///         queueName: queue1
///         resourceId: /subscriptions/d33c5f7a-02ea-40f4-bf52-07f17e84d6a8/resourceGroups/TestRG/providers/Microsoft.Storage/storageAccounts/contosostg
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForCustomTopic_WebhookDestination
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         Destination = new AzureNative.EventGrid.Inputs.WebHookEventSubscriptionDestinationArgs
///         {
///             EndpointType = "WebHook",
///             EndpointUrl = "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE",
///         },
///         EventSubscriptionName = "examplesubscription1",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			Destination: &eventgrid.WebHookEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("WebHook"),
/// 				EndpointUrl:  pulumi.String("https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription1"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .destination(WebHookEventSubscriptionDestinationArgs.builder()
///                 .endpointType("WebHook")
///                 .endpointUrl("https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE")
///                 .build())
///             .eventSubscriptionName("examplesubscription1")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     destination: {
///         endpointType: "WebHook",
///         endpointUrl: "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE",
///     },
///     eventSubscriptionName: "examplesubscription1",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     destination={
///         "endpoint_type": "WebHook",
///         "endpoint_url": "https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE",
///     },
///     event_subscription_name="examplesubscription1",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       destination:
///         endpointType: WebHook
///         endpointUrl: https://azurefunctionexample.azurewebsites.net/runtime/webhooks/EventGrid?functionName=EventGridTrigger1&code=PASSWORDCODE
///       eventSubscriptionName: examplesubscription1
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventGrid/topics/exampletopic1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForResource
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         Destination = new AzureNative.EventGrid.Inputs.WebHookEventSubscriptionDestinationArgs
///         {
///             EndpointType = "WebHook",
///             EndpointUrl = "https://requestb.in/15ksip71",
///         },
///         EventSubscriptionName = "examplesubscription10",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/examplenamespace1",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			Destination: &eventgrid.WebHookEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("WebHook"),
/// 				EndpointUrl:  pulumi.String("https://requestb.in/15ksip71"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription10"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/examplenamespace1"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .destination(WebHookEventSubscriptionDestinationArgs.builder()
///                 .endpointType("WebHook")
///                 .endpointUrl("https://requestb.in/15ksip71")
///                 .build())
///             .eventSubscriptionName("examplesubscription10")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/examplenamespace1")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     destination: {
///         endpointType: "WebHook",
///         endpointUrl: "https://requestb.in/15ksip71",
///     },
///     eventSubscriptionName: "examplesubscription10",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/examplenamespace1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     destination={
///         "endpoint_type": "WebHook",
///         "endpoint_url": "https://requestb.in/15ksip71",
///     },
///     event_subscription_name="examplesubscription10",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/examplenamespace1")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       destination:
///         endpointType: WebHook
///         endpointUrl: https://requestb.in/15ksip71
///       eventSubscriptionName: examplesubscription10
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg/providers/Microsoft.EventHub/namespaces/examplenamespace1
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForResourceGroup
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         Destination = new AzureNative.EventGrid.Inputs.WebHookEventSubscriptionDestinationArgs
///         {
///             EndpointType = "WebHook",
///             EndpointUrl = "https://requestb.in/15ksip71",
///         },
///         EventSubscriptionName = "examplesubscription2",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///             SubjectBeginsWith = "ExamplePrefix",
///             SubjectEndsWith = "ExampleSuffix",
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			Destination: &eventgrid.WebHookEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("WebHook"),
/// 				EndpointUrl:  pulumi.String("https://requestb.in/15ksip71"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription2"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 				SubjectBeginsWith:      pulumi.String("ExamplePrefix"),
/// 				SubjectEndsWith:        pulumi.String("ExampleSuffix"),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .destination(WebHookEventSubscriptionDestinationArgs.builder()
///                 .endpointType("WebHook")
///                 .endpointUrl("https://requestb.in/15ksip71")
///                 .build())
///             .eventSubscriptionName("examplesubscription2")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .subjectBeginsWith("ExamplePrefix")
///                 .subjectEndsWith("ExampleSuffix")
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     destination: {
///         endpointType: "WebHook",
///         endpointUrl: "https://requestb.in/15ksip71",
///     },
///     eventSubscriptionName: "examplesubscription2",
///     filter: {
///         isSubjectCaseSensitive: false,
///         subjectBeginsWith: "ExamplePrefix",
///         subjectEndsWith: "ExampleSuffix",
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     destination={
///         "endpoint_type": "WebHook",
///         "endpoint_url": "https://requestb.in/15ksip71",
///     },
///     event_subscription_name="examplesubscription2",
///     filter={
///         "is_subject_case_sensitive": False,
///         "subject_begins_with": "ExamplePrefix",
///         "subject_ends_with": "ExampleSuffix",
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       destination:
///         endpointType: WebHook
///         endpointUrl: https://requestb.in/15ksip71
///       eventSubscriptionName: examplesubscription2
///       filter:
///         isSubjectCaseSensitive: false
///         subjectBeginsWith: ExamplePrefix
///         subjectEndsWith: ExampleSuffix
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/examplerg
///
/// ```
///
/// {{% /example %}}
/// {{% example %}}
/// ### EventSubscriptions_CreateOrUpdateForSubscription
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var eventSubscription = new AzureNative.EventGrid.EventSubscription("eventSubscription", new()
///     {
///         Destination = new AzureNative.EventGrid.Inputs.WebHookEventSubscriptionDestinationArgs
///         {
///             EndpointType = "WebHook",
///             EndpointUrl = "https://requestb.in/15ksip71",
///         },
///         EventSubscriptionName = "examplesubscription3",
///         Filter = new AzureNative.EventGrid.Inputs.EventSubscriptionFilterArgs
///         {
///             IsSubjectCaseSensitive = false,
///         },
///         Scope = "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4",
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
/// 		_, err := eventgrid.NewEventSubscription(ctx, "eventSubscription", &eventgrid.EventSubscriptionArgs{
/// 			Destination: &eventgrid.WebHookEventSubscriptionDestinationArgs{
/// 				EndpointType: pulumi.String("WebHook"),
/// 				EndpointUrl:  pulumi.String("https://requestb.in/15ksip71"),
/// 			},
/// 			EventSubscriptionName: pulumi.String("examplesubscription3"),
/// 			Filter: &eventgrid.EventSubscriptionFilterArgs{
/// 				IsSubjectCaseSensitive: pulumi.Bool(false),
/// 			},
/// 			Scope: pulumi.String("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4"),
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
/// import com.pulumi.azurenative.eventgrid.EventSubscription;
/// import com.pulumi.azurenative.eventgrid.EventSubscriptionArgs;
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
///         var eventSubscription = new EventSubscription("eventSubscription", EventSubscriptionArgs.builder()
///             .destination(WebHookEventSubscriptionDestinationArgs.builder()
///                 .endpointType("WebHook")
///                 .endpointUrl("https://requestb.in/15ksip71")
///                 .build())
///             .eventSubscriptionName("examplesubscription3")
///             .filter(EventSubscriptionFilterArgs.builder()
///                 .isSubjectCaseSensitive(false)
///                 .build())
///             .scope("subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4")
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
/// const eventSubscription = new azure_native.eventgrid.EventSubscription("eventSubscription", {
///     destination: {
///         endpointType: "WebHook",
///         endpointUrl: "https://requestb.in/15ksip71",
///     },
///     eventSubscriptionName: "examplesubscription3",
///     filter: {
///         isSubjectCaseSensitive: false,
///     },
///     scope: "subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// event_subscription = azure_native.eventgrid.EventSubscription("eventSubscription",
///     destination={
///         "endpoint_type": "WebHook",
///         "endpoint_url": "https://requestb.in/15ksip71",
///     },
///     event_subscription_name="examplesubscription3",
///     filter={
///         "is_subject_case_sensitive": False,
///     },
///     scope="subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4")
///
/// ```
///
/// ```yaml
/// resources:
///   eventSubscription:
///     type: azure-native:eventgrid:EventSubscription
///     properties:
///       destination:
///         endpointType: WebHook
///         endpointUrl: https://requestb.in/15ksip71
///       eventSubscriptionName: examplesubscription3
///       filter:
///         isSubjectCaseSensitive: false
///       scope: subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4
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
/// $ pulumi import azure-native:eventgrid:EventSubscription examplesubscription3 /{scope}/providers/Microsoft.EventGrid/eventSubscriptions/{eventSubscriptionName}
/// ```
class EventSubscription extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<StorageBlobDeadLetterDestinationResponse?>
  deadLetterDestination;

  /// The dead letter destination of the event subscription. Any event that cannot be delivered to its' destination is sent to the dead letter destination.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<DeadLetterWithResourceIdentityResponse?>
  deadLetterWithResourceIdentity;

  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses the managed identity setup on the parent resource (namely, topic or domain) to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<DeliveryWithResourceIdentityResponse?>
  deliveryWithResourceIdentity;

  /// Information about the destination where events have to be delivered for the event subscription.
  /// Uses Azure Event Grid's identity to acquire the authentication tokens being used during delivery / dead-lettering.
  late final pulumi.Output<AzureFunctionEventSubscriptionDestinationResponse?>
  destination;

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

  /// Creates a new [EventSubscription].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EventSubscription]. {@macro pulumi_eventgrid_event_subscription_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EventSubscription(
    String name, {
    EventSubscriptionArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventgrid:EventSubscription',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    deadLetterDestination =
        registerOutput<StorageBlobDeadLetterDestinationResponse?>(
          'deadLetterDestination',
        );
    deadLetterWithResourceIdentity =
        registerOutput<DeadLetterWithResourceIdentityResponse?>(
          'deadLetterWithResourceIdentity',
        );
    deliveryWithResourceIdentity =
        registerOutput<DeliveryWithResourceIdentityResponse?>(
          'deliveryWithResourceIdentity',
        );
    destination =
        registerOutput<AzureFunctionEventSubscriptionDestinationResponse?>(
          'destination',
        );
    eventDeliverySchema = registerOutput<String?>('eventDeliverySchema');
    expirationTimeUtc = registerOutput<String?>('expirationTimeUtc');
    filter = registerOutput<EventSubscriptionFilterResponse?>('filter');
    labels = registerOutput<List<String>?>('labels');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    retryPolicy = registerOutput<RetryPolicyResponse?>('retryPolicy');
    systemData = registerOutput<SystemDataResponse>('systemData');
    topic = registerOutput<String>('topic');
    type = registerOutput<String>('type');
  }
}
