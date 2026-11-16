import 'package:pulumi/pulumi.dart' as pulumi;
import 'stream_args.dart';
import 'stream_state.dart';
import 'stream_target_definition.dart';
import 'stream_timeouts.dart';

/// Manages an AWS DSQL Stream.
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
/// const exampleCluster = new aws.dsql.Cluster("example", {});
/// const exampleStream = new aws.kinesis.Stream("example", {
///     name: "example",
///     shardCount: 1,
/// });
/// const example = new aws.dsql.Stream("example", {
///     targetDefinition: {
///         kinesis: {
///             roleArn: exampleAwsIamRole.arn,
///             streamArn: exampleStream.arn,
///         },
///     },
///     clusterIdentifier: exampleCluster.identifier,
///     format: "JSON",
///     ordering: "UNORDERED",
/// }, {
///     dependsOn: [exampleAwsIamRolePolicy],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example_cluster = aws.dsql.Cluster("example")
/// example_stream = aws.kinesis.Stream("example",
///     name="example",
///     shard_count=1)
/// example = aws.dsql.Stream("example",
///     target_definition={
///         "kinesis": {
///             "role_arn": example_aws_iam_role["arn"],
///             "stream_arn": example_stream.arn,
///         },
///     },
///     cluster_identifier=example_cluster.identifier,
///     format="JSON",
///     ordering="UNORDERED",
///     opts = pulumi.ResourceOptions(depends_on=[example_aws_iam_role_policy]))
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var exampleCluster = new Aws.Dsql.Cluster("example");
///
///     var exampleStream = new Aws.Kinesis.Stream("example", new()
///     {
///         Name = "example",
///         ShardCount = 1,
///     });
///
///     var example = new Aws.Dsql.Stream("example", new()
///     {
///         TargetDefinition = new Aws.Dsql.Inputs.StreamTargetDefinitionArgs
///         {
///             Kinesis = new Aws.Dsql.Inputs.StreamTargetDefinitionKinesisArgs
///             {
///                 RoleArn = exampleAwsIamRole.Arn,
///                 StreamArn = exampleStream.Arn,
///             },
///         },
///         ClusterIdentifier = exampleCluster.Identifier,
///         Format = "JSON",
///         Ordering = "UNORDERED",
///     }, new CustomResourceOptions
///     {
///         DependsOn =
///         {
///             exampleAwsIamRolePolicy,
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/dsql"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/kinesis"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		exampleCluster, err := dsql.NewCluster(ctx, "example", nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		exampleStream, err := kinesis.NewStream(ctx, "example", &kinesis.StreamArgs{
/// 			Name:       pulumi.String("example"),
/// 			ShardCount: pulumi.Int(1),
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = dsql.NewStream(ctx, "example", &dsql.StreamArgs{
/// 			TargetDefinition: &dsql.StreamTargetDefinitionArgs{
/// 				Kinesis: &dsql.StreamTargetDefinitionKinesisArgs{
/// 					RoleArn:   pulumi.Any(exampleAwsIamRole.Arn),
/// 					StreamArn: exampleStream.Arn,
/// 				},
/// 			},
/// 			ClusterIdentifier: exampleCluster.Identifier,
/// 			Format:            pulumi.String("JSON"),
/// 			Ordering:          pulumi.String("UNORDERED"),
/// 		}, pulumi.DependsOn([]pulumi.Resource{
/// 			exampleAwsIamRolePolicy,
/// 		}))
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```hcl
/// terraform {
///   required_providers {
///     aws = {
///       source = "pulumi/aws"
///     }
///   }
/// }
///
/// resource "aws_dsql_stream" "example" {
///   depends_on = [exampleAwsIamRolePolicy]
///   lifecycle {
///     create_before_destroy = true
///   }
///   target_definition {
///     kinesis {
///       role_arn   = exampleAwsIamRole.arn
///       stream_arn = aws_kinesis_stream.example.arn
///     }
///   }
///   cluster_identifier = aws_dsql_cluster.example.identifier
///   format             = "JSON"
///   ordering           = "UNORDERED"
/// }
/// resource "aws_dsql_cluster" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
/// }
/// resource "aws_kinesis_stream" "example" {
///   lifecycle {
///     create_before_destroy = true
///   }
///   name        = "example"
///   shard_count = 1
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.dsql.Cluster;
/// import com.pulumi.aws.dsql.inputs.StreamTargetDefinitionArgs;
/// import com.pulumi.aws.dsql.inputs.StreamTargetDefinitionKinesisArgs;
/// import com.pulumi.resources.CustomResourceOptions;
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
///         var exampleCluster = new Cluster("exampleCluster");
///
///         var exampleStream = new com.pulumi.aws.kinesis.Stream("exampleStream", com.pulumi.aws.kinesis.StreamArgs.builder()
///             .name("example")
///             .shardCount(1)
///             .build());
///
///         var example = new com.pulumi.aws.dsql.Stream("example", com.pulumi.aws.dsql.StreamArgs.builder()
///             .targetDefinition(StreamTargetDefinitionArgs.builder()
///                 .kinesis(StreamTargetDefinitionKinesisArgs.builder()
///                     .roleArn(exampleAwsIamRole.get("arn"))
///                     .streamArn(exampleStream.arn())
///                     .build())
///                 .build())
///             .clusterIdentifier(exampleCluster.identifier())
///             .format("JSON")
///             .ordering("UNORDERED")
///             .build(), CustomResourceOptions.builder()
///                 .dependsOn(exampleAwsIamRolePolicy)
///                 .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:dsql:Stream
///     properties:
///       targetDefinition:
///         kinesis:
///           roleArn: ${exampleAwsIamRole.arn}
///           streamArn: ${exampleStream.arn}
///       clusterIdentifier: ${exampleCluster.identifier}
///       format: JSON
///       ordering: UNORDERED
///     options:
///       dependsOn:
///         - ${exampleAwsIamRolePolicy}
///   exampleCluster:
///     type: aws:dsql:Cluster
///     name: example
///   exampleStream:
///     type: aws:kinesis:Stream
///     name: example
///     properties:
///       name: example
///       shardCount: 1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `clusterIdentifier` (String) ID of the cluster for which to create the stream.
/// * `streamIdentifier` (String) ID of the retrieved stream.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import DSQL Stream using the `clusterIdentifier` and `streamIdentifier`, separated by a comma. For example:
///
/// ```sh
/// $ pulumi import aws:dsql/stream:Stream example "cluster-identifier-0123456789abcdef0,stream-identifier-0123456789abcdef0"
/// ```
class Stream extends pulumi.CustomResource {
  /// ARN of the retrieved stream.
  late final pulumi.Output<String> arn;
  /// ID of the cluster for which to create the stream.
  late final pulumi.Output<String> clusterIdentifier;
  /// Time when the stream was created.
  late final pulumi.Output<String> creationTime;
  /// Format of the stream records. Valid values: `JSON`.
  late final pulumi.Output<String> format;
  /// Ordering mode for the stream. Determines how change events are ordered when delivered to the target. Valid values: `UNORDERED`.
  late final pulumi.Output<String> ordering;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Current status of the retrieved stream. Valid values: `CREATING`, `ACTIVE`, `DELETING`, `DELETED`, `FAILED`, `IMPAIRED`.
  late final pulumi.Output<String> status;
  /// ID of the retrieved stream.
  late final pulumi.Output<String> streamIdentifier;
  /// Map of tags assigned to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  /// Target destination configuration for the stream. Contains Kinesis stream configuration including stream ARN and IAM role ARN. See `targetDefinition` Block below.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<StreamTargetDefinition> targetDefinition;
  late final pulumi.Output<StreamTimeouts?> timeouts;

  /// Creates a new [Stream].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Stream]. {@macro pulumi_dsql_stream_stream_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Stream(
    String name, {
    StreamArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dsql/stream:Stream',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.55.0').merge(options),
        ) {
    arn = registerOutput<String>('arn');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    creationTime = registerOutput<String>('creationTime');
    format = registerOutput<String>('format');
    ordering = registerOutput<String>('ordering');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    streamIdentifier = registerOutput<String>('streamIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDefinition = registerOutput<StreamTargetDefinition>('targetDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamTargetDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<StreamTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [Stream] resource's state with the given [name] and [id].
  static Stream get(
    String name,
    pulumi.Input<String> id, {
    StreamState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Stream._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Stream._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:dsql/stream:Stream',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    creationTime = registerOutput<String>('creationTime');
    format = registerOutput<String>('format');
    ordering = registerOutput<String>('ordering');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    streamIdentifier = registerOutput<String>('streamIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDefinition = registerOutput<StreamTargetDefinition>('targetDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamTargetDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<StreamTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [Stream] resource.
  Stream.reference(String urn)
    : super(
        'aws:dsql/stream:Stream',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    arn = registerOutput<String>('arn');
    clusterIdentifier = registerOutput<String>('clusterIdentifier');
    creationTime = registerOutput<String>('creationTime');
    format = registerOutput<String>('format');
    ordering = registerOutput<String>('ordering');
    region = registerOutput<String>('region');
    status = registerOutput<String>('status');
    streamIdentifier = registerOutput<String>('streamIdentifier');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    targetDefinition = registerOutput<StreamTargetDefinition>('targetDefinition', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamTargetDefinition.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    timeouts = registerOutput<StreamTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return StreamTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
