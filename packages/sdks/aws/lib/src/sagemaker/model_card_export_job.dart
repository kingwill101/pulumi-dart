import 'package:pulumi/pulumi.dart' as pulumi;
import 'model_card_export_job_args.dart';
import 'model_card_export_job_output_config.dart';
import 'model_card_export_job_state.dart';
import 'model_card_export_job_timeouts.dart';

/// Manage an Amazon SageMaker Model Card export job.
///
/// ## Example Usage
///
/// Basic usage:
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.sagemaker.ModelCardExportJob("example", {
///     modelCardExportJobName: "my-model-card-export-job",
///     modelCardName: exampleAwsSagemakerModelCard.modelCardName,
///     outputConfig: {
///         s3OutputPath: `s3://${test.example}/`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.sagemaker.ModelCardExportJob("example",
///     model_card_export_job_name="my-model-card-export-job",
///     model_card_name=example_aws_sagemaker_model_card["modelCardName"],
///     output_config={
///         "s3_output_path": f"s3://{test['example']}/",
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
///     var example = new Aws.Sagemaker.ModelCardExportJob("example", new()
///     {
///         ModelCardExportJobName = "my-model-card-export-job",
///         ModelCardName = exampleAwsSagemakerModelCard.ModelCardName,
///         OutputConfig = new Aws.Sagemaker.Inputs.ModelCardExportJobOutputConfigArgs
///         {
///             S3OutputPath = $"s3://{test.Example}/",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/sagemaker"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := sagemaker.NewModelCardExportJob(ctx, "example", &sagemaker.ModelCardExportJobArgs{
/// 			ModelCardExportJobName: pulumi.String("my-model-card-export-job"),
/// 			ModelCardName:          pulumi.Any(exampleAwsSagemakerModelCard.ModelCardName),
/// 			OutputConfig: &sagemaker.ModelCardExportJobOutputConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/", test.Example),
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
///     public static void main(String[] args) {
///         Pulumi.run(App::stack);
///     }
///
///     public static void stack(Context ctx) {
///         var example = new ModelCardExportJob("example", ModelCardExportJobArgs.builder()
///             .modelCardExportJobName("my-model-card-export-job")
///             .modelCardName(exampleAwsSagemakerModelCard.modelCardName())
///             .outputConfig(ModelCardExportJobOutputConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/", test.example()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:sagemaker:ModelCardExportJob
///     properties:
///       modelCardExportJobName: my-model-card-export-job
///       modelCardName: ${exampleAwsSagemakerModelCard.modelCardName}
///       outputConfig:
///         s3OutputPath: s3://${test.example}/
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import model card export jobs using the `model_card_export_job_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/modelCardExportJob:ModelCardExportJob example arn:aws:sagemaker:us-west-2:123456789012:model-card/my-model-card/export-job/my-model-card-export-job
/// ```
class ModelCardExportJob extends pulumi.CustomResource {
  /// Exported model card artifacts.
  late final pulumi.Output<List<Map<String, dynamic>>> exportArtifacts;

  /// The Amazon Resource Name (ARN) of the model card export job.
  late final pulumi.Output<String> modelCardExportJobArn;

  /// Name of the model card export job.
  late final pulumi.Output<String> modelCardExportJobName;

  /// Name of the model card.
  late final pulumi.Output<String> modelCardName;
  late final pulumi.Output<int> modelCardVersion;

  /// Export output details. Fields are documented below.
  late final pulumi.Output<ModelCardExportJobOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration
  late final pulumi.Output<String> region;
  late final pulumi.Output<ModelCardExportJobTimeouts?> timeouts;

  /// Creates a new [ModelCardExportJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [ModelCardExportJob]. {@macro pulumi_sagemaker_model_card_export_job_model_card_export_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  ModelCardExportJob(
    String name, {
    ModelCardExportJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/modelCardExportJob:ModelCardExportJob',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    exportArtifacts = registerOutput<List<Map<String, dynamic>>>(
      'exportArtifacts',
    );
    modelCardExportJobArn = registerOutput<String>('modelCardExportJobArn');
    modelCardExportJobName = registerOutput<String>('modelCardExportJobName');
    modelCardName = registerOutput<String>('modelCardName');
    modelCardVersion = registerOutput<int>('modelCardVersion');
    outputConfig = registerOutput<ModelCardExportJobOutputConfig>(
      'outputConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ModelCardExportJobOutputConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    timeouts = registerOutput<ModelCardExportJobTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ModelCardExportJobTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [ModelCardExportJob] resource's state with the given [name] and [id].
  static ModelCardExportJob get(
    String name,
    pulumi.Input<String> id, {
    ModelCardExportJobState? state,
  }) {
    return ModelCardExportJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  ModelCardExportJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:sagemaker/modelCardExportJob:ModelCardExportJob',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    exportArtifacts = registerOutput<List<Map<String, dynamic>>>(
      'exportArtifacts',
    );
    modelCardExportJobArn = registerOutput<String>('modelCardExportJobArn');
    modelCardExportJobName = registerOutput<String>('modelCardExportJobName');
    modelCardName = registerOutput<String>('modelCardName');
    modelCardVersion = registerOutput<int>('modelCardVersion');
    outputConfig = registerOutput<ModelCardExportJobOutputConfig>(
      'outputConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ModelCardExportJobOutputConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    timeouts = registerOutput<ModelCardExportJobTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return ModelCardExportJobTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
