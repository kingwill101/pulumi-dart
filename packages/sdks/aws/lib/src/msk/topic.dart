import 'package:pulumi/pulumi.dart' as pulumi;
import 'topic_args.dart';
import 'topic_state.dart';
import 'topic_timeouts.dart';

/// Manages an AWS Managed Streaming for Kafka Topic.
///
/// ## Example Usage
///
/// ### Basic Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.msk.Topic("example", {
///     name: "Example",
///     clusterArn: exampleAwsMskCluster.arn,
///     partitionCount: 2,
///     replicationFactor: 2,
///     configs: JSON.stringify({
///         "retention.ms": "604800000",
///         "retention.bytes": "-1",
///         "cleanup.policy": "delete",
///         "min.insync.replicas": "2",
///     }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.msk.Topic("example",
///     name="Example",
///     cluster_arn=example_aws_msk_cluster["arn"],
///     partition_count=2,
///     replication_factor=2,
///     configs=json.dumps({
///         "retention.ms": "604800000",
///         "retention.bytes": "-1",
///         "cleanup.policy": "delete",
///         "min.insync.replicas": "2",
///     }))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using System.Text.Json;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Msk.Topic("example", new()
///     {
///         Name = "Example",
///         ClusterArn = exampleAwsMskCluster.Arn,
///         PartitionCount = 2,
///         ReplicationFactor = 2,
///         Configs = JsonSerializer.Serialize(new Dictionary<string, object?>
///         {
///             ["retention.ms"] = "604800000",
///             ["retention.bytes"] = "-1",
///             ["cleanup.policy"] = "delete",
///             ["min.insync.replicas"] = "2",
///         }),
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"encoding/json"
///
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/msk"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		tmpJSON0, err := json.Marshal(map[string]string{
/// 			"retention.ms":        "604800000",
/// 			"retention.bytes":     "-1",
/// 			"cleanup.policy":      "delete",
/// 			"min.insync.replicas": "2",
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		json0 := string(tmpJSON0)
/// 		_, err = msk.NewTopic(ctx, "example", &msk.TopicArgs{
/// 			Name:              pulumi.String("Example"),
/// 			ClusterArn:        pulumi.Any(exampleAwsMskCluster.Arn),
/// 			PartitionCount:    pulumi.Int(2),
/// 			ReplicationFactor: pulumi.Int(2),
/// 			Configs:           pulumi.String(json0),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// pulumi {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_msk_topic" "example" {
///   name               = "Example"
///   cluster_arn        = exampleAwsMskCluster.arn
///   partition_count    = 2
///   replication_factor = 2
///   configs = jsonencode({
///     "retention.ms"        = "604800000"
///     "retention.bytes"     = "-1"
///     "cleanup.policy"      = "delete"
///     "min.insync.replicas" = "2"
///   })
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.msk.Topic;
/// import com.pulumi.aws.msk.TopicArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
/// import java.util.ArrayList;
/// import java.util.Arrays;
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
///         var example = new Topic("example", TopicArgs.builder()
///             .name("Example")
///             .clusterArn(exampleAwsMskCluster.arn())
///             .partitionCount(2)
///             .replicationFactor(2)
///             .configs(serializeJson(
///                 jsonObject(
///                     jsonProperty("retention.ms", "604800000"),
///                     jsonProperty("retention.bytes", "-1"),
///                     jsonProperty("cleanup.policy", "delete"),
///                     jsonProperty("min.insync.replicas", "2")
///                 )))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:msk:Topic
///     properties:
///       name: Example
///       clusterArn: ${exampleAwsMskCluster.arn}
///       partitionCount: 2
///       replicationFactor: 2
///       configs:
///         fn::toJSON:
///           retention.ms: '604800000'
///           retention.bytes: '-1'
///           cleanup.policy: delete
///           min.insync.replicas: '2'
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `clusterArn` (String) Amazon Resource Name (ARN) that uniquely identifies MSK Cluster.
/// * `name` (String) Name of Topic.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import Managed Streaming for Kafka Topic using the `clusterArn` and `name`. For example:
///
/// ```sh
/// $ pulumi import aws:msk/topic:Topic example arn:aws:kafka:us-west-2:123456789012:cluster/example/279c0212-d057-4dba-9aa9-1c4e5a25bfc7-3,topicname
/// ```
class Topic extends pulumi.CustomResource {
  /// ARN of the Topic.
  late final pulumi.Output<String> arn;
  /// Amazon Resource Name (ARN) that uniquely identifies MSK Cluster.
  late final pulumi.Output<String> clusterArn;
  /// Explicit configured Kafka configuration in JSON format for Topic.
  late final pulumi.Output<String?> configs;
  /// Aggregated Kafka configuration in JSON format for Topic, both explicit set values from `configs` and implicit set values (AWS default configuration, historically set values or manual configuration from outside Terraform).
  late final pulumi.Output<String> configsActual;
  /// Name of Topic.
  late final pulumi.Output<String> name;
  /// Number of partitions for Topic.
  late final pulumi.Output<int> partitionCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Replication factor for Topic.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<int> replicationFactor;
  late final pulumi.Output<TopicTimeouts?> timeouts;

  /// Creates a new [Topic].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Topic]. {@macro pulumi_msk_topic_topic_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Topic(
    String name, {
    TopicArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/topic:Topic',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterArn = registerOutput<String>('clusterArn');
    configs = registerOutput<String?>('configs');
    configsActual = registerOutput<String>('configsActual');
    this.name = registerOutput<String>('name');
    partitionCount = registerOutput<int>('partitionCount');
    region = registerOutput<String>('region');
    replicationFactor = registerOutput<int>('replicationFactor');
    timeouts = registerOutput<TopicTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Topic] resource's state with the given [name] and [id].
  static Topic get(
    String name,
    pulumi.Input<String> id, {
    TopicState? state,
  }) {
    return Topic._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Topic._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:msk/topic:Topic',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterArn = registerOutput<String>('clusterArn');
    configs = registerOutput<String?>('configs');
    configsActual = registerOutput<String>('configsActual');
    this.name = registerOutput<String>('name');
    partitionCount = registerOutput<int>('partitionCount');
    region = registerOutput<String>('region');
    replicationFactor = registerOutput<int>('replicationFactor');
    timeouts = registerOutput<TopicTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return TopicTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
