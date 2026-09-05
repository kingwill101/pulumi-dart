import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_args.dart';
import 'labeling_job_human_task_config.dart';
import 'labeling_job_input_config.dart';
import 'labeling_job_label_counter.dart';
import 'labeling_job_labeling_job_algorithms_config.dart';
import 'labeling_job_output_config.dart';
import 'labeling_job_state.dart';
import 'labeling_job_stopping_condition.dart';

/// Manage an Amazon SageMaker labeling job.
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
/// // https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api.
/// const test = new aws.sagemaker.LabelingJob("test", {
///     humanTaskConfig: {
///         uiConfig: {
///             humanTaskUiArn: "arn:aws:sagemaker:us-west-2:394669845002:human-task-ui/NamedEntityRecognition",
///         },
///         annotationConsolidationConfig: {
///             annotationConsolidationLambdaArn: "arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition",
///         },
///         numberOfHumanWorkersPerDataObject: 1,
///         taskDescription: "Apply the labels provided to specific words or phrases within the larger text block.",
///         taskTitle: "Named entity Recognition task",
///         taskTimeLimitInSeconds: 28800,
///         workteamArn: example.arn,
///         preHumanTaskLambdaArn: "arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition",
///     },
///     inputConfig: {
///         dataSource: {
///             snsDataSource: {
///                 snsTopicArn: exampleAwsSnsTopic.arn,
///             },
///         },
///     },
///     outputConfig: {
///         s3OutputPath: `s3://${exampleAwsS3Bucket.bucket}/`,
///     },
///     labelAttributeName: "label1",
///     labelingJobName: "my-labeling-job",
///     roleArn: exampleAwsIamRole.arn,
///     labelCategoryConfigS3Uri: `s3://${exampleAwsS3Bucket.bucket}/${exampleAwsS3Object.key}`,
/// });
/// ```
/// ```python
/// import pulumi
/// import pulumi_aws as aws
///
/// # https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api.
/// test = aws.sagemaker.LabelingJob("test",
///     human_task_config={
///         "ui_config": {
///             "human_task_ui_arn": "arn:aws:sagemaker:us-west-2:394669845002:human-task-ui/NamedEntityRecognition",
///         },
///         "annotation_consolidation_config": {
///             "annotation_consolidation_lambda_arn": "arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition",
///         },
///         "number_of_human_workers_per_data_object": 1,
///         "task_description": "Apply the labels provided to specific words or phrases within the larger text block.",
///         "task_title": "Named entity Recognition task",
///         "task_time_limit_in_seconds": 28800,
///         "workteam_arn": example["arn"],
///         "pre_human_task_lambda_arn": "arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition",
///     },
///     input_config={
///         "data_source": {
///             "sns_data_source": {
///                 "sns_topic_arn": example_aws_sns_topic["arn"],
///             },
///         },
///     },
///     output_config={
///         "s3_output_path": f"s3://{example_aws_s3_bucket['bucket']}/",
///     },
///     label_attribute_name="label1",
///     labeling_job_name="my-labeling-job",
///     role_arn=example_aws_iam_role["arn"],
///     label_category_config_s3_uri=f"s3://{example_aws_s3_bucket['bucket']}/{example_aws_s3_object['key']}")
/// ```
/// ```csharp
/// using System.Collections.Generic;
/// using System.Linq;
/// using Pulumi;
/// using Aws = Pulumi.Aws;
///
/// return await Deployment.RunAsync(() =>
/// {
///     // https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api.
///     var test = new Aws.Sagemaker.LabelingJob("test", new()
///     {
///         HumanTaskConfig = new Aws.Sagemaker.Inputs.LabelingJobHumanTaskConfigArgs
///         {
///             UiConfig = new Aws.Sagemaker.Inputs.LabelingJobHumanTaskConfigUiConfigArgs
///             {
///                 HumanTaskUiArn = "arn:aws:sagemaker:us-west-2:394669845002:human-task-ui/NamedEntityRecognition",
///             },
///             AnnotationConsolidationConfig = new Aws.Sagemaker.Inputs.LabelingJobHumanTaskConfigAnnotationConsolidationConfigArgs
///             {
///                 AnnotationConsolidationLambdaArn = "arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition",
///             },
///             NumberOfHumanWorkersPerDataObject = 1,
///             TaskDescription = "Apply the labels provided to specific words or phrases within the larger text block.",
///             TaskTitle = "Named entity Recognition task",
///             TaskTimeLimitInSeconds = 28800,
///             WorkteamArn = example.Arn,
///             PreHumanTaskLambdaArn = "arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition",
///         },
///         InputConfig = new Aws.Sagemaker.Inputs.LabelingJobInputConfigArgs
///         {
///             DataSource = new Aws.Sagemaker.Inputs.LabelingJobInputConfigDataSourceArgs
///             {
///                 SnsDataSource = new Aws.Sagemaker.Inputs.LabelingJobInputConfigDataSourceSnsDataSourceArgs
///                 {
///                     SnsTopicArn = exampleAwsSnsTopic.Arn,
///                 },
///             },
///         },
///         OutputConfig = new Aws.Sagemaker.Inputs.LabelingJobOutputConfigArgs
///         {
///             S3OutputPath = $"s3://{exampleAwsS3Bucket.Bucket}/",
///         },
///         LabelAttributeName = "label1",
///         LabelingJobName = "my-labeling-job",
///         RoleArn = exampleAwsIamRole.Arn,
///         LabelCategoryConfigS3Uri = $"s3://{exampleAwsS3Bucket.Bucket}/{exampleAwsS3Object.Key}",
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
/// 		// https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api.
/// 		_, err := sagemaker.NewLabelingJob(ctx, "test", &sagemaker.LabelingJobArgs{
/// 			HumanTaskConfig: &sagemaker.LabelingJobHumanTaskConfigArgs{
/// 				UiConfig: &sagemaker.LabelingJobHumanTaskConfigUiConfigArgs{
/// 					HumanTaskUiArn: pulumi.String("arn:aws:sagemaker:us-west-2:394669845002:human-task-ui/NamedEntityRecognition"),
/// 				},
/// 				AnnotationConsolidationConfig: &sagemaker.LabelingJobHumanTaskConfigAnnotationConsolidationConfigArgs{
/// 					AnnotationConsolidationLambdaArn: pulumi.String("arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition"),
/// 				},
/// 				NumberOfHumanWorkersPerDataObject: pulumi.Int(1),
/// 				TaskDescription:                   pulumi.String("Apply the labels provided to specific words or phrases within the larger text block."),
/// 				TaskTitle:                         pulumi.String("Named entity Recognition task"),
/// 				TaskTimeLimitInSeconds:            pulumi.Int(28800),
/// 				WorkteamArn:                       pulumi.Any(example.Arn),
/// 				PreHumanTaskLambdaArn:             pulumi.String("arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition"),
/// 			},
/// 			InputConfig: &sagemaker.LabelingJobInputConfigArgs{
/// 				DataSource: &sagemaker.LabelingJobInputConfigDataSourceArgs{
/// 					SnsDataSource: &sagemaker.LabelingJobInputConfigDataSourceSnsDataSourceArgs{
/// 						SnsTopicArn: pulumi.Any(exampleAwsSnsTopic.Arn),
/// 					},
/// 				},
/// 			},
/// 			OutputConfig: &sagemaker.LabelingJobOutputConfigArgs{
/// 				S3OutputPath: pulumi.Sprintf("s3://%v/", exampleAwsS3Bucket.Bucket),
/// 			},
/// 			LabelAttributeName:       pulumi.String("label1"),
/// 			LabelingJobName:          pulumi.String("my-labeling-job"),
/// 			RoleArn:                  pulumi.Any(exampleAwsIamRole.Arn),
/// 			LabelCategoryConfigS3Uri: pulumi.Sprintf("s3://%v/%v", exampleAwsS3Bucket.Bucket, exampleAwsS3Object.Key),
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
/// # https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api.
/// resource "aws_sagemaker_labelingjob" "test" {
///   human_task_config = {
///     ui_config = {
///       human_task_ui_arn = "arn:aws:sagemaker:us-west-2:394669845002:human-task-ui/NamedEntityRecognition"
///     }
///     annotation_consolidation_config = {
///       annotation_consolidation_lambda_arn = "arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition"
///     }
///     number_of_human_workers_per_data_object = 1
///     task_description                        = "Apply the labels provided to specific words or phrases within the larger text block."
///     task_title                              = "Named entity Recognition task"
///     task_time_limit_in_seconds              = 28800
///     workteam_arn                            = example.arn
///     pre_human_task_lambda_arn               = "arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition"
///   }
///   input_config = {
///     data_source = {
///       sns_data_source = {
///         sns_topic_arn = exampleAwsSnsTopic.arn
///       }
///     }
///   }
///   output_config = {
///     s3_output_path ="s3://${exampleAwsS3Bucket.bucket}/"
///   }
///   label_attribute_name         = "label1"
///   labeling_job_name            = "my-labeling-job"
///   role_arn                     = exampleAwsIamRole.arn
///   label_category_config_s3_uri ="s3://${exampleAwsS3Bucket.bucket}/${exampleAwsS3Object.key}"
/// }
/// ```
/// ```java
/// package generated_program;
///
/// import com.pulumi.Context;
/// import com.pulumi.Pulumi;
/// import com.pulumi.core.Output;
/// import com.pulumi.aws.sagemaker.LabelingJob;
/// import com.pulumi.aws.sagemaker.LabelingJobArgs;
/// import com.pulumi.aws.sagemaker.inputs.LabelingJobHumanTaskConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.LabelingJobHumanTaskConfigUiConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.LabelingJobHumanTaskConfigAnnotationConsolidationConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.LabelingJobInputConfigArgs;
/// import com.pulumi.aws.sagemaker.inputs.LabelingJobInputConfigDataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.LabelingJobInputConfigDataSourceSnsDataSourceArgs;
/// import com.pulumi.aws.sagemaker.inputs.LabelingJobOutputConfigArgs;
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
///         // https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api.
///         var test = new LabelingJob("test", LabelingJobArgs.builder()
///             .humanTaskConfig(LabelingJobHumanTaskConfigArgs.builder()
///                 .uiConfig(LabelingJobHumanTaskConfigUiConfigArgs.builder()
///                     .humanTaskUiArn("arn:aws:sagemaker:us-west-2:394669845002:human-task-ui/NamedEntityRecognition")
///                     .build())
///                 .annotationConsolidationConfig(LabelingJobHumanTaskConfigAnnotationConsolidationConfigArgs.builder()
///                     .annotationConsolidationLambdaArn("arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition")
///                     .build())
///                 .numberOfHumanWorkersPerDataObject(1)
///                 .taskDescription("Apply the labels provided to specific words or phrases within the larger text block.")
///                 .taskTitle("Named entity Recognition task")
///                 .taskTimeLimitInSeconds(28800)
///                 .workteamArn(example.arn())
///                 .preHumanTaskLambdaArn("arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition")
///                 .build())
///             .inputConfig(LabelingJobInputConfigArgs.builder()
///                 .dataSource(LabelingJobInputConfigDataSourceArgs.builder()
///                     .snsDataSource(LabelingJobInputConfigDataSourceSnsDataSourceArgs.builder()
///                         .snsTopicArn(exampleAwsSnsTopic.arn())
///                         .build())
///                     .build())
///                 .build())
///             .outputConfig(LabelingJobOutputConfigArgs.builder()
///                 .s3OutputPath(String.format("s3://%s/", exampleAwsS3Bucket.bucket()))
///                 .build())
///             .labelAttributeName("label1")
///             .labelingJobName("my-labeling-job")
///             .roleArn(exampleAwsIamRole.arn())
///             .labelCategoryConfigS3Uri(String.format("s3://%s/%s", exampleAwsS3Bucket.bucket(),exampleAwsS3Object.key()))
///             .build());
///
///     }
/// }
/// ```
/// ```yaml
/// resources:
///   # https://docs.aws.amazon.com/sagemaker/latest/dg/sms-named-entity-recg.html#sms-creating-ner-api.
///   test:
///     type: aws:sagemaker:LabelingJob
///     properties:
///       humanTaskConfig:
///         uiConfig:
///           humanTaskUiArn: arn:aws:sagemaker:us-west-2:394669845002:human-task-ui/NamedEntityRecognition
///         annotationConsolidationConfig:
///           annotationConsolidationLambdaArn: arn:aws:lambda:us-west-2:081040173940:function:ACS-NamedEntityRecognition
///         numberOfHumanWorkersPerDataObject: 1
///         taskDescription: Apply the labels provided to specific words or phrases within the larger text block.
///         taskTitle: Named entity Recognition task
///         taskTimeLimitInSeconds: 28800
///         workteamArn: ${example.arn}
///         preHumanTaskLambdaArn: arn:aws:lambda:us-west-2:081040173940:function:PRE-NamedEntityRecognition
///       inputConfig:
///         dataSource:
///           snsDataSource:
///             snsTopicArn: ${exampleAwsSnsTopic.arn}
///       outputConfig:
///         s3OutputPath: s3://${exampleAwsS3Bucket.bucket}/
///       labelAttributeName: label1
///       labelingJobName: my-labeling-job
///       roleArn: ${exampleAwsIamRole.arn}
///       labelCategoryConfigS3Uri: s3://${exampleAwsS3Bucket.bucket}/${exampleAwsS3Object.key}
/// ```
///
///
/// ## Import
///
/// Using `pulumi import`, import labeling jobs using the `labelingJobName`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/labelingJob:LabelingJob example my-labeling-job
/// ```
class LabelingJob extends pulumi.CustomResource {
  /// If the job failed, the reason that it failed.
  late final pulumi.Output<String> failureReason;
  /// Configuration information required for human workers to complete a labeling task. Fields are documented below.
  late final pulumi.Output<LabelingJobHumanTaskConfig> humanTaskConfig;
  /// Input data for the labeling job. Fields are documented below.
  late final pulumi.Output<LabelingJobInputConfig> inputConfig;
  /// Unique identifier for work done as part of a labeling job.
  late final pulumi.Output<String> jobReferenceCode;
  /// Attribute name to use for the label in the output manifest file.
  late final pulumi.Output<String> labelAttributeName;
  /// S3 URI of the file that defines the categories used to label the data objects.
  late final pulumi.Output<String?> labelCategoryConfigS3Uri;
  /// A breakdown of the number of objects labeled.
  late final pulumi.Output<List<LabelingJobLabelCounter>> labelCounters;
  /// Information required to perform automated data labeling.. Fields are documented below.
  late final pulumi.Output<LabelingJobLabelingJobAlgorithmsConfig?> labelingJobAlgorithmsConfig;
  /// ARN of the labeling job.
  late final pulumi.Output<String> labelingJobArn;
  /// Name of the labeling job.
  late final pulumi.Output<String> labelingJobName;
  /// Processing status of the labeling job.
  late final pulumi.Output<String> labelingJobStatus;
  /// Location of the output data. Fields are documented below.
  late final pulumi.Output<LabelingJobOutputConfig> outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final pulumi.Output<String> region;
  /// ARN of IAM role that Amazon SageMaker assumes to perform tasks during data labeling.
  late final pulumi.Output<String> roleArn;
  /// Conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped. Fields are documented below.
  late final pulumi.Output<List<LabelingJobStoppingCondition>> stoppingConditions;
  /// A mapping of tags to assign to the resource. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final pulumi.Output<Map<String, String>?> tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  late final pulumi.Output<Map<String, String>> tagsAll;

