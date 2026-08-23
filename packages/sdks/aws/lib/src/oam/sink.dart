import 'package:pulumi/pulumi.dart' as pulumi;
import 'sink_args.dart';
import 'sink_state.dart';

/// Resource for managing an AWS CloudWatch Observability Access Manager Sink.
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
/// const example = new aws.oam.Sink("example", {
///     name: "ExampleSink",
///     tags: {
///         Env: "prod",
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.oam.Sink("example",
///     name="ExampleSink",
///     tags={
///         "Env": "prod",
///     })
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.Oam.Sink("example", new()
///     {
///         Name = "ExampleSink",
///         Tags =
///         {
///             { "Env", "prod" },
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/oam"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := oam.NewSink(ctx, "example", &oam.SinkArgs{
/// 			Name: pulumi.String("ExampleSink"),
/// 			Tags: pulumi.StringMap{
/// 				"Env": pulumi.String("prod"),
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
/// resource "aws_oam_sink" "example" {
///   name = "ExampleSink"
///   tags = {
///     "Env" = "prod"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.oam.Sink;
/// import com.pulumi.aws.oam.SinkArgs;
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
///         var example = new Sink("example", SinkArgs.builder()
///             .name("ExampleSink")
///             .tags(Map.of("Env", "prod"))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:oam:Sink
///     properties:
///       name: ExampleSink
///       tags:
///         Env: prod
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import CloudWatch Observability Access Manager Sink using the `arn`. For example:
///
/// ```sh
/// $ pulumi import aws:oam/sink:Sink example arn:aws:oam:us-west-2:123456789012:sink/sink-id
/// ```
class Sink extends pulumi.CustomResource {
  /// ARN of the Sink.
  late final pulumi.Output<String> arn;
  /// Name for the sink.
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ID string that AWS generated as part of the sink ARN.
  late final pulumi.Output<String> sinkId;
  /// A map of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Sink].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Sink]. {@macro pulumi_oam_sink_sink_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Sink(
    String name, {
    SinkArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:oam/sink:Sink',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sinkId = registerOutput<String>('sinkId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }

  /// Gets an existing [Sink] resource's state with the given [name] and [id].
  static Sink get(
    String name,
    pulumi.Input<String> id, {
    SinkState? state,
  }) {
    return Sink._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  Sink._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:oam/sink:Sink',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    arn = registerOutput<String>('arn');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    sinkId = registerOutput<String>('sinkId');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
