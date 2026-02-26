import 'package:pulumi/pulumi.dart';
import '../model_card_export_job_export_artifact/model_card_export_job_export_artifact.dart';
import '../model_card_export_job_output_config/model_card_export_job_output_config.dart';
import '../model_card_export_job_timeouts/model_card_export_job_timeouts.dart';
import 'model_card_export_job_args.dart';

/// Manage an Amazon SageMaker Model Card export job.
///
/// ## Example Usage
///
/// Basic usage:
///
/// <!--Start PulumiCodeChooser -->
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.ModelCardExportJob("example", {
/// modelCardExportJobName: "my-model-card-export-job",
/// modelCardName: exampleAwsSagemakerModelCard.modelCardName,
/// outputConfig: {
/// s3OutputPath: `s3://${test.example}/`,
/// },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.ModelCardExportJob("example",
/// model_card_export_job_name="my-model-card-export-job",
/// model_card_name=example_aws_sagemaker_model_card["modelCardName"],
/// output_config={
/// "s3_output_path": f"s3://{test['example']}/",
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
/// var example = new Aws.Sagemaker.ModelCardExportJob("example", new()
/// {
/// ModelCardExportJobName = "my-model-card-export-job",
/// ModelCardName = exampleAwsSagemakerModelCard.ModelCardName,
/// OutputConfig = new Aws.Sagemaker.Inputs.ModelCardExportJobOutputConfigArgs
/// {
/// S3OutputPath = $"s3://{test.Example}/",
/// },
/// });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// "github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// "github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// pulumi.Run(func(ctx *pulumi.Context) error {
/// _, err := sagemaker.NewModelCardExportJob(ctx, "example", &sagemaker.ModelCardExportJobArgs{
/// ModelCardExportJobName: pulumi.String("my-model-card-export-job"),
/// ModelCardName:          pulumi.Any(exampleAwsSagemakerModelCard.ModelCardName),
/// OutputConfig: &sagemaker.ModelCardExportJobOutputConfigArgs{
/// S3OutputPath: pulumi.Sprintf("s3://%v/", test.Example),
/// },
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
/// import com.pulumi.aws.sagemaker.ModelCardExportJob;
/// import com.pulumi.aws.sagemaker.ModelCardExportJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.ModelCardExportJobOutputConfigArgs;
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
/// var example = new ModelCardExportJob("example", ModelCardExportJobArgs.builder()
/// .modelCardExportJobName("my-model-card-export-job")
/// .modelCardName(exampleAwsSagemakerModelCard.modelCardName())
/// .outputConfig(ModelCardExportJobOutputConfigArgs.builder()
/// .s3OutputPath(String.format("s3://%s/", test.example()))
/// .build())
/// .build());
///
/// }
/// }
/// ```
/// ```yaml
/// resources:
/// example:
/// type: aws:sagemaker:ModelCardExportJob
/// properties:
/// modelCardExportJobName: my-model-card-export-job
/// modelCardName: ${exampleAwsSagemakerModelCard.modelCardName}
/// outputConfig:
/// s3OutputPath: s3://${test.example}/
/// ```
/// <!--End PulumiCodeChooser -->
///
/// ## Import
///
/// Using `pulumi import`, import model card export jobs using the <span pulumi-lang-nodejs="`modelCardExportJobArn`" pulumi-lang-dotnet="`ModelCardExportJobArn`" pulumi-lang-go="`modelCardExportJobArn`" pulumi-lang-python="`model_card_export_job_arn`" pulumi-lang-yaml="`modelCardExportJobArn`" pulumi-lang-java="`modelCardExportJobArn`">`model_card_export_job_arn`</span>. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelCardExportJob:ModelCardExportJob example arn:aws:sagemaker:us-west-2:123456789012:model-card/my-model-card/export-job/my-model-card-export-job
/// ```
class ModelCardExportJob extends CustomResource {
  /// Exported model card artifacts.
  late final Output<List<ModelCardExportJobExportArtifact>> exportArtifacts;

  /// The Amazon Resource Name (ARN) of the model card export job.
  late final Output<String> modelCardExportJobArn;

  /// Name of the model card export job.
  late final Output<String> modelCardExportJobName;

  /// Name of the model card.
  late final Output<String> modelCardName;
  late final Output<int> modelCardVersion;

  /// Export output details. Fields are documented below.
  late final Output<ModelCardExportJobOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  late final Output<String> region;
  late final Output<ModelCardExportJobTimeouts?> timeouts;

  ModelCardExportJob(
    String name, {
    ModelCardExportJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/modelCardExportJob:ModelCardExportJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.exportArtifacts =
        Output.createUnknown<List<ModelCardExportJobExportArtifact>>();
    this.modelCardExportJobArn = Output.createUnknown<String>();
    this.modelCardExportJobName = Output.createUnknown<String>();
    this.modelCardName = Output.createUnknown<String>();
    this.modelCardVersion = Output.createUnknown<int>();
    this.outputConfig = Output.createUnknown<ModelCardExportJobOutputConfig>();
    this.region = Output.createUnknown<String>();
    this.timeouts = Output.createUnknown<ModelCardExportJobTimeouts?>();
  }
}
