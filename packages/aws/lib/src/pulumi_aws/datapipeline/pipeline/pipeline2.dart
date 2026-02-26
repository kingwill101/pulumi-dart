import 'package:pulumi/pulumi.dart';
import 'pipeline_args2.dart';

/// Provides a DataPipeline Pipeline resource.
///
/// ## Example Usage
///
/// <!--Start PulumiCodeChooser -->
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
/// var @default = new Aws.DataPipeline.Pipeline("default", new()
/// {
/// Name = "tf-pipeline-default",
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/datapipeline"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := datapipeline.NewPipeline(ctx, "default", &datapipeline.PipelineArgs{
/// Name: pulumi.String("tf-pipeline-default"),
/// })
/// if err != nil {
/// return err
/// }
/// return nil
/// })
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
/// import java.util.List;
/// import java.util.ArrayList;
/// import java.util.Map;
/// import java.io.File;
/// import java.nio.file.Files;
/// import java.nio.file.Paths;
///
/// public class App {
/// public static void main(String[] args) {
/// Pulumi.run(App::stack);
/// }
///
/// public static void stack(Context ctx) {
/// var default_ = new Pipeline("default", PipelineArgs.builder()
/// .name("tf-pipeline-default")
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// default:
/// type: aws:datapipeline:Pipeline
/// properties:
/// name: tf-pipeline-default
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import <span pulumi-lang-nodejs="`aws.datapipeline.Pipeline`" pulumi-lang-dotnet="`aws.datapipeline.Pipeline`" pulumi-lang-go="`datapipeline.Pipeline`" pulumi-lang-python="`datapipeline.Pipeline`" pulumi-lang-yaml="`aws.datapipeline.Pipeline`" pulumi-lang-java="`aws.datapipeline.Pipeline`">`aws.datapipeline.Pipeline`</span> using the id (Pipeline ID). For example:
///
/// ```sh
/// $ pulumi import aws:datapipeline/pipeline:Pipeline default df-1234567890
/// ```
class Pipeline2 extends CustomResource {
  /// The description of Pipeline.
  late final Output<String?> description;

  /// The name of Pipeline.
  late final Output<String> name;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// A map of tags to assign to the resource. .If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Pipeline2(
    String name, {
    PipelineArgs2? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:datapipeline/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.description = registerOutput<String?>('description');
    this.name = registerOutput<String>('name');
    this.region = registerOutput<String>('region');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
