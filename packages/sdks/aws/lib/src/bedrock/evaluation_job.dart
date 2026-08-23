import 'package:pulumi/pulumi.dart' as pulumi;
import 'evaluation_job_args.dart';
import 'evaluation_job_evaluation_config.dart';
import 'evaluation_job_inference_config.dart';
import 'evaluation_job_output_data_config.dart';
import 'evaluation_job_state.dart';
import 'evaluation_job_timeouts.dart';

/// Manages an Amazon Bedrock evaluation job. An evaluation job assesses model or knowledge base performance using either automated metrics or human workers.
///
/// &gt; Amazon Bedrock does not support permanently deleting an evaluation job. Destroying this resource stops the job (if it is still running) using the [StopEvaluationJob](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_StopEvaluationJob.html) API, then removes it from Terraform state. Set `skipDestroy` to leave the job in its current state instead.
///
/// ## Example Usage
///
/// ### Automated Model Evaluation
///
///
/// ```typescript
/// import * as pulumi from "@pulumi/pulumi";
/// import * as aws from "@pulumi/aws";
///
/// const example = new aws.bedrock.EvaluationJob("example", {
///     jobName: "example-job",
///     roleArn: exampleAwsIamRole.arn,
///     evaluationConfig: {
///         automated: {
///             datasetMetricConfigs: [{
///                 taskType: "Generation",
///                 dataset: {
///                     name: "Builtin.Bold",
///                 },
///                 metricNames: ["Builtin.Robustness"],
///             }],
///         },
///     },
///     inferenceConfig: {
///         models: [{
///             bedrockModel: {
///                 modelIdentifier: "amazon.nova-micro-v1:0",
///             },
///         }],
///     },
///     outputDataConfig: {
///         s3Uri: `s3://${exampleAwsS3Bucket.id}/output/`,
///     },
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrock.EvaluationJob("example",
///     job_name="example-job",
///     role_arn=example_aws_iam_role["arn"],
///     evaluation_config={
///         "automated": {
///             "dataset_metric_configs": [{
///                 "task_type": "Generation",
///                 "dataset": {
///                     "name": "Builtin.Bold",
///                 },
///                 "metric_names": ["Builtin.Robustness"],
///             }],
///         },
///     },
///     inference_config={
///         "models": [{
///             "bedrock_model": {
///                 "model_identifier": "amazon.nova-micro-v1:0",
///             },
///         }],
///     },
///     output_data_config={
///         "s3_uri": f"s3://{example_aws_s3_bucket['id']}/output/",
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
///     var example = new Aws.Bedrock.EvaluationJob("example", new()
///     {
///         JobName = "example-job",
///         RoleArn = exampleAwsIamRole.Arn,
///         EvaluationConfig = new Aws.Bedrock.Inputs.EvaluationJobEvaluationConfigArgs
///         {
///             Automated = new Aws.Bedrock.Inputs.EvaluationJobEvaluationConfigAutomatedArgs
///             {
///                 DatasetMetricConfigs = new[]
///                 {
///                     new Aws.Bedrock.Inputs.EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigArgs
///                     {
///                         TaskType = "Generation",
///                         Dataset = new Aws.Bedrock.Inputs.EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetArgs
///                         {
///                             Name = "Builtin.Bold",
///                         },
///                         MetricNames = new[]
///                         {
///                             "Builtin.Robustness",
///                         },
///                     },
///                 },
///             },
///         },
///         InferenceConfig = new Aws.Bedrock.Inputs.EvaluationJobInferenceConfigArgs
///         {
///             Models = new[]
///             {
///                 new Aws.Bedrock.Inputs.EvaluationJobInferenceConfigModelArgs
///                 {
///                     BedrockModel = new Aws.Bedrock.Inputs.EvaluationJobInferenceConfigModelBedrockModelArgs
///                     {
///                         ModelIdentifier = "amazon.nova-micro-v1:0",
///                     },
///                 },
///             },
///         },
///         OutputDataConfig = new Aws.Bedrock.Inputs.EvaluationJobOutputDataConfigArgs
///         {
///             S3Uri = $"s3://{exampleAwsS3Bucket.Id}/output/",
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
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrock.NewEvaluationJob(ctx, "example", &bedrock.EvaluationJobArgs{
/// 			JobName: pulumi.String("example-job"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
/// 			EvaluationConfig: &bedrock.EvaluationJobEvaluationConfigArgs{
/// 				Automated: &bedrock.EvaluationJobEvaluationConfigAutomatedArgs{
/// 					DatasetMetricConfigs: bedrock.EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigArray{
/// 						&bedrock.EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigArgs{
/// 							TaskType: pulumi.String("Generation"),
/// 							Dataset: &bedrock.EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetArgs{
/// 								Name: pulumi.String("Builtin.Bold"),
/// 							},
/// 							MetricNames: pulumi.StringArray{
/// 								pulumi.String("Builtin.Robustness"),
/// 							},
/// 						},
/// 					},
/// 				},
/// 			},
/// 			InferenceConfig: &bedrock.EvaluationJobInferenceConfigArgs{
/// 				Models: bedrock.EvaluationJobInferenceConfigModelArray{
/// 					&bedrock.EvaluationJobInferenceConfigModelArgs{
/// 						BedrockModel: &bedrock.EvaluationJobInferenceConfigModelBedrockModelArgs{
/// 							ModelIdentifier: pulumi.String("amazon.nova-micro-v1:0"),
/// 						},
/// 					},
/// 				},
/// 			},
/// 			OutputDataConfig: &bedrock.EvaluationJobOutputDataConfigArgs{
/// 				S3Uri: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Id),
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
/// resource "aws_bedrock_evaluationjob" "example" {
///   job_name = "example-job"
///   role_arn = exampleAwsIamRole.arn
///   evaluation_config = {
///     automated = {
///       dataset_metric_configs = [{
///         "taskType" = "Generation"
///         "dataset" = {
///           "name" = "Builtin.Bold"
///         }
///         "metricNames" = ["Builtin.Robustness"]
///       }]
///     }
///   }
///   inference_config = {
///     models = [{
///       "bedrockModel" = {
///         "modelIdentifier" = "amazon.nova-micro-v1:0"
///       }
///     }]
///   }
///   output_data_config = {
///     s3_uri ="s3://${exampleAwsS3Bucket.id}/output/"
///   }
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrock.EvaluationJob;
/// import com.pulumi.aws.bedrock.EvaluationJobArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobEvaluationConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobEvaluationConfigAutomatedArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobInferenceConfigArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobInferenceConfigModelArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobInferenceConfigModelBedrockModelArgs;
/// import com.pulumi.aws.bedrock.inputs.EvaluationJobOutputDataConfigArgs;
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
///         var example = new EvaluationJob("example", EvaluationJobArgs.builder()
///             .jobName("example-job")
///             .roleArn(exampleAwsIamRole.arn())
///             .evaluationConfig(EvaluationJobEvaluationConfigArgs.builder()
///                 .automated(EvaluationJobEvaluationConfigAutomatedArgs.builder()
///                     .datasetMetricConfigs(EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigArgs.builder()
///                         .taskType("Generation")
///                         .dataset(EvaluationJobEvaluationConfigAutomatedDatasetMetricConfigDatasetArgs.builder()
///                             .name("Builtin.Bold")
///                             .build())
///                         .metricNames("Builtin.Robustness")
///                         .build())
///                     .build())
///                 .build())
///             .inferenceConfig(EvaluationJobInferenceConfigArgs.builder()
///                 .models(EvaluationJobInferenceConfigModelArgs.builder()
///                     .bedrockModel(EvaluationJobInferenceConfigModelBedrockModelArgs.builder()
///                         .modelIdentifier("amazon.nova-micro-v1:0")
///                         .build())
///                     .build())
///                 .build())
///             .outputDataConfig(EvaluationJobOutputDataConfigArgs.builder()
///                 .s3Uri(String.format("s3://%s/output/", exampleAwsS3Bucket.id()))
///                 .build())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrock:EvaluationJob
///     properties:
///       jobName: example-job
///       roleArn: ${exampleAwsIamRole.arn}
///       evaluationConfig:
///         automated:
///           datasetMetricConfigs:
///             - taskType: Generation
///               dataset:
///                 name: Builtin.Bold
///               metricNames:
///                 - Builtin.Robustness
///       inferenceConfig:
///         models:
///           - bedrockModel:
///               modelIdentifier: amazon.nova-micro-v1:0
///       outputDataConfig:
///         s3Uri: s3://${exampleAwsS3Bucket.id}/output/
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `jobArn` (String) ARN of the evaluation job.
///
///
/// Using `pulumi import`, import Bedrock Evaluation Job using the `jobArn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrock/evaluationJob:EvaluationJob example arn:aws:bedrock:us-west-2:123456789012:evaluation-job/abcdefgh1234
/// ```
class EvaluationJob extends pulumi.CustomResource {
  /// Whether the evaluation job evaluates a model or a knowledge base. Valid values: `ModelEvaluation`, `RagEvaluation`.
  late final pulumi.Output<String> applicationType;
  /// Date and time the evaluation job was created.
  late final pulumi.Output<String> createdAt;
  /// ARN of the customer managed KMS key to use to encrypt the evaluation job.
  late final pulumi.Output<String?> customerEncryptionKeyId;
  /// Configuration for either an automated or human-based evaluation job. See `evaluationConfig` Block below.
  late final pulumi.Output<EvaluationJobEvaluationConfig> evaluationConfig;
  /// List of reasons the evaluation job failed to create, if applicable.
  late final pulumi.Output<List<String>> failureMessages;
  /// Configuration for the inference model, or models, used for the evaluation job. See `inferenceConfig` Block below.
  late final pulumi.Output<EvaluationJobInferenceConfig> inferenceConfig;
  /// ARN of the evaluation job.
  late final pulumi.Output<String> jobArn;
  /// Description of the evaluation job.
  late final pulumi.Output<String?> jobDescription;
  /// Name for the evaluation job. Must be unique within your AWS account and Region, and consist of lowercase letters, numbers, and hyphens.
  late final pulumi.Output<String> jobName;
  /// Whether the evaluation job is automated or human-based.
  late final pulumi.Output<String> jobType;
  /// Date and time the evaluation job was last modified.
  late final pulumi.Output<String> lastModifiedTime;
  /// Configuration for the Amazon S3 location where the results of the evaluation job are stored. See `outputDataConfig` Block below.
  late final pulumi.Output<EvaluationJobOutputDataConfig> outputDataConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of an IAM service role that Amazon Bedrock can assume to perform tasks on your behalf. See [Required permissions for model evaluations](https://docs.aws.amazon.com/bedrock/latest/userguide/model-evaluation-security.html).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;
  /// Whether to leave the evaluation job in its current state when destroying the resource, instead of stopping it.
  late final pulumi.Output<bool?> skipDestroy;
  /// Current status of the evaluation job.
  late final pulumi.Output<String> status;
  /// Map of tags to assign to the evaluation job. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  late final pulumi.Output<Map<String, String>> tagsAll;
  late final pulumi.Output<EvaluationJobTimeouts?> timeouts;

  /// Creates a new [EvaluationJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [EvaluationJob]. {@macro pulumi_bedrock_evaluation_job_evaluation_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  EvaluationJob(
    String name, {
    EvaluationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/evaluationJob:EvaluationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationType = registerOutput<String>('applicationType');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyId = registerOutput<String?>('customerEncryptionKeyId');
    evaluationConfig = registerOutput<EvaluationJobEvaluationConfig>('evaluationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobEvaluationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureMessages = registerOutput<List<String>>('failureMessages');
    inferenceConfig = registerOutput<EvaluationJobInferenceConfig>('inferenceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobInferenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobArn = registerOutput<String>('jobArn');
    jobDescription = registerOutput<String?>('jobDescription');
    jobName = registerOutput<String>('jobName');
    jobType = registerOutput<String>('jobType');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    outputDataConfig = registerOutput<EvaluationJobOutputDataConfig>('outputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<EvaluationJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [EvaluationJob] resource's state with the given [name] and [id].
  static EvaluationJob get(
    String name,
    pulumi.Input<String> id, {
    EvaluationJobState? state,
  }) {
    return EvaluationJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id),
    );
  }

  EvaluationJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrock/evaluationJob:EvaluationJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    applicationType = registerOutput<String>('applicationType');
    createdAt = registerOutput<String>('createdAt');
    customerEncryptionKeyId = registerOutput<String?>('customerEncryptionKeyId');
    evaluationConfig = registerOutput<EvaluationJobEvaluationConfig>('evaluationConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobEvaluationConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    failureMessages = registerOutput<List<String>>('failureMessages');
    inferenceConfig = registerOutput<EvaluationJobInferenceConfig>('inferenceConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobInferenceConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobArn = registerOutput<String>('jobArn');
    jobDescription = registerOutput<String?>('jobDescription');
    jobName = registerOutput<String>('jobName');
    jobType = registerOutput<String>('jobType');
    lastModifiedTime = registerOutput<String>('lastModifiedTime');
    outputDataConfig = registerOutput<EvaluationJobOutputDataConfig>('outputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    status = registerOutput<String>('status');
    tags = registerOutput<Map<String, String>?>('tags');
    tagsAll = registerOutput<Map<String, String>>('tagsAll');
    timeouts = registerOutput<EvaluationJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return EvaluationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
