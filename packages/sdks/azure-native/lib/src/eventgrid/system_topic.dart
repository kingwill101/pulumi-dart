import 'package:pulumi/pulumi.dart' as pulumi;
import 'identity_info_response.dart';
import 'system_data_response.dart';
import 'system_topic_args.dart';

/// EventGrid System Topic.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2022-06-15.
///
/// Other available API versions: 2022-06-15, 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### SystemTopics_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var systemTopic = new AzureNative.EventGrid.SystemTopic("systemTopic", new()
///     {
///         Location = "westus2",
///         ResourceGroupName = "examplerg",
///         Source = "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/azureeventgridrunnerrgcentraluseuap/providers/microsoft.storage/storageaccounts/pubstgrunnerb71cd29e",
///         SystemTopicName = "exampleSystemTopic1",
///         Tags =
///         {
///             { "tag1", "value1" },
///             { "tag2", "value2" },
///         },
///         TopicType = "microsoft.storage.storageaccounts",
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
/// 		_, err := eventgrid.NewSystemTopic(ctx, "systemTopic", &eventgrid.SystemTopicArgs{
/// 			Location:          pulumi.String("westus2"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			Source:            pulumi.String("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/azureeventgridrunnerrgcentraluseuap/providers/microsoft.storage/storageaccounts/pubstgrunnerb71cd29e"),
/// 			SystemTopicName:   pulumi.String("exampleSystemTopic1"),
/// 			Tags: pulumi.StringMap{
/// 				"tag1": pulumi.String("value1"),
/// 				"tag2": pulumi.String("value2"),
/// 			},
/// 			TopicType: pulumi.String("microsoft.storage.storageaccounts"),
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
/// import com.pulumi.azurenative.eventgrid.SystemTopic;
/// import com.pulumi.azurenative.eventgrid.SystemTopicArgs;
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
///         var systemTopic = new SystemTopic("systemTopic", SystemTopicArgs.builder()
///             .location("westus2")
///             .resourceGroupName("examplerg")
///             .source("/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/azureeventgridrunnerrgcentraluseuap/providers/microsoft.storage/storageaccounts/pubstgrunnerb71cd29e")
///             .systemTopicName("exampleSystemTopic1")
///             .tags(Map.ofEntries(
///                 Map.entry("tag1", "value1"),
///                 Map.entry("tag2", "value2")
///             ))
///             .topicType("microsoft.storage.storageaccounts")
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
/// const systemTopic = new azure_native.eventgrid.SystemTopic("systemTopic", {
///     location: "westus2",
///     resourceGroupName: "examplerg",
///     source: "/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/azureeventgridrunnerrgcentraluseuap/providers/microsoft.storage/storageaccounts/pubstgrunnerb71cd29e",
///     systemTopicName: "exampleSystemTopic1",
///     tags: {
///         tag1: "value1",
///         tag2: "value2",
///     },
///     topicType: "microsoft.storage.storageaccounts",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// system_topic = azure_native.eventgrid.SystemTopic("systemTopic",
///     location="westus2",
///     resource_group_name="examplerg",
///     source="/subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/azureeventgridrunnerrgcentraluseuap/providers/microsoft.storage/storageaccounts/pubstgrunnerb71cd29e",
///     system_topic_name="exampleSystemTopic1",
///     tags={
///         "tag1": "value1",
///         "tag2": "value2",
///     },
///     topic_type="microsoft.storage.storageaccounts")
///
/// ```
///
/// ```yaml
/// resources:
///   systemTopic:
///     type: azure-native:eventgrid:SystemTopic
///     properties:
///       location: westus2
///       resourceGroupName: examplerg
///       source: /subscriptions/5b4b650e-28b9-4790-b3ab-ddbd88d727c4/resourceGroups/azureeventgridrunnerrgcentraluseuap/providers/microsoft.storage/storageaccounts/pubstgrunnerb71cd29e
///       systemTopicName: exampleSystemTopic1
///       tags:
///         tag1: value1
///         tag2: value2
///       topicType: microsoft.storage.storageaccounts
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
/// $ pulumi import azure-native:eventgrid:SystemTopic exampleSystemTopic2 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/systemTopics/{systemTopicName}
/// ```
class SystemTopic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Identity information for the resource.
  late final pulumi.Output<IdentityInfoResponse?> identity;

  /// Location of the resource.
  late final pulumi.Output<String> location;

  /// Metric resource id for the system topic.
  late final pulumi.Output<String> metricResourceId;

  /// Name of the resource.
  late final pulumi.Output<String> name;

  /// Provisioning state of the system topic.
  late final pulumi.Output<String> provisioningState;

  /// Source for the system topic.
  late final pulumi.Output<String?> source;

  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Tags of the resource.
  late final pulumi.Output<Map<String, String>?> tags;

  /// TopicType for the system topic.
  late final pulumi.Output<String?> topicType;

  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [SystemTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [SystemTopic]. {@macro pulumi_eventgrid_system_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  SystemTopic(
    String name, {
    SystemTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:eventgrid:SystemTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    identity = registerOutput<IdentityInfoResponse?>(
      'identity',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return IdentityInfoResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    location = registerOutput<String>('location');
    metricResourceId = registerOutput<String>('metricResourceId');
    this.name = registerOutput<String>('name');
    provisioningState = registerOutput<String>('provisioningState');
    source = registerOutput<String?>('source');
    systemData = registerOutput<SystemDataResponse>(
      'systemData',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return SystemDataResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    tags = registerOutput<Map<String, String>?>('tags');
    topicType = registerOutput<String?>('topicType');
    type = registerOutput<String>('type');
  }
}
