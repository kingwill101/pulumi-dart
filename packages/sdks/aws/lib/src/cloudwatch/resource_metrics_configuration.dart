import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_metrics_configuration_args.dart';
import 'resource_metrics_configuration_metric_selection.dart';
import 'resource_metrics_configuration_state.dart';

/// Manages a CloudWatch resource metrics configuration. Creating a configuration makes CloudWatch collect detailed metrics for the targeted AWS resource.
///
/// Each AWS resource can have at most one resource metrics configuration. Detailed metrics incur charges, so limit collection with `metricSelection` when you only need a subset of metrics. See [Amazon CloudWatch pricing](https://aws.amazon.com/cloudwatch/pricing/) for details.
///
/// &gt; **Note:** Not every AWS resource type is eligible for detailed metrics. At the time of writing, only Amazon ElastiCache replication groups are supported. Targeting any other resource type, including ElastiCache serverless caches and cache clusters, returns a `ValidationError` with the message `Unsupported resource type`.
///
/// ## Example Usage
///
/// ### Basic Usage
///
/// Omit `metricSelection` to collect every detailed metric that is available for the resource.
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.elasticache.ReplicationGroup("example", {
///     replicationGroupId: "example",
///     description: "example",
///     engine: "valkey",
///     nodeType: "cache.t3.small",
///     numCacheClusters: 1,
/// });
/// const exampleResourceMetricsConfiguration = new aws.cloudwatch.ResourceMetricsConfiguration("example", {resourceArn: example.arn});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.elasticache.ReplicationGroup("example",
///     replication_group_id="example",
///     description="example",
///     engine="valkey",
///     node_type="cache.t3.small",
///     num_cache_clusters=1)
/// example_resource_metrics_configuration = aws.cloudwatch.ResourceMetricsConfiguration("example", resource_arn=example.arn)
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.ElastiCache.ReplicationGroup("example", new()
///     {
///         ReplicationGroupId = "example",
///         Description = "example",
///         Engine = "valkey",
///         NodeType = "cache.t3.small",
///         NumCacheClusters = 1,
///     });
///
///     var exampleResourceMetricsConfiguration = new Aws.CloudWatch.ResourceMetricsConfiguration("example", new()
///     {
///         ResourceArn = example.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/elasticache"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := elasticache.NewReplicationGroup(ctx, "example", &elasticache.ReplicationGroupArgs{
/// 			ReplicationGroupId: pulumi.String("example"),
/// 			Description:        pulumi.String("example"),
/// 			Engine:             pulumi.String("valkey"),
/// 			NodeType:           pulumi.String("cache.t3.small"),
/// 			NumCacheClusters:   pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = cloudwatch.NewResourceMetricsConfiguration(ctx, "example", &cloudwatch.ResourceMetricsConfigurationArgs{
/// 			ResourceArn: example.Arn,
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
/// resource "aws_elasticache_replicationgroup" "example" {
///   replication_group_id = "example"
///   description          = "example"
///   engine               = "valkey"
///   node_type            = "cache.t3.small"
///   num_cache_clusters   = 1
/// }
/// resource "aws_cloudwatch_resourcemetricsconfiguration" "example" {
///   resource_arn = aws_elasticache_replicationgroup.example.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.elasticache.ReplicationGroup;
/// import com.pulumi.aws.elasticache.ReplicationGroupArgs;
/// import com.pulumi.aws.cloudwatch.ResourceMetricsConfiguration;
/// import com.pulumi.aws.cloudwatch.ResourceMetricsConfigurationArgs;
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
///         var example = new ReplicationGroup("example", ReplicationGroupArgs.builder()
///             .replicationGroupId("example")
///             .description("example")
///             .engine("valkey")
///             .nodeType("cache.t3.small")
///             .numCacheClusters(1)
///             .build());
///
///         var exampleResourceMetricsConfiguration = new ResourceMetricsConfiguration("exampleResourceMetricsConfiguration", ResourceMetricsConfigurationArgs.builder()
///             .resourceArn(example.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:elasticache:ReplicationGroup
///     properties:
///       replicationGroupId: example
///       description: example
///       engine: valkey
///       nodeType: cache.t3.small
///       numCacheClusters: 1
///   exampleResourceMetricsConfiguration:
///     type: aws:cloudwatch:ResourceMetricsConfiguration
///     name: example
///     properties:
///       resourceArn: ${example.arn}
/// ```
///
///
/// ### Collect Selected Metrics
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.cloudwatch.ResourceMetricsConfiguration("example", {
///     metricSelection: {
///         includeMetrics: [
///             "valkey.memory.used",
///             "valkey.commands.processed",
///         ],
///     },
///     resourceArn: exampleAwsElasticacheReplicationGroup.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.cloudwatch.ResourceMetricsConfiguration("example",
///     metric_selection={
///         "include_metrics": [
///             "valkey.memory.used",
///             "valkey.commands.processed",
///         ],
///     },
///     resource_arn=example_aws_elasticache_replication_group["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.CloudWatch.ResourceMetricsConfiguration("example", new()
///     {
///         MetricSelection = new Aws.CloudWatch.Inputs.ResourceMetricsConfigurationMetricSelectionArgs
///         {
///             IncludeMetrics = new[]
///             {
///                 "valkey.memory.used",
///                 "valkey.commands.processed",
///             },
///         },
///         ResourceArn = exampleAwsElasticacheReplicationGroup.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/cloudwatch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := cloudwatch.NewResourceMetricsConfiguration(ctx, "example", &cloudwatch.ResourceMetricsConfigurationArgs{
/// 			MetricSelection: &cloudwatch.ResourceMetricsConfigurationMetricSelectionArgs{
/// 				IncludeMetrics: pulumi.StringArray{
/// 					pulumi.String("valkey.memory.used"),
/// 					pulumi.String("valkey.commands.processed"),
/// 				},
/// 			},
/// 			ResourceArn: pulumi.Any(exampleAwsElasticacheReplicationGroup.Arn),
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
/// resource "aws_cloudwatch_resourcemetricsconfiguration" "example" {
///   metric_selection = {
///     include_metrics = ["valkey.memory.used", "valkey.commands.processed"]
///   }
///   resource_arn = exampleAwsElasticacheReplicationGroup.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.cloudwatch.ResourceMetricsConfiguration;
/// import com.pulumi.aws.cloudwatch.ResourceMetricsConfigurationArgs;
/// import com.pulumi.aws.cloudwatch.inputs.ResourceMetricsConfigurationMetricSelectionArgs;
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
///         var example = new ResourceMetricsConfiguration("example", ResourceMetricsConfigurationArgs.builder()
///             .metricSelection(ResourceMetricsConfigurationMetricSelectionArgs.builder()
///                 .includeMetrics(
///                     "valkey.memory.used",
///                     "valkey.commands.processed")
///                 .build())
///             .resourceArn(exampleAwsElasticacheReplicationGroup.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:cloudwatch:ResourceMetricsConfiguration
///     properties:
///       metricSelection:
///         includeMetrics:
///           - valkey.memory.used
///           - valkey.commands.processed
///       resourceArn: ${exampleAwsElasticacheReplicationGroup.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `resourceArn` - ARN of the AWS resource that the resource metrics configuration applies to.
///
///
/// Using `pulumi import`, import a CloudWatch resource metrics configuration using the `resourceArn`. For example:
///
/// ```sh
/// $ pulumi import aws:cloudwatch/resourceMetricsConfiguration:ResourceMetricsConfiguration example arn:aws:elasticache:us-west-2:012345678901:replicationgroup:example
/// ```
class ResourceMetricsConfiguration extends pulumi.CustomResource {
  /// Configuration block that limits which metrics CloudWatch collects. At most one block is supported. When omitted, CloudWatch collects all available detailed metrics for the resource. See `metricSelection` below.
  late final pulumi.Output<ResourceMetricsConfigurationMetricSelection?> metricSelection;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the AWS resource to enable detailed monitoring for. Changing this forces a new resource to be created.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> resourceArn;

  /// Creates a new [ResourceMetricsConfiguration].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ResourceMetricsConfiguration]. {@macro pulumi_cloudwatch_resource_metrics_configuration_resource_metrics_configuration_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ResourceMetricsConfiguration(
    String name, {
    ResourceMetricsConfigurationArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/resourceMetricsConfiguration:ResourceMetricsConfiguration',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.51.1').merge(options),
        ) {
    metricSelection = registerOutput<ResourceMetricsConfigurationMetricSelection?>('metricSelection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceMetricsConfigurationMetricSelection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Gets an existing [ResourceMetricsConfiguration] resource's state with the given [name] and [id].
  static ResourceMetricsConfiguration get(
    String name,
    pulumi.Input<String> id, {
    ResourceMetricsConfigurationState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return ResourceMetricsConfiguration._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  ResourceMetricsConfiguration._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:cloudwatch/resourceMetricsConfiguration:ResourceMetricsConfiguration',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    metricSelection = registerOutput<ResourceMetricsConfigurationMetricSelection?>('metricSelection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceMetricsConfigurationMetricSelection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }

  /// Creates a typed reference to an existing [ResourceMetricsConfiguration] resource.
  ResourceMetricsConfiguration.reference(String urn)
    : super(
        'aws:cloudwatch/resourceMetricsConfiguration:ResourceMetricsConfiguration',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    metricSelection = registerOutput<ResourceMetricsConfigurationMetricSelection?>('metricSelection', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return ResourceMetricsConfigurationMetricSelection.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    resourceArn = registerOutput<String>('resourceArn');
  }
}
