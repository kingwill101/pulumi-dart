import 'package:pulumi/pulumi.dart' as pulumi;
import 'graph_args.dart';
import 'graph_state.dart';

/// Provides a resource to manage an [AWS Detective Graph](https://docs.aws.amazon.com/detective/latest/APIReference/API_CreateGraph.html). As an AWS account may own only one Detective graph per region, provisioning multiple Detective graphs requires a separate provider configuration for each graph.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.detective.Graph("example", {tags: {
///     Name: "example-detective-graph",
/// }});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.detective.Graph("example", tags={
///     "Name": "example-detective-graph",
/// })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Detective.Graph("example", new()
///     {
///         Tags =
///         {
///             { "Name", "example-detective-graph" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/detective"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := detective.NewGraph(ctx, "example", &detective.GraphArgs{
/// 			Tags: pulumi.StringMap{
/// 				"Name": pulumi.String("example-detective-graph"),
/// 			},
/// 		})
/// 		if err != nil {
/// 			return err
/// 		}
/// 		return nil
/// 	})
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.detective.Graph;
/// import com.pulumi.aws.detective.GraphArgs;
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
///         var example = new Graph("example", GraphArgs.builder()
///             .tags(Map.of("Name", "example-detective-graph"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:detective:Graph
///     properties:
///       tags:
///         Name: example-detective-graph
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.detective.Graph` using the ARN. For example:
///
/// ```sh
/// $ pulumi import aws:detective/graph:Graph example arn:aws:detective:us-east-1:123456789101:graph:231684d34gh74g4bae1dbc7bd807d02d
/// ```
class Graph extends pulumi.CustomResource {
  /// Date and time, in UTC and extended RFC 3339 format, when the Amazon Detective Graph was created.
  late final pulumi.Output<String> createdTime;

  /// ARN of the Detective Graph.
  late final pulumi.Output<String> graphArn;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// A map of tags to assign to the instance. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Graph].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Graph]. {@macro pulumi_detective_graph_graph_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Graph(String name, {GraphArgs? args, pulumi.CustomResourceOptions? options})
    : super(
        'aws:detective/graph:Graph',
        name,
        pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
        options ?? pulumi.CustomResourceOptions(),
      ) {
    createdTime = registerOutput<String>('createdTime');
    graphArn = registerOutput<String>('graphArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Graph] resource's state with the given [name] and [id].
  static Graph get(String name, pulumi.Input<String> id, {GraphState? state}) {
    return Graph._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Graph._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:detective/graph:Graph',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    createdTime = registerOutput<String>('createdTime');
    graphArn = registerOutput<String>('graphArn');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
