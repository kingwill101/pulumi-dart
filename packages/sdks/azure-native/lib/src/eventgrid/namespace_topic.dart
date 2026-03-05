import 'package:pulumi/pulumi.dart' as pulumi;
import 'namespace_topic_args.dart';
import 'system_data_response.dart';

/// Namespace topic details.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### NamespaceTopics_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var namespaceTopic = new AzureNative.EventGrid.NamespaceTopic("namespaceTopic", new()
///     {
///         EventRetentionInDays = 1,
///         InputSchema = AzureNative.EventGrid.EventInputSchema.CloudEventSchemaV1_0,
///         NamespaceName = "examplenamespace2",
///         PublisherType = AzureNative.EventGrid.PublisherType.Custom,
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
/// 		_, err := eventgrid.NewNamespaceTopic(ctx, "namespaceTopic", &eventgrid.NamespaceTopicArgs{
/// 			EventRetentionInDays: pulumi.Int(1),
/// 			InputSchema:          pulumi.String(eventgrid.EventInputSchema_CloudEventSchemaV1_0),
/// 			NamespaceName:        pulumi.String("examplenamespace2"),
/// 			PublisherType:        pulumi.String(eventgrid.PublisherTypeCustom),
/// 			ResourceGroupName:    pulumi.String("examplerg"),
/// 			TopicName:            pulumi.String("examplenamespacetopic2"),
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
/// import com.pulumi.azurenative.eventgrid.NamespaceTopic;
/// import com.pulumi.azurenative.eventgrid.NamespaceTopicArgs;
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
///         var namespaceTopic = new NamespaceTopic("namespaceTopic", NamespaceTopicArgs.builder()
///             .eventRetentionInDays(1)
///             .inputSchema("CloudEventSchemaV1_0")
///             .namespaceName("examplenamespace2")
///             .publisherType("Custom")
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
/// const namespaceTopic = new azure_native.eventgrid.NamespaceTopic("namespaceTopic", {
///     eventRetentionInDays: 1,
///     inputSchema: azure_native.eventgrid.EventInputSchema.CloudEventSchemaV1_0,
///     namespaceName: "examplenamespace2",
///     publisherType: azure_native.eventgrid.PublisherType.Custom,
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
/// namespace_topic = azure_native.eventgrid.NamespaceTopic("namespaceTopic",
///     event_retention_in_days=1,
///     input_schema=azure_native.eventgrid.EventInputSchema.CLOUD_EVENT_SCHEMA_V1_0,
///     namespace_name="examplenamespace2",
///     publisher_type=azure_native.eventgrid.PublisherType.CUSTOM,
///     resource_group_name="examplerg",
///     topic_name="examplenamespacetopic2")
///
/// ```
///
/// ```yaml
/// resources:
///   namespaceTopic:
///     type: azure-native:eventgrid:NamespaceTopic
///     properties:
///       eventRetentionInDays: 1
///       inputSchema: CloudEventSchemaV1_0
///       namespaceName: examplenamespace2
///       publisherType: Custom
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
/// $ pulumi import azure-native:eventgrid:NamespaceTopic examplenamespacetopic2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}/topics/{topicName}
/// ```
class NamespaceTopic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Event retention for the namespace topic expressed in days. The property default value is 1 day.
  /// Min event retention duration value is 1 day and max event retention duration value is 1 day.
  late final pulumi.Output<int?> eventRetentionInDays;
  /// This determines the format that is expected for incoming events published to the topic.
  late final pulumi.Output<String?> inputSchema;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the namespace topic.
  late final pulumi.Output<String> provisioningState;
  /// Publisher type of the namespace topic.
  late final pulumi.Output<String?> publisherType;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [NamespaceTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [NamespaceTopic]. {@macro pulumi_eventgrid_namespace_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  NamespaceTopic(
    String name, {
    NamespaceTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:NamespaceTopic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    eventRetentionInDays = registerOutput<int?>('eventRetentionInDays');
    inputSchema = registerOutput<String?>('inputSchema');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    publisherType = registerOutput<String?>('publisherType');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    type = registerOutput<String>('type');
  }
}
