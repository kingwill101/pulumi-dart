import 'package:pulumi/pulumi.dart' as pulumi;
import 'custom_model_args.dart';
import 'custom_model_output_data_config.dart';
import 'custom_model_state.dart';
import 'custom_model_timeouts.dart';
import 'custom_model_training_data_config.dart';
import 'custom_model_validation_data_config.dart';
import 'custom_model_vpc_config.dart';

/// Manages an Amazon Bedrock custom model.
/// Model customization is the process of providing training data to a base model in order to improve its performance for specific use-cases.
///
/// This Terraform resource interacts with two Amazon Bedrock entities:
///
/// 1. A Continued Pre-training or Fine-tuning job which is started when the Terraform resource is created. The customization job can take several hours to run to completion. The duration of the job depends on the size of the training data (number of records, input tokens, and output tokens), and [hyperparameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) (number of epochs, and batch size).
/// 2. The custom model output on successful completion of the customization job.
///
/// This resource's behaviors correspond to operations on these Amazon Bedrock entities:
///
/// * _Create_ starts the customization job and immediately returns.
/// * _Read_ returns the status and results of the customization job. If the customization job has completed, the output model's properties are returned.
/// * _Update_ updates the customization job's [tags](https://docs.aws.amazon.com/bedrock/latest/userguide/tagging.html).
/// * _Delete_ stops the customization job if it is still active. If the customization job has completed, the custom model output by the job is deleted.
///
/// ## Example Usage
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = aws.bedrockfoundation.getModel({
///     modelId: "amazon.titan-text-express-v1",
/// });
/// const exampleCustomModel = new aws.bedrock.CustomModel("example", {
///     customModelName: "example-model",
///     jobName: "example-job-1",
///     baseModelIdentifier: example.then(example => example.modelArn),
///     roleArn: exampleAwsIamRole.arn,
///     hyperparameters: {
///         epochCount: "1",
///         batchSize: "1",
///         learningRate: "0.005",
///         learningRateWarmupSteps: "0",
///     },
///     outputDataConfig: {
///         s3Uri: `s3://${output.id}/data/`,
///     },
///     trainingDataConfig: {
///         s3Uri: `s3://${training.id}/data/train.jsonl`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockfoundation.get_model(model_id="amazon.titan-text-express-v1")
/// example_custom_model = aws.bedrock.CustomModel("example",
///     custom_model_name="example-model",
///     job_name="example-job-1",
///     base_model_identifier=example.model_arn,
///     role_arn=example_aws_iam_role["arn"],
///     hyperparameters={
///         "epochCount": "1",
///         "batchSize": "1",
///         "learningRate": "0.005",
///         "learningRateWarmupSteps": "0",
///     },
///     output_data_config={
///         "s3_uri": f"s3://{output['id']}/data/",
///     },
///     training_data_config={
///         "s3_uri": f"s3://{training['id']}/data/train.jsonl",
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
///     var example = Aws.BedrockFoundation.GetModel.Invoke(new()
///     {
///         ModelId = "amazon.titan-text-express-v1",
///     });
///
///     var exampleCustomModel = new Aws.Bedrock.CustomModel("example", new()
///     {
///         CustomModelName = "example-model",
///         JobName = "example-job-1",
///         BaseModelIdentifier = example.Apply(getModelResult => getModelResult.ModelArn),
///         RoleArn = exampleAwsIamRole.Arn,
///         Hyperparameters =
///         {
///             { "epochCount", "1" },
///             { "batchSize", "1" },
///             { "learningRate", "0.005" },
///             { "learningRateWarmupSteps", "0" },
///         },
///         OutputDataConfig = new Aws.Bedrock.Inputs.CustomModelOutputDataConfigArgs
///         {
///             S3Uri = $"s3://{output.Id}/data/",
///         },
///         TrainingDataConfig = new Aws.Bedrock.Inputs.CustomModelTrainingDataConfigArgs
///         {
///             S3Uri = $"s3://{training.Id}/data/train.jsonl",
///         },
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrock"
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockfoundation"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		example, err := bedrockfoundation.GetModel(ctx, &bedrockfoundation.GetModelArgs{
/// 			ModelId: "amazon.titan-text-express-v1",
/// 		}, nil)
/// 		if err != nil {
/// 			return err
/// 		}
/// 		_, err = bedrock.NewCustomModel(ctx, "example", &bedrock.CustomModelArgs{
/// 			CustomModelName:     pulumi.String("example-model"),
/// 			JobName:             pulumi.String("example-job-1"),
/// 			BaseModelIdentifier: pulumi.String(example.ModelArn),
/// 			RoleArn:             pulumi.Any(exampleAwsIamRole.Arn),
/// 			Hyperparameters: pulumi.StringMap{
/// 				"epochCount":              pulumi.String("1"),
/// 				"batchSize":               pulumi.String("1"),
/// 				"learningRate":            pulumi.String("0.005"),
/// 				"learningRateWarmupSteps": pulumi.String("0"),
/// 			},
/// 			OutputDataConfig: &bedrock.CustomModelOutputDataConfigArgs{
/// 				S3Uri: pulumi.Sprintf("s3://%v/data/", output.Id),
/// 			},
/// 			TrainingDataConfig: &bedrock.CustomModelTrainingDataConfigArgs{
/// 				S3Uri: pulumi.Sprintf("s3://%v/data/train.jsonl", training.Id),
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
/// import com.pulumi.aws.bedrockfoundation.BedrockfoundationFunctions;
/// import com.pulumi.aws.bedrockfoundation.inputs.GetModelArgs;
/// import com.pulumi.aws.bedrock.CustomModel;
/// import com.pulumi.aws.bedrock.CustomModelArgs;
/// import com.pulumi.aws.bedrock.inputs.CustomModelOutputDataConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.CustomModelTrainingDataConfigArgs;
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
///         final var example = BedrockfoundationFunctions.getModel(GetModelArgs.builder()
///             .modelId("amazon.titan-text-express-v1")
///             .build());
///
///         var exampleCustomModel = new CustomModel("exampleCustomModel", CustomModelArgs.builder()
///             .customModelName("example-model")
///             .jobName("example-job-1")
///             .baseModelIdentifier(example.modelArn())
///             .roleArn(exampleAwsIamRole.arn())
///             .hyperparameters(Map.ofEntries(
///                 Map.entry("epochCount", "1"),
///                 Map.entry("batchSize", "1"),
///                 Map.entry("learningRate", "0.005"),
///                 Map.entry("learningRateWarmupSteps", "0")
///             ))
///             .outputDataConfig(CustomModelOutputDataConfigArgs.builder()
///                 .s3Uri(String.format("s3://%s/data/", output.id()))
///                 .build())
///             .trainingDataConfig(CustomModelTrainingDataConfigArgs.builder()
///                 .s3Uri(String.format("s3://%s/data/train.jsonl", training.id()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   exampleCustomModel:
///     type: aws:bedrock:CustomModel
///     name: example
///     properties:
///       customModelName: example-model
///       jobName: example-job-1
///       baseModelIdentifier: ${example.modelArn}
///       roleArn: ${exampleAwsIamRole.arn}
///       hyperparameters:
///         epochCount: '1'
///         batchSize: '1'
///         learningRate: '0.005'
///         learningRateWarmupSteps: '0'
///       outputDataConfig:
///         s3Uri: s3://${output.id}/data/
///       trainingDataConfig:
///         s3Uri: s3://${training.id}/data/train.jsonl
/// variables:
///   example:
///     fn::invoke:
///       function: aws:bedrockfoundation:getModel
///       arguments:
///         modelId: amazon.titan-text-express-v1
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `arn` (String) Amazon Resource Name (ARN) of the Bedrock custom model.
///
///
/// Using `pulumi import`, import Bedrock custom model using the `job_arn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/customModel:CustomModel example arn:aws:bedrock:us-west-2:123456789012:model-customization-job/amazon.titan-text-express-v1:0:8k/1y5n57gh5y2e
/// ```
class CustomModel extends pulumi.CustomResource {
  /// The Amazon Resource Name (ARN) of the base model.
  late final pulumi.Output<String> baseModelIdentifier;

  /// The ARN of the output model.
  late final pulumi.Output<String> customModelArn;

  /// The custom model is encrypted at rest using this key. Specify the key ARN.
  late final pulumi.Output<String?> customModelKmsKeyId;

  /// Name for the custom model.
  late final pulumi.Output<String> customModelName;

  /// The customization type. Valid values: `FINE_TUNING`, `CONTINUED_PRE_TRAINING`.
  late final pulumi.Output<String> customizationType;

  /// [Parameters](https://docs.aws.amazon.com/bedrock/latest/userguide/custom-models-hp.html) related to tuning the model.
  late final pulumi.Output<Map<String, String>> hyperparameters;

  /// The ARN of the customization job.
  late final pulumi.Output<String> jobArn;

  /// A name for the customization job.
  late final pulumi.Output<String> jobName;

  /// The status of the customization job. A successful job transitions from `InProgress` to `Completed` when the output model is ready to use.
  late final pulumi.Output<String> jobStatus;

  /// S3 location for the output data.
  late final pulumi.Output<CustomModelOutputDataConfig> outputDataConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;

  /// The Amazon Resource Name (ARN) of an IAM role that Bedrock can assume to perform tasks on your behalf.
  late final pulumi.Output<String> roleArn;

  /// A map of tags to assign to the customization job and custom model. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;

  /// Map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<CustomModelTimeouts?> timeouts;

  /// Information about the training dataset.
  late final pulumi.Output<CustomModelTrainingDataConfig> trainingDataConfig;

  /// Metrics associated with the customization job.
  late final pulumi.Output<List<Map<String, dynamic>>> trainingMetrics;

  /// Information about the validation dataset.
  late final pulumi.Output<CustomModelValidationDataConfig?>
  validationDataConfig;

  /// The loss metric for each validator that you provided.
  late final pulumi.Output<List<Map<String, dynamic>>> validationMetrics;

  /// Configuration parameters for the private Virtual Private Cloud (VPC) that contains the resources you are using for this job.
  late final pulumi.Output<CustomModelVpcConfig?> vpcConfig;

  /// Creates a new [CustomModel].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [CustomModel]. {@macro pulumi_bedrock_custom_model_custom_model_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  CustomModel(
    String name, {
    CustomModelArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/customModel:CustomModel',
         name,
         pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    baseModelIdentifier = registerOutput<String>('baseModelIdentifier');
    customModelArn = registerOutput<String>('customModelArn');
    customModelKmsKeyId = registerOutput<String?>('customModelKmsKeyId');
    customModelName = registerOutput<String>('customModelName');
    customizationType = registerOutput<String>('customizationType');
    hyperparameters = registerOutput<Map<String, String>>('hyperparameters');
    jobArn = registerOutput<String>('jobArn');
    jobName = registerOutput<String>('jobName');
    jobStatus = registerOutput<String>('jobStatus');
    outputDataConfig = registerOutput<CustomModelOutputDataConfig>(
      'outputDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelOutputDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<CustomModelTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    trainingDataConfig = registerOutput<CustomModelTrainingDataConfig>(
      'trainingDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelTrainingDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    trainingMetrics = registerOutput<List<Map<String, dynamic>>>(
      'trainingMetrics',
    );
    validationDataConfig = registerOutput<CustomModelValidationDataConfig?>(
      'validationDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelValidationDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    validationMetrics = registerOutput<List<Map<String, dynamic>>>(
      'validationMetrics',
    );
    vpcConfig = registerOutput<CustomModelVpcConfig?>(
      'vpcConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelVpcConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }

  /// Gets an existing [CustomModel] resource's state with the given [name] and [id].
  static CustomModel get(
    String name,
    pulumi.Input<String> id, {
    CustomModelState? state,
  }) {
    return CustomModel._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  CustomModel._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
         'aws:bedrock/customModel:CustomModel',
         name,
         pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
         options ?? pulumi.CustomResourceOptions(),
       ) {
    baseModelIdentifier = registerOutput<String>('baseModelIdentifier');
    customModelArn = registerOutput<String>('customModelArn');
    customModelKmsKeyId = registerOutput<String?>('customModelKmsKeyId');
    customModelName = registerOutput<String>('customModelName');
    customizationType = registerOutput<String>('customizationType');
    hyperparameters = registerOutput<Map<String, String>>('hyperparameters');
    jobArn = registerOutput<String>('jobArn');
    jobName = registerOutput<String>('jobName');
    jobStatus = registerOutput<String>('jobStatus');
    outputDataConfig = registerOutput<CustomModelOutputDataConfig>(
      'outputDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelOutputDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<CustomModelTimeouts?>(
      'timeouts',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelTimeouts.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    trainingDataConfig = registerOutput<CustomModelTrainingDataConfig>(
      'trainingDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelTrainingDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    trainingMetrics = registerOutput<List<Map<String, dynamic>>>(
      'trainingMetrics',
    );
    validationDataConfig = registerOutput<CustomModelValidationDataConfig?>(
      'validationDataConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelValidationDataConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
    validationMetrics = registerOutput<List<Map<String, dynamic>>>(
      'validationMetrics',
    );
    vpcConfig = registerOutput<CustomModelVpcConfig?>(
      'vpcConfig',
      decoder: (raw) {
        final guardedValue = raw;
        if (guardedValue == null) return null;
        return CustomModelVpcConfig.fromMap(
          (guardedValue as Map).cast<String, dynamic>(),
        );
      },
    );
  }
}
