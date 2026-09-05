import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipeline_args.dart';
import 'pipeline_state.dart';

/// Provides a DataPipeline Pipeline resource.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const _default = new aws.datapipeline.Pipeline("default", {name: "tf-pipeline-default"});
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// default = aws.datapipeline.Pipeline("default", name="tf-pipeline-default")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var @default = new Aws.DataPipeline.Pipeline("default", new()
///     {
///         Name = "tf-pipeline-default",
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datapipeline"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := datapipeline.NewPipeline(ctx, "default", &datapipeline.PipelineArgs{
/// 			Name: pulumi.String("tf-pipeline-default"),
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
/// resource "aws_datapipeline_pipeline" "default" {
///   name = "tf-pipeline-default"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.datapipeline.Pipeline;
/// import com.pulumi.aws.datapipeline.PipelineArgs;
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
///         var default_ = new Pipeline("default", PipelineArgs.builder()
///             .name("tf-pipeline-default")
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   default:
///     type: aws:datapipeline:Pipeline
///     properties:
///       name: tf-pipeline-default
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import `aws.datapipeline.Pipeline` using the id (Pipeline ID). For example:
///
/// ```sh
/// $ pulumi import aws:datapipeline/pipeline:Pipeline default df-1234567890
/// ```
class Pipeline extends pulumi.CustomResource {
  /// The description of Pipeline.
  late final pulumi.Output<String?> description;
  /// The name of Pipeline.
  late final pulumi.Output<String> name;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// A map of tags to assign to the resource. .If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [Pipeline].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [Pipeline]. {@macro pulumi_datapipeline_pipeline_pipeline_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  Pipeline(
    String name, {
    PipelineArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [Pipeline] resource's state with the given [name] and [id].
  static Pipeline get(
    String name,
    pulumi.Input<String> id, {
    PipelineState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return Pipeline._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  Pipeline._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipeline:Pipeline',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [Pipeline] resource.
  Pipeline.reference(String urn)
    : super(
        'aws:datapipeline/pipeline:Pipeline',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    region = registerOutput<String>('region');
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
