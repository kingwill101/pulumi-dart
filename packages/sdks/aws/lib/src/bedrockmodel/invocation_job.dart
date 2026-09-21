import 'package:pulumi/pulumi.dart' as pulumi;
import 'invocation_job_args.dart';
import 'invocation_job_input_data_config.dart';
import 'invocation_job_output_data_config.dart';
import 'invocation_job_state.dart';
import 'invocation_job_timeouts.dart';
import 'invocation_job_vpc_config.dart';

/// Manages an Amazon Bedrock model invocation job. A model invocation job runs a foundation model, or a model accessed through an inference profile, against multiple prompts read from Amazon S3, and writes the results back to Amazon S3.
///
/// &gt; Amazon Bedrock does not support permanently deleting a model invocation job. Destroying this resource stops the job (if it hasn't already reached a terminal state) using the [StopModelInvocationJob](https://docs.aws.amazon.com/bedrock/latest/APIReference/API_StopModelInvocationJob.html) API, then removes it from Terraform state. Set `skipDestroy` to leave the job in its current state instead.
///
/// &gt; This resource does not support `tags`. Amazon Bedrock does not allow retrieving tags for a batch inference job that has already finished running, which would cause errors when importing or listing existing jobs.
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
/// const example = new aws.bedrockmodel.InvocationJob("example", {
///     inputDataConfig: {
///         s3InputDataConfig: {
///             s3Uri: `s3://${exampleAwsS3Bucket.id}/input/`,
///         },
///     },
///     outputDataConfig: {
///         s3OutputDataConfig: {
///             s3Uri: `s3://${exampleAwsS3Bucket.id}/output/`,
///         },
///     },
///     jobName: "example-job",
///     modelId: "us.amazon.nova-2-lite-v1:0",
///     roleArn: exampleAwsIamRole.arn,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// example = aws.bedrockmodel.InvocationJob("example",
///     input_data_config={
///         "s3_input_data_config": {
///             "s3_uri": f"s3://{example_aws_s3_bucket['id']}/input/",
///         },
///     },
///     output_data_config={
///         "s3_output_data_config": {
///             "s3_uri": f"s3://{example_aws_s3_bucket['id']}/output/",
///         },
///     },
///     job_name="example-job",
///     model_id="us.amazon.nova-2-lite-v1:0",
///     role_arn=example_aws_iam_role["arn"])
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     var example = new Aws.BedrockModel.InvocationJob("example", new()
///     {
///         InputDataConfig = new Aws.BedrockModel.Inputs.InvocationJobInputDataConfigArgs
///         {
///             S3InputDataConfig = new Aws.BedrockModel.Inputs.InvocationJobInputDataConfigS3InputDataConfigArgs
///             {
///                 S3Uri = $"s3://{exampleAwsS3Bucket.Id}/input/",
///             },
///         },
///         OutputDataConfig = new Aws.BedrockModel.Inputs.InvocationJobOutputDataConfigArgs
///         {
///             S3OutputDataConfig = new Aws.BedrockModel.Inputs.InvocationJobOutputDataConfigS3OutputDataConfigArgs
///             {
///                 S3Uri = $"s3://{exampleAwsS3Bucket.Id}/output/",
///             },
///         },
///         JobName = "example-job",
///         ModelId = "us.amazon.nova-2-lite-v1:0",
///         RoleArn = exampleAwsIamRole.Arn,
///     });
///
/// });
/// ```
/// ```go
/// package main
///
/// import (
/// 	"github.com/pulumi/pulumi-aws/sdk/v7/go/aws/bedrockmodel"
/// 	"github.com/pulumi/pulumi/sdk/v3/go/pulumi"
/// )
///
/// func main() {
/// 	pulumi.Run(func(ctx *pulumi.Context) error {
/// 		_, err := bedrockmodel.NewInvocationJob(ctx, "example", &bedrockmodel.InvocationJobArgs{
/// 			InputDataConfig: &bedrockmodel.InvocationJobInputDataConfigArgs{
/// 				S3InputDataConfig: &bedrockmodel.InvocationJobInputDataConfigS3InputDataConfigArgs{
/// 					S3Uri: pulumi.Sprintf("s3://%v/input/", exampleAwsS3Bucket.Id),
/// 				},
/// 			},
/// 			OutputDataConfig: &bedrockmodel.InvocationJobOutputDataConfigArgs{
/// 				S3OutputDataConfig: &bedrockmodel.InvocationJobOutputDataConfigS3OutputDataConfigArgs{
/// 					S3Uri: pulumi.Sprintf("s3://%v/output/", exampleAwsS3Bucket.Id),
/// 				},
/// 			},
/// 			JobName: pulumi.String("example-job"),
/// 			ModelId: pulumi.String("us.amazon.nova-2-lite-v1:0"),
/// 			RoleArn: pulumi.Any(exampleAwsIamRole.Arn),
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
/// resource "aws_bedrockmodel_invocationjob" "example" {
///   input_data_config = {
///     s3_input_data_config = {
///       s3_uri ="s3://${exampleAwsS3Bucket.id}/input/"
///     }
///   }
///   output_data_config = {
///     s3_output_data_config = {
///       s3_uri ="s3://${exampleAwsS3Bucket.id}/output/"
///     }
///   }
///   job_name = "example-job"
///   model_id = "us.amazon.nova-2-lite-v1:0"
///   role_arn = exampleAwsIamRole.arn
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.bedrockmodel.InvocationJob;
/// import com.pulumi.aws.bedrockmodel.InvocationJobArgs;
/// import com.pulumi.aws.bedrockmodel.inputs.InvocationJobInputDataConfigArgs;
/// import com.pulumi.aws.bedrockmodel.inputs.InvocationJobInputDataConfigS3InputDataConfigArgs;
/// import com.pulumi.aws.bedrockmodel.inputs.InvocationJobOutputDataConfigArgs;
/// import com.pulumi.aws.bedrockmodel.inputs.InvocationJobOutputDataConfigS3OutputDataConfigArgs;
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
///         var example = new InvocationJob("example", InvocationJobArgs.builder()
///             .inputDataConfig(InvocationJobInputDataConfigArgs.builder()
///                 .s3InputDataConfig(InvocationJobInputDataConfigS3InputDataConfigArgs.builder()
///                     .s3Uri(String.format("s3://%s/input/", exampleAwsS3Bucket.id()))
///                     .build())
///                 .build())
///             .outputDataConfig(InvocationJobOutputDataConfigArgs.builder()
///                 .s3OutputDataConfig(InvocationJobOutputDataConfigS3OutputDataConfigArgs.builder()
///                     .s3Uri(String.format("s3://%s/output/", exampleAwsS3Bucket.id()))
///                     .build())
///                 .build())
///             .jobName("example-job")
///             .modelId("us.amazon.nova-2-lite-v1:0")
///             .roleArn(exampleAwsIamRole.arn())
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   example:
///     type: aws:bedrockmodel:InvocationJob
///     properties:
///       inputDataConfig:
///         s3InputDataConfig:
///           s3Uri: s3://${exampleAwsS3Bucket.id}/input/
///       outputDataConfig:
///         s3OutputDataConfig:
///           s3Uri: s3://${exampleAwsS3Bucket.id}/output/
///       jobName: example-job
///       modelId: us.amazon.nova-2-lite-v1:0
///       roleArn: ${exampleAwsIamRole.arn}
/// ```
///
///
/// ## Import
///
/// ### Identity Schema
///
/// #### Required
///
/// - `jobArn` (String) ARN of the batch inference job.
///
///
/// Using `pulumi import`, import Bedrock Model Invocation Job using the `jobArn`. For example:
///
/// ```sh
/// $ pulumi import aws:bedrockmodel/invocationJob:InvocationJob example arn:aws:bedrock:us-west-2:123456789012:model-invocation-job/abcdefgh1234
/// ```
class InvocationJob extends pulumi.CustomResource {
  /// Time at which the batch inference job ended.
  late final pulumi.Output<String> endTime;
  /// Number of records that failed to process in the batch inference job.
  late final pulumi.Output<int> errorRecordCount;
  /// Location of the input data for the batch inference job. See `inputDataConfig` Block below.
  late final pulumi.Output<InvocationJobInputDataConfig> inputDataConfig;
  /// ARN of the batch inference job.
  late final pulumi.Output<String> jobArn;
  /// Time at which the batch inference job times or timed out.
  late final pulumi.Output<String> jobExpirationTime;
  /// Name for the batch inference job.
  late final pulumi.Output<String> jobName;
  /// Identifier of the foundation model, or inference profile, to use for the batch inference job.
  late final pulumi.Output<String> modelId;
  /// Invocation endpoint used for the batch inference job.
  late final pulumi.Output<String> modelInvocationType;
  /// Location where the results of the batch inference job are stored. See `outputDataConfig` Block below.
  late final pulumi.Output<InvocationJobOutputDataConfig> outputDataConfig;
  /// Number of records that have been processed in the batch inference job.
  late final pulumi.Output<int> processedRecordCount;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of the IAM service role that Amazon Bedrock can assume to carry out and manage the batch inference job. See [Create a service role for batch inference](https://docs.aws.amazon.com/bedrock/latest/userguide/batch-iam-sr.html).
  ///
  /// The following arguments are optional:
  late final pulumi.Output<String> roleArn;
  /// Whether to leave the batch inference job in its current state when destroying the resource, instead of stopping it.
  late final pulumi.Output<bool?> skipDestroy;
  /// Status of the batch inference job.
  late final pulumi.Output<String> status;
  /// Time at which the batch inference job was submitted.
  late final pulumi.Output<String> submitTime;
  /// Number of records that were successfully processed in the batch inference job.
  late final pulumi.Output<int> successRecordCount;
  /// Number of hours after which to force the batch inference job to time out.
  late final pulumi.Output<int> timeoutDurationInHours;
  late final pulumi.Output<InvocationJobTimeouts?> timeouts;
  /// Total number of records in the batch inference job.
  late final pulumi.Output<int> totalRecordCount;
  /// VPC configuration for the data used by the batch inference job. See `vpcConfig` Block below.
  late final pulumi.Output<InvocationJobVpcConfig?> vpcConfig;

  /// Creates a new [InvocationJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [InvocationJob]. {@macro pulumi_bedrockmodel_invocation_job_invocation_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  InvocationJob(
    String name, {
    InvocationJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockmodel/invocationJob:InvocationJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.47.0').merge(options),
        ) {
    endTime = registerOutput<String>('endTime');
    errorRecordCount = registerOutput<int>('errorRecordCount');
    inputDataConfig = registerOutput<InvocationJobInputDataConfig>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobArn = registerOutput<String>('jobArn');
    jobExpirationTime = registerOutput<String>('jobExpirationTime');
    jobName = registerOutput<String>('jobName');
    modelId = registerOutput<String>('modelId');
    modelInvocationType = registerOutput<String>('modelInvocationType');
    outputDataConfig = registerOutput<InvocationJobOutputDataConfig>('outputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    processedRecordCount = registerOutput<int>('processedRecordCount');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    status = registerOutput<String>('status');
    submitTime = registerOutput<String>('submitTime');
    successRecordCount = registerOutput<int>('successRecordCount');
    timeoutDurationInHours = registerOutput<int>('timeoutDurationInHours');
    timeouts = registerOutput<InvocationJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalRecordCount = registerOutput<int>('totalRecordCount');
    vpcConfig = registerOutput<InvocationJobVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Gets an existing [InvocationJob] resource's state with the given [name] and [id].
  static InvocationJob get(
    String name,
    pulumi.Input<String> id, {
    InvocationJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return InvocationJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  InvocationJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:bedrockmodel/invocationJob:InvocationJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    endTime = registerOutput<String>('endTime');
    errorRecordCount = registerOutput<int>('errorRecordCount');
    inputDataConfig = registerOutput<InvocationJobInputDataConfig>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobArn = registerOutput<String>('jobArn');
    jobExpirationTime = registerOutput<String>('jobExpirationTime');
    jobName = registerOutput<String>('jobName');
    modelId = registerOutput<String>('modelId');
    modelInvocationType = registerOutput<String>('modelInvocationType');
    outputDataConfig = registerOutput<InvocationJobOutputDataConfig>('outputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    processedRecordCount = registerOutput<int>('processedRecordCount');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    status = registerOutput<String>('status');
    submitTime = registerOutput<String>('submitTime');
    successRecordCount = registerOutput<int>('successRecordCount');
    timeoutDurationInHours = registerOutput<int>('timeoutDurationInHours');
    timeouts = registerOutput<InvocationJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalRecordCount = registerOutput<int>('totalRecordCount');
    vpcConfig = registerOutput<InvocationJobVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }

  /// Creates a typed reference to an existing [InvocationJob] resource.
  InvocationJob.reference(String urn)
    : super(
        'aws:bedrockmodel/invocationJob:InvocationJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    endTime = registerOutput<String>('endTime');
    errorRecordCount = registerOutput<int>('errorRecordCount');
    inputDataConfig = registerOutput<InvocationJobInputDataConfig>('inputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobInputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobArn = registerOutput<String>('jobArn');
    jobExpirationTime = registerOutput<String>('jobExpirationTime');
    jobName = registerOutput<String>('jobName');
    modelId = registerOutput<String>('modelId');
    modelInvocationType = registerOutput<String>('modelInvocationType');
    outputDataConfig = registerOutput<InvocationJobOutputDataConfig>('outputDataConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobOutputDataConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    processedRecordCount = registerOutput<int>('processedRecordCount');
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    skipDestroy = registerOutput<bool?>('skipDestroy');
    status = registerOutput<String>('status');
    submitTime = registerOutput<String>('submitTime');
    successRecordCount = registerOutput<int>('successRecordCount');
    timeoutDurationInHours = registerOutput<int>('timeoutDurationInHours');
    timeouts = registerOutput<InvocationJobTimeouts?>('timeouts', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobTimeouts.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    totalRecordCount = registerOutput<int>('totalRecordCount');
    vpcConfig = registerOutput<InvocationJobVpcConfig?>('vpcConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return InvocationJobVpcConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
  }
}
