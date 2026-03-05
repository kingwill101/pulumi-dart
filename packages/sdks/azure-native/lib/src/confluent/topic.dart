import 'package:pulumi/pulumi.dart' as pulumi;
import 'system_data_response.dart';
import 'topic_args.dart';
import 'topic_metadata_entity_response.dart';
import 'topics_related_link_response.dart';

/// Details of topic record
///
/// Uses Azure REST API version 2024-07-01. In version 2.x of the Azure Native provider, it used API version 2024-07-01.
///
/// Other available API versions: 2025-07-17-preview, 2025-08-18-preview. These can be accessed by generating a local SDK package using the CLI command `pulumi package add azure-native confluent [ApiVersion]`. See the [version guide](../../../version-guide/#accessing-any-api-version-via-local-packages) for details.
///
/// {{% examples %}}
/// ## Example Usage
/// {{% example %}}
/// ### Topics_Create
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using AzureNative = Pulumi.AzureNative;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var topic = new AzureNative.Confluent.Topic("topic", new()
///     {
///         ClusterId = "dlz-f3a90de",
///         EnvironmentId = "env-12132",
///         InputConfigs = new[]
///         {
///             new AzureNative.Confluent.Inputs.TopicsInputConfigArgs
///             {
///                 Name = "cleanup.policy",
///                 Value = "compact",
///             },
///             new AzureNative.Confluent.Inputs.TopicsInputConfigArgs
///             {
///                 Name = "retention.ms",
///                 Value = "86400000",
///             },
///         },
///         OrganizationName = "myOrganization",
///         PartitionsCount = "1",
///         ReplicationFactor = "3",
///         ResourceGroupName = "myResourceGroup",
///         TopicName = "topic-1",
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
/// 	confluent "github.com/pulumi/pulumi-azure-native-sdk/confluent/v3"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := confluent.NewTopic(ctx, "topic", &confluent.TopicArgs{
/// 			ClusterId:     pulumi.String("dlz-f3a90de"),
/// 			EnvironmentId: pulumi.String("env-12132"),
/// 			InputConfigs: confluent.TopicsInputConfigArray{
/// 				&confluent.TopicsInputConfigArgs{
/// 					Name:  pulumi.String("cleanup.policy"),
/// 					Value: pulumi.String("compact"),
/// 				},
/// 				&confluent.TopicsInputConfigArgs{
/// 					Name:  pulumi.String("retention.ms"),
/// 					Value: pulumi.String("86400000"),
/// 				},
/// 			},
/// 			OrganizationName:  pulumi.String("myOrganization"),
/// 			PartitionsCount:   pulumi.String("1"),
/// 			ReplicationFactor: pulumi.String("3"),
/// 			ResourceGroupName: pulumi.String("myResourceGroup"),
/// 			TopicName:         pulumi.String("topic-1"),
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
/// import com.pulumi.azurenative.confluent.Topic;
/// import com.pulumi.azurenative.confluent.TopicArgs;
/// import com.pulumi.azurenative.confluent.inputs.TopicsInputConfigArgs;
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
///         var topic = new Topic("topic", TopicArgs.builder()
///             .clusterId("dlz-f3a90de")
///             .environmentId("env-12132")
///             .inputConfigs(
///                 TopicsInputConfigArgs.builder()
///                     .name("cleanup.policy")
///                     .value("compact")
///                     .build(),
///                 TopicsInputConfigArgs.builder()
///                     .name("retention.ms")
///                     .value("86400000")
///                     .build())
///             .organizationName("myOrganization")
///             .partitionsCount("1")
///             .replicationFactor("3")
///             .resourceGroupName("myResourceGroup")
///             .topicName("topic-1")
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
/// const topic = new azure_native.confluent.Topic("topic", {
///     clusterId: "dlz-f3a90de",
///     environmentId: "env-12132",
///     inputConfigs: [
///         {
///             name: "cleanup.policy",
///             value: "compact",
///         },
///         {
///             name: "retention.ms",
///             value: "86400000",
///         },
///     ],
///     organizationName: "myOrganization",
///     partitionsCount: "1",
///     replicationFactor: "3",
///     resourceGroupName: "myResourceGroup",
///     topicName: "topic-1",
/// });
///
/// ```
///
/// ```python
/// import pulumi
/// import pulumi_azure_native as azure_native
///
/// topic = azure_native.confluent.Topic("topic",
///     cluster_id="dlz-f3a90de",
///     environment_id="env-12132",
///     input_configs=[
///         {
///             "name": "cleanup.policy",
///             "value": "compact",
///         },
///         {
///             "name": "retention.ms",
///             "value": "86400000",
///         },
///     ],
///     organization_name="myOrganization",
///     partitions_count="1",
///     replication_factor="3",
///     resource_group_name="myResourceGroup",
///     topic_name="topic-1")
///
/// ```
///
/// ```yaml
/// resources:
///   topic:
///     type: azure-native:confluent:Topic
///     properties:
///       clusterId: dlz-f3a90de
///       environmentId: env-12132
///       inputConfigs:
///         - name: cleanup.policy
///           value: compact
///         - name: retention.ms
///           value: '86400000'
///       organizationName: myOrganization
///       partitionsCount: '1'
///       replicationFactor: '3'
///       resourceGroupName: myResourceGroup
///       topicName: topic-1
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
/// $ pulumi import azure-native:confluent:Topic topic-1 /subscriptions/{subscriptionId}/resourceGroups/{resourceGroupName}/providers/Microsoft.Confluent/organizations/{organizationName}/environments/{environmentId}/clusters/{clusterId}/topics/{topicName}
/// ```
class Topic extends pulumi.CustomResource {
  /// The Azure API version of the resource.
  late final pulumi.Output<String> azureApiVersion;
  /// Config Specification of the topic
  late final pulumi.Output<TopicsRelatedLinkResponse?> configs;
  /// Input Config Specification of the topic
  late final pulumi.Output<List<Map<String, dynamic>>?> inputConfigs;
  /// Type of topic
  late final pulumi.Output<String?> kind;
  /// Metadata of the record
  late final pulumi.Output<TopicMetadataEntityResponse?> metadata;
  /// The name of the resource
  late final pulumi.Output<String> name;
  /// Partition Specification of the topic
  late final pulumi.Output<TopicsRelatedLinkResponse?> partitions;
  /// Partition count of the topic
  late final pulumi.Output<String?> partitionsCount;
  /// Partition Reassignment Specification of the topic
  late final pulumi.Output<TopicsRelatedLinkResponse?> partitionsReassignments;
  /// Replication factor of the topic
  late final pulumi.Output<String?> replicationFactor;
  /// Azure Resource Manager metadata containing createdBy and modifiedBy information.
  late final pulumi.Output<SystemDataResponse> systemData;
  /// Topic Id returned by Confluent
  late final pulumi.Output<String?> topicId;
  /// The type of the resource. E.g. "Microsoft.Compute/virtualMachines" or "Microsoft.Storage/storageAccounts"
  late final pulumi.Output<String> type;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_confluent_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'azure-native:confluent:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    azureApiVersion = registerOutput<String>('azureApiVersion');
    configs = registerOutput<TopicsRelatedLinkResponse?>('configs', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicsRelatedLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputConfigs = registerOutput<List<Map<String, dynamic>>?>('inputConfigs');
    kind = registerOutput<String?>('kind');
    metadata = registerOutput<TopicMetadataEntityResponse?>('metadata', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicMetadataEntityResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    this.name = registerOutput<String>('name');
    partitions = registerOutput<TopicsRelatedLinkResponse?>('partitions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicsRelatedLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    partitionsCount = registerOutput<String?>('partitionsCount');
    partitionsReassignments = registerOutput<TopicsRelatedLinkResponse?>('partitionsReassignments', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicsRelatedLinkResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    replicationFactor = registerOutput<String?>('replicationFactor');
    systemData = registerOutput<SystemDataResponse>('systemData', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return SystemDataResponse.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    topicId = registerOutput<String?>('topicId');
    type = registerOutput<String>('type');
  }
}
