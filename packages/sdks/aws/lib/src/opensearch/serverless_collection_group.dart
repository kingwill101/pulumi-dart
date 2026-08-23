import 'package:pulumi/pulumi.dart' as pulumi;
import 'serverless_collection_group_args.dart';
import 'serverless_collection_group_state.dart';

/// Resource for managing an AWS OpenSearch Serverless Collection Group.
///
/// Collection groups let multiple OpenSearch Serverless collections share compute resources while keeping encryption and access controls independent.
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
/// const example = new aws.opensearch.ServerlessCollectionGroup("example", {
///     name: "example-group",
///     description: "Shared compute for production collections",
///     standbyReplicas: "ENABLED",
///     capacityLimits: [{
///         minIndexingCapacityInOcu: 2,
///         maxIndexingCapacityInOcu: 16,
///         minSearchCapacityInOcu: 2,
///         maxSearchCapacityInOcu: 16,
///     }],
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.opensearch.ServerlessCollectionGroup("example",
///     name="example-group",
///     description="Shared compute for production collections",
///     standby_replicas="ENABLED",
///     capacity_limits=[{
///         "min_indexing_capacity_in_ocu": float(2),
///         "max_indexing_capacity_in_ocu": float(16),
///         "min_search_capacity_in_ocu": float(2),
///         "max_search_capacity_in_ocu": float(16),
///     }])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.OpenSearch.ServerlessCollectionGroup("example", new()
///     {
///         Name = "example-group",
///         Description = "Shared compute for production collections",
///         StandbyReplicas = "ENABLED",
///         CapacityLimits = new[]
///         {
///             new Aws.OpenSearch.Inputs.ServerlessCollectionGroupCapacityLimitArgs
///             {
///                 MinIndexingCapacityInOcu = 2,
///                 MaxIndexingCapacityInOcu = 16,
///                 MinSearchCapacityInOcu = 2,
///                 MaxSearchCapacityInOcu = 16,
///             },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/opensearch"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := opensearch.NewServerlessCollectionGroup(ctx, "example", &opensearch.ServerlessCollectionGroupArgs{
/// 			Name:            pulumi.String("example-group"),
/// 			Description:     pulumi.String("Shared compute for production collections"),
/// 			StandbyReplicas: pulumi.String("ENABLED"),
/// 			CapacityLimits: opensearch.ServerlessCollectionGroupCapacityLimitArray{
/// 				&opensearch.ServerlessCollectionGroupCapacityLimitArgs{
/// 					MinIndexingCapacityInOcu: pulumi.Float64(2),
/// 					MaxIndexingCapacityInOcu: pulumi.Float64(16),
/// 					MinSearchCapacityInOcu:   pulumi.Float64(2),
/// 					MaxSearchCapacityInOcu:   pulumi.Float64(16),
/// 				},
/// 			},
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
/// resource "aws_opensearch_serverlesscollectiongroup" "example" {
///   name             = "example-group"
///   description      = "Shared compute for production collections"
///   standby_replicas = "ENABLED"
///   capacity_limits {
///     min_indexing_capacity_in_ocu = 2
///     max_indexing_capacity_in_ocu = 16
///     min_search_capacity_in_ocu   = 2
///     max_search_capacity_in_ocu   = 16
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.opensearch.ServerlessCollectionGroup;
/// import com.pulumi.aws.opensearch.ServerlessCollectionGroupArgs;
/// import com.pulumi.aws.opensearch.inputs.ServerlessCollectionGroupCapacityLimitArgs;
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
///         var example = new ServerlessCollectionGroup("example", ServerlessCollectionGroupArgs.builder()
///             .name("example-group")
///             .description("Shared compute for production collections")
///             .standbyReplicas("ENABLED")
///             .capacityLimits(ServerlessCollectionGroupCapacityLimitArgs.builder()
///                 .minIndexingCapacityInOcu(2.0)
///                 .maxIndexingCapacityInOcu(16.0)
///                 .minSearchCapacityInOcu(2.0)
///                 .maxSearchCapacityInOcu(16.0)
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:opensearch:ServerlessCollectionGroup
///     properties:
///       name: example-group
///       description: Shared compute for production collections
///       standbyReplicas: ENABLED
///       capacityLimits:
///         - minIndexingCapacityInOcu: 2
///           maxIndexingCapacityInOcu: 16
///           minSearchCapacityInOcu: 2
///           maxSearchCapacityInOcu: 16
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// * `id` (String) Unique identifier for the collection group.
///
/// #### Optional
///
/// * `accountId` (String) AWS Account where this resource is managed.
/// * `region` (String) Region where this resource is managed.
///
///
/// Using `pulumi import`, import OpenSearch Serverless Collection Group using the `id`. For example:
///
/// ```sh
/// $ pulumi import aws:opensearch/serverlessCollectionGroup:ServerlessCollectionGroup example example-group-id
/// ```
class ServerlessCollectionGroup extends pulumi.CustomResource {
  /// Amazon Resource Name (ARN) of the collection group.
  late final pulumi.Output<String> arn;
  /// Configuration block for the collection group's indexing and search capacity limits. See `capacityLimits` below for details.
  late final pulumi.Output<List<Map<String, dynamic>>> capacityLimits;
  /// Date the collection group was created.
  late final pulumi.Output<String> createdDate;
  /// Description of the collection group.
  late final pulumi.Output<String?> description;
  /// Generation of Amazon OpenSearch Serverless for the collection group. Valid values are `CLASSIC` and `NEXTGEN`. Default value is `CLASSIC`.
  late final pulumi.Output<String> generation;
  /// Name of the collection group.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// Indicates whether standby replicas should be used for collections in this group. Valid values are `ENABLED` and `DISABLED`. If `generation` is set to `NEXTGEN`, this argument must be set to `ENABLED`.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> standbyReplicas;
  /// A map of tags to assign to the collection group. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [ServerlessCollectionGroup].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ServerlessCollectionGroup]. {@macro pulumi_opensearch_serverless_collection_group_serverless_collection_group_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ServerlessCollectionGroup(
    String name, {
    ServerlessCollectionGroupArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessCollectionGroup:ServerlessCollectionGroup',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    capacityLimits = registerOutput<List<Map<String, dynamic>>>('capacityLimits');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    generation = registerOutput<String>('generation');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    standbyReplicas = registerOutput<String>('standbyReplicas');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [ServerlessCollectionGroup] resource's state with the given [name] and [id].
  static ServerlessCollectionGroup get(
    String name,
    pulumi.Input<String> id, {
    ServerlessCollectionGroupState? state,
  }) {
    return ServerlessCollectionGroup._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ServerlessCollectionGroup._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:opensearch/serverlessCollectionGroup:ServerlessCollectionGroup',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    capacityLimits = registerOutput<List<Map<String, dynamic>>>('capacityLimits');
    createdDate = registerOutput<String>('createdDate');
    description = registerOutput<String?>('description');
    generation = registerOutput<String>('generation');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    standbyReplicas = registerOutput<String>('standbyReplicas');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
