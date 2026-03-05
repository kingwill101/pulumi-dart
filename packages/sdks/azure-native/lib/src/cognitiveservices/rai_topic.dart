import 'package:pulumi/pulumi.dart' as pulumi;
import 'rai_topic_args.dart';
import 'rai_topic_properties_response.dart';
import 'system_data_response.dart';

/// Cognitive Services Rai Topic.
///
/// Uses Azure REST API version 2025-07-01-preview.
///
/// Other available API versions: 2025-09-01, 2025-10-01-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native cognitiveservices [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### PutRaiTopic
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var raiTopic = new AzureNative.CognitiveServices.RaiTopic("raiTopic", new()
///     {
///         AccountName = "accountName",
///         Properties = new AzureNative.CognitiveServices.Inputs.RaiTopicPropertiesArgs
///         {
///             Description = "This is a sample topic.",
///             SampleBlobUrl = "https://example.blob.core.windows.net/sampleblob",
///             TopicName = "raiTopicName",
///         },
///         RaiTopicName = "raiTopicName",
///         ResourceGroupName = "resourceGroupName",
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
/// 	cognitiveservices "github.com/pulumi/pulumi-azure-native-sdk/cognitiveservices/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cognitiveservices.NewRaiTopic(ctx, "raiTopic", &cognitiveservices.RaiTopicArgs{
/// 			AccountName: pulumi.String("accountName"),
/// 			Properties: &cognitiveservices.RaiTopicPropertiesArgs{
/// 				Description:   pulumi.String("This is a sample topic."),
/// 				SampleBlobUrl: pulumi.String("https://example.blob.core.windows.net/sampleblob"),
/// 				TopicName:     pulumi.String("raiTopicName"),
/// 			},
/// 			RaiTopicName:      pulumi.String("raiTopicName"),
/// 			ResourceGroupName: pulumi.String("resourceGroupName"),
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
/// import com.pulumi.azurenative.cognitiveservices.RaiTopic;
/// import com.pulumi.azurenative.cognitiveservices.RaiTopicArgs;
/// import com.pulumi.azurenative.cognitiveservices.inputs.RaiTopicPropertiesArgs;
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
///         var raiTopic = new RaiTopic("raiTopic", RaiTopicArgs.builder()
///             .accountName("accountName")
///             .properties(RaiTopicPropertiesArgs.builder()
///                 .description("This is a sample topic.")
///                 .sampleBlobUrl("https://example.blob.core.windows.net/sampleblob")
///                 .topicName("raiTopicName")
///                 .build())
///             .raiTopicName("raiTopicName")
///             .resourceGroupName("resourceGroupName")
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
/// const raiTopic = new azure_native.cognitiveservices.RaiTopic("raiTopic", {
///     accountName: "accountName",
///     properties: {
///         description: "This is a sample topic.",
///         sampleBlobUrl: "https://example.blob.core.windows.net/sampleblob",
///         topicName: "raiTopicName",
///     },
///     raiTopicName: "raiTopicName",
///     resourceGroupName: "resourceGroupName",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// rai_topic = azure_native.cognitiveservices.RaiTopic("raiTopic",
///     account_name="accountName",
///     properties={
///         "description": "This is a sample topic.",
///         "sample_blob_url": "https://example.blob.core.windows.net/sampleblob",
///         "topic_name": "raiTopicName",
///     },
///     rai_topic_name="raiTopicName",
///     resource_group_name="resourceGroupName")
///
/// ```
///
/// ```yaml
/// resources:
///   raiTopic:
///     type: azure-native:cognitiveservices:RaiTopic
///     properties:
///       accountName: accountName
///       properties:
///         description: This is a sample topic.
///         sampleBlobUrl: https://example.blob.core.windows.net/sampleblob
///         topicName: raiTopicName
///       raiTopicName: raiTopicName
///       resourceGroupName: resourceGroupName
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
/// $ pulumi import azure-native:cognitiveservices:RaiTopic raiTopicName /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.CognitiveServices/accounts/{accountName}/raitopics/{raiTopicName}
/// ```
class RaiTopic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;

  /// Resource Etag.
  late final pulumi.Output<String> etag;

  /// The name of the resource
  late final pulumi.Output<String> name;

  /// Properties of Cognitive Services Rai Topic.
  late final pulumi.Output<RaiTopicPropertiesResponse> properties;

  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;

  /// Resource tags.
  late final pulumi.Output<Map<String, String>?> tags;

  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [RaiTopic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [RaiTopic]. {@macro pulumi_cognitiveservices_rai_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  RaiTopic(
    String name, {
    RaiTopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'azure-native:cognitiveservices:RaiTopic',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    etag = registerOutput<String>('etag');
    this.name = registerOutput<String>('name');
    properties = registerOutput<RaiTopicPropertiesResponse>(
      'properties',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return RaiTopicPropertiesResponse.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
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
    type = registerOutput<String>('type');
  }
}