  /// Creates a new [LabelingJob].
  /// [name] The Pulumi resource name.
  /// [args] Arguments used to configure this [LabelingJob]. {@macro pulumi_sagemaker_labeling_job_labeling_job_args_doc}
  /// [options] Resource options controlling this resource's behavior.
  LabelingJob(
    String name, {
    LabelingJobArgs? args,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/labelingJob:LabelingJob',
          name,
          pulumi.Input.mapToInputs(args?.toMap() ?? const {}),
          pulumi.CustomResourceOptions(version: '7.44.0').merge(options),
        ) {
    failureReason = registerOutput<String>('failureReason');
    humanTaskConfig = registerOutput<LabelingJobHumanTaskConfig>('humanTaskConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobHumanTaskConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputConfig = registerOutput<LabelingJobInputConfig>('inputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobInputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobReferenceCode = registerOutput<String>('jobReferenceCode');
    labelAttributeName = registerOutput<String>('labelAttributeName');
    labelCategoryConfigS3Uri = registerOutput<String?>('labelCategoryConfigS3Uri');
    labelCounters = registerOutput<List<LabelingJobLabelCounter>>('labelCounters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LabelingJobLabelCounter>(guardedValue, (value) => LabelingJobLabelCounter.fromMap((value as Map).cast<String, dynamic>())); });
    labelingJobAlgorithmsConfig = registerOutput<LabelingJobLabelingJobAlgorithmsConfig?>('labelingJobAlgorithmsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobLabelingJobAlgorithmsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labelingJobArn = registerOutput<String>('labelingJobArn');
    labelingJobName = registerOutput<String>('labelingJobName');
    labelingJobStatus = registerOutput<String>('labelingJobStatus');
    outputConfig = registerOutput<LabelingJobOutputConfig>('outputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stoppingConditions = registerOutput<List<LabelingJobStoppingCondition>>('stoppingConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LabelingJobStoppingCondition>(guardedValue, (value) => LabelingJobStoppingCondition.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Gets an existing [LabelingJob] resource's state with the given [name] and [id].
  static LabelingJob get(
    String name,
    pulumi.Input<String> id, {
    LabelingJobState? state,
    pulumi.CustomResourceOptions? options,
  }) {
    return LabelingJob._get(
      name,
      state: state?.toMap(),
      options: pulumi.CustomResourceOptions(id: id).merge(options),
    );
  }

  LabelingJob._get(
    String name, {
    Map<String, dynamic>? state,
    pulumi.CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/labelingJob:LabelingJob',
          name,
          pulumi.Input.mapToInputs(state ?? const <String, dynamic>{}),
          options ?? pulumi.CustomResourceOptions(),
        ) {
    failureReason = registerOutput<String>('failureReason');
    humanTaskConfig = registerOutput<LabelingJobHumanTaskConfig>('humanTaskConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobHumanTaskConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputConfig = registerOutput<LabelingJobInputConfig>('inputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobInputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobReferenceCode = registerOutput<String>('jobReferenceCode');
    labelAttributeName = registerOutput<String>('labelAttributeName');
    labelCategoryConfigS3Uri = registerOutput<String?>('labelCategoryConfigS3Uri');
    labelCounters = registerOutput<List<LabelingJobLabelCounter>>('labelCounters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LabelingJobLabelCounter>(guardedValue, (value) => LabelingJobLabelCounter.fromMap((value as Map).cast<String, dynamic>())); });
    labelingJobAlgorithmsConfig = registerOutput<LabelingJobLabelingJobAlgorithmsConfig?>('labelingJobAlgorithmsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobLabelingJobAlgorithmsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labelingJobArn = registerOutput<String>('labelingJobArn');
    labelingJobName = registerOutput<String>('labelingJobName');
    labelingJobStatus = registerOutput<String>('labelingJobStatus');
    outputConfig = registerOutput<LabelingJobOutputConfig>('outputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stoppingConditions = registerOutput<List<LabelingJobStoppingCondition>>('stoppingConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LabelingJobStoppingCondition>(guardedValue, (value) => LabelingJobStoppingCondition.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }

  /// Creates a typed reference to an existing [LabelingJob] resource.
  LabelingJob.reference(String urn)
    : super(
        'aws:sagemaker/labelingJob:LabelingJob',
        pulumi.parseUrn(urn).urnName,
        const <String, pulumi.Input<dynamic>>{},
        pulumi.CustomResourceOptions(urn: pulumi.input(urn)),
        isResourceReference: true,
      ) {
    failureReason = registerOutput<String>('failureReason');
    humanTaskConfig = registerOutput<LabelingJobHumanTaskConfig>('humanTaskConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobHumanTaskConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    inputConfig = registerOutput<LabelingJobInputConfig>('inputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobInputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    jobReferenceCode = registerOutput<String>('jobReferenceCode');
    labelAttributeName = registerOutput<String>('labelAttributeName');
    labelCategoryConfigS3Uri = registerOutput<String?>('labelCategoryConfigS3Uri');
    labelCounters = registerOutput<List<LabelingJobLabelCounter>>('labelCounters', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LabelingJobLabelCounter>(guardedValue, (value) => LabelingJobLabelCounter.fromMap((value as Map).cast<String, dynamic>())); });
    labelingJobAlgorithmsConfig = registerOutput<LabelingJobLabelingJobAlgorithmsConfig?>('labelingJobAlgorithmsConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobLabelingJobAlgorithmsConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    labelingJobArn = registerOutput<String>('labelingJobArn');
    labelingJobName = registerOutput<String>('labelingJobName');
    labelingJobStatus = registerOutput<String>('labelingJobStatus');
    outputConfig = registerOutput<LabelingJobOutputConfig>('outputConfig', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return LabelingJobOutputConfig.fromMap((guardedValue as Map).cast<String, dynamic>()); });
    region = registerOutput<String>('region');
    roleArn = registerOutput<String>('roleArn');
    stoppingConditions = registerOutput<List<LabelingJobStoppingCondition>>('stoppingConditions', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return pulumi.Input.decodeList<LabelingJobStoppingCondition>(guardedValue, (value) => LabelingJobStoppingCondition.fromMap((value as Map).cast<String, dynamic>())); });
    tags = registerOutput<Map<String, String>?>('tags', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
    tagsAll = registerOutput<Map<String, String>>('tagsAll', decoder: (raw) { final guardedValue = raw; if (guardedValue == null) return null; return (guardedValue as Map).cast<String, String>(); });
  }
}
