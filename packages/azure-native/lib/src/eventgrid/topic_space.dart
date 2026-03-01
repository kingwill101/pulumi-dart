import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'topic_space_args.dart';

/// The Topic space resource.
///
/// Uses Azure REST API version 2025-02-15. In version 2.x of the Azure Native provider, it used API version 2023-06-01-preview.
///
/// Other available API versions: 2023-06-01-preview, 2023-12-15-preview, 2024-06-01-preview, 2024-12-15-preview, 2025-04-01-preview, 2025-07-15-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native eventgrid [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### TopicSpaces_CreateOrUpdate
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topicSpace = new AzureNative.EventGrid.TopicSpace("topicSpace", new()
///     {
///         NamespaceName = "exampleNamespaceName1",
///         ResourceGroupName = "examplerg",
///         TopicSpaceName = "exampleTopicSpaceName1",
///         TopicTemplates = new[]
///         {
///             "filter1",
///             "filter2",
///         },
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
/// 		_, err := eventgrid.NewTopicSpace(ctx, "topicSpace", &eventgrid.TopicSpaceArgs{
/// 			NamespaceName:     pulumi.String("exampleNamespaceName1"),
/// 			ResourceGroupName: pulumi.String("examplerg"),
/// 			TopicSpaceName:    pulumi.String("exampleTopicSpaceName1"),
/// 			TopicTemplates: pulumi.StringArray{
/// 				pulumi.String("filter1"),
/// 				pulumi.String("filter2"),
/// 			},
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
/// import com.pulumi.azurenative.eventgrid.TopicSpace;
/// import com.pulumi.azurenative.eventgrid.TopicSpaceArgs;
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
///         var topicSpace = new TopicSpace("topicSpace", TopicSpaceArgs.builder()
///             .namespaceName("exampleNamespaceName1")
///             .resourceGroupName("examplerg")
///             .topicSpaceName("exampleTopicSpaceName1")
///             .topicTemplates(
///                 "filter1",
///                 "filter2")
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
/// const topicSpace = new azure_native.eventgrid.TopicSpace("topicSpace", {
///     namespaceName: "exampleNamespaceName1",
///     resourceGroupName: "examplerg",
///     topicSpaceName: "exampleTopicSpaceName1",
///     topicTemplates: [
///         "filter1",
///         "filter2",
///     ],
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// topic_space = azure_native.eventgrid.TopicSpace("topicSpace",
///     namespace_name="exampleNamespaceName1",
///     resource_group_name="examplerg",
///     topic_space_name="exampleTopicSpaceName1",
///     topic_templates=[
///         "filter1",
///         "filter2",
///     ])
///
/// ```
///
/// ```yaml
/// resources:
///   topicSpace:
///     type: azure-native:eventgrid:TopicSpace
///     properties:
///       namespaceName: exampleNamespaceName1
///       resourceGroupName: examplerg
///       topicSpaceName: exampleTopicSpaceName1
///       topicTemplates:
///         - filter1
///         - filter2
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
/// $ pulumi import azure-native:eventgrid:TopicSpace exampleTopicSpaceName1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.EventGrid/namespaces/{namespaceName}/topicSpaces/{topicSpaceName}
/// ```
class TopicSpace extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Description for the Topic Space resource.
  late final pulumi.Output<String?> description;
  /// Name of the resource.
  late final pulumi.Output<String> name;
  /// Provisioning state of the TopicSpace resource.
  late final pulumi.Output<String> provisioningState;
  /// The system metadata relating to the Event Grid resource.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// The topic filters in the topic space.
  /// Example: "topicTemplates": [
  /// "devices/foo/bar",
  /// "devices/topic1/+",
  /// "devices/${principal.name}/${principal.attributes.keyName}" ].
  late final pulumi.Output<List<String>?> topicTemplates;
  /// Type of the resource.
  late final pulumi.Output<String> type;

  /// Creates a new [TopicSpace].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [TopicSpace]. {@macro pulumi_eventgrid_topic_space_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  TopicSpace(
    String name, {
    TopicSpaceArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:eventgrid:TopicSpace',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    this.azureApiVersion = registerOutput<String>('azureApiVersion');
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.provisioningState = registerOutput<String>('provisioningState');
    this.systemData = registerOutput<SystemDataResponse>('systemData');
    this.topicTemplates = registerOutput<List<String>?>('topicTemplates');
    this.type = registerOutput<String>('type');
  }
}
