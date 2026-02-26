import 'package:pulumi/pulumi.dart';
import '../pipeline_parallelism_configuration/pipeline_parallelism_configuration.dart';
import '../pipeline_pipeline_definition_s3_location/pipeline_pipeline_definition_s3_location.dart';
import 'pipeline_args5.dart';

/// Provides a SageMaker AI Pipeline resource.
///
/// ## Example Usage
///
/// ### Basic usage
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.Pipeline("example", {
/// pipelineName: "example",
/// pipelineDisplayName: "example",
/// roleArn: exampleAwsIamRole.arn,
/// pipelineDefinition: JSON.stringify({
/// Version: "2020-12-01",
/// Steps: [{
/// Name: "Test",
/// Type: "Fail",
/// Arguments: {
/// ErrorMessage: "test",
/// },
/// }],
/// }),
/// });
/// ```
/// ```python
/// import pulumi
/// import json
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.Pipeline("example",
/// pipeline_name="example",
/// pipeline_display_name="example",
/// role_arn=example_aws_iam_role["arn"],
/// pipeline_definition=json.dumps({
/// "Version": "2020-12-01",
/// "Steps": [{
/// "Name": "Test",
/// "Type": "Fail",
/// "Arguments": {
/// "ErrorMessage": "test",
/// },
/// }],
/// }))
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
/// var example = new Aws.Sagemaker.Pipeline("example", new()
/// {
/// PipelineName = "example",
/// PipelineDisplayName = "example",
/// RoleArn = exampleAwsIamRole.Arn,
/// PipelineDefinition = JsonSerializer.Serialize(new Dictionary<string, object?>
/// {
/// ["Version"] = "2020-12-01",
/// ["Steps"] = new[]
/// {
/// new Dictionary<string, object?>
/// {
/// ["Name"] = "Test",
/// ["Type"] = "Fail",
/// ["Arguments"] = new Dictionary<string, object?>
/// {
/// ["ErrorMessage"] = "test",
/// },
/// },
/// },
/// }),
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "encoding/json"
///
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// tmpJSON0, err := json.Marshal(map[string]interface{}{
/// "Version": "2020-12-01",
/// "Steps": []map[string]interface{}{
/// map[string]interface{}{
/// "Name": "Test",
/// "Type": "Fail",
/// "Arguments": map[string]interface{}{
/// "ErrorMessage": "test",
/// },
/// },
/// },
/// })
/// if err != nil {
/// return err
/// }
/// json0 := string(tmpJSON0)
/// _, err = sagemaker.NewPipeline(ctx, "example", &sagemaker.PipelineArgs{
/// PipelineName:        pulumi.String("example"),
/// PipelineDisplayName: pulumi.String("example"),
/// RoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
/// PipelineDefinition:  pulumi.String(json0),
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
/// import com.pulumi.aws.sagemaker.Pipeline;
/// import com.pulumi.aws.sagemaker.PipelineArgs;
/// import static com.pulumi.codegen.internal.Serialization.*;
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
/// var example = new Pipeline("example", PipelineArgs.builder()
/// .pipelineName("example")
/// .pipelineDisplayName("example")
/// .roleArn(exampleAwsIamRole.arn())
/// .pipelineDefinition(serializeJson(
/// jsonObject(
/// jsonProperty("Version", "2020-12-01"),
/// jsonProperty("Steps", jsonArray(jsonObject(
/// jsonProperty("Name", "Test"),
/// jsonProperty("Type", "Fail"),
/// jsonProperty("Arguments", jsonObject(
/// jsonProperty("ErrorMessage", "test")
/// ))
/// )))
/// )))
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:Pipeline
/// properties:
/// pipelineName: example
/// pipelineDisplayName: example
/// roleArn: ${exampleAwsIamRole.arn}
/// pipelineDefinition:
/// fn::toJSON:
/// Version: 2020-12-01
/// Steps:
/// - Name: Test
/// Type: Fail
/// Arguments:
/// ErrorMessage: test
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import pipelines using the <span pulumi-lang-nodejs="`pipelineName`" pulumi-lang-dotnet="`PipelineName`" pulumi-lang-go="`pipelineName`" pulumi-lang-python="`pipeline_name`" pulumi-lang-yaml="`pipelineName`" pulumi-lang-java="`pipelineName`">`pipeline_name`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/pipeline:Pipeline test_pipeline pipeline
/// ```
class Pipeline5 extends CustomResource {
  /// The Amazon Resource Name (ARN) assigned by AWS to this Pipeline.
  late final Output<String> arn;

  /// This is the configuration that controls the parallelism of the pipeline. If specified, it applies to all runs of this pipeline by default. see Parallelism Configuration details below.
  late final Output<PipelineParallelismConfiguration?> parallelismConfiguration;

  /// The [JSON pipeline definition](https://aws-sagemaker-mlops.github.io/sagemaker-model-building-pipeline-definition-JSON-schema/) of the pipeline.
  late final Output<String?> pipelineDefinition;

  /// The location of the pipeline definition stored in Amazon S3. If specified, SageMaker AI will retrieve the pipeline definition from this location. see Pipeline Definition S3 Location details below.
  late final Output<PipelinePipelineDefinitionS3Location?>
      pipelineDefinitionS3Location;

  /// A description of the pipeline.
  late final Output<String?> pipelineDescription;

  /// The display name of the pipeline.
  late final Output<String> pipelineDisplayName;

  /// The name of the pipeline.
  late final Output<String> pipelineName;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// The ARN of the IAM role the pipeline will execute as.
  late final Output<String?> roleArn;

  /// A map of tags to assign to the resource. If configured with a provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider <span pulumi-lang-nodejs="`defaultTags`" pulumi-lang-dotnet="`DefaultTags`" pulumi-lang-go="`defaultTags`" pulumi-lang-python="`default_tags`" pulumi-lang-yaml="`defaultTags`" pulumi-lang-java="`defaultTags`">`default_tags`</span> configuration block.
  late final Output<Map<String, String>> tagsAll;

  Pipeline5(
    String name, {
    PipelineArgs5? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/pipeline:Pipeline',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.arn = Output.createUnknown<String>();
    this.parallelismConfiguration =
        Output.createUnknown<PipelineParallelismConfiguration?>();
    this.pipelineDefinition = Output.createUnknown<String?>();
    this.pipelineDefinitionS3Location =
        Output.createUnknown<PipelinePipelineDefinitionS3Location?>();
    this.pipelineDescription = Output.createUnknown<String?>();
    this.pipelineDisplayName = Output.createUnknown<String>();
    this.pipelineName = Output.createUnknown<String>();
    this.region = Output.createUnknown<String>();
    this.roleArn = Output.createUnknown<String?>();
    this.tags = Output.createUnknown<Map<String, String>?>();
    this.tagsAll = Output.createUnknown<Map<String, String>>();
  }
}
