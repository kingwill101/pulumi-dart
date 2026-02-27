import 'package:pulumi/pulumi.dart';
import '../labeling_job_human_task_config/labeling_job_human_task_config.dart';
import '../labeling_job_input_config/labeling_job_input_config.dart';
import '../labeling_job_label_counter/labeling_job_label_counter.dart';
import '../labeling_job_labeling_job_algorithms_config/labeling_job_labeling_job_algorithms_config.dart';
import '../labeling_job_output_config/labeling_job_output_config.dart';
import '../labeling_job_stopping_condition/labeling_job_stopping_condition.dart';
import 'labeling_job_args.dart';

/// Manage an Amazon SageMaker labeling job.
///
/// ## Example Usage
///
/// Basic usage:
///
///
///
/// ## Import
///
/// Using `pulumi import`, import labeling jobs using the `labeling_job_name`. For example:
///
/// ```sh
/// $ pulumi import aws:sagemaker/labelingJob:LabelingJob example my-labeling-job
/// ```
class LabelingJob extends CustomResource {
  /// If the job failed, the reason that it failed.
  late final Output<String> failureReason;

  /// Configuration information required for human workers to complete a labeling task. Fields are documented below.
  late final Output<LabelingJobHumanTaskConfig> humanTaskConfig;

  /// Input data for the labeling job. Fields are documented below.
  late final Output<LabelingJobInputConfig> inputConfig;

  /// Unique identifier for work done as part of a labeling job.
  late final Output<String> jobReferenceCode;

  /// Attribute name to use for the label in the output manifest file.
  late final Output<String> labelAttributeName;

  /// S3 URI of the file that defines the categories used to label the data objects.
  late final Output<String?> labelCategoryConfigS3Uri;

  /// A breakdown of the number of objects labeled.
  late final Output<List<LabelingJobLabelCounter>> labelCounters;

  /// Information required to perform automated data labeling.. Fields are documented below.
  late final Output<LabelingJobLabelingJobAlgorithmsConfig?>
      labelingJobAlgorithmsConfig;

  /// ARN of the labeling job.
  late final Output<String> labelingJobArn;

  /// Name of the labeling job.
  late final Output<String> labelingJobName;

  /// Processing status of the labeling job.
  late final Output<String> labelingJobStatus;

  /// Location of the output data. Fields are documented below.
  late final Output<LabelingJobOutputConfig> outputConfig;

  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  late final Output<String> region;

  /// ARN of IAM role that Amazon SageMaker assumes to perform tasks during data labeling.
  late final Output<String> roleArn;

  /// Conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped. Fields are documented below.
  late final Output<List<LabelingJobStoppingCondition>> stoppingConditions;

  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  late final Output<Map<String, String>?> tags;

  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  late final Output<Map<String, String>> tagsAll;

  LabelingJob(
    String name, {
    LabelingJobArgs? args,
    CustomResourceOptions? options,
  }) : super(
          'aws:sagemaker/labelingJob:LabelingJob',
          name,
          Input.mapToInputs(args?.toMap() ?? const {}),
          options ?? CustomResourceOptions(),
        ) {
    this.failureReason = registerOutput<String>('failureReason');
    this.humanTaskConfig =
        registerOutput<LabelingJobHumanTaskConfig>('humanTaskConfig');
    this.inputConfig = registerOutput<LabelingJobInputConfig>('inputConfig');
    this.jobReferenceCode = registerOutput<String>('jobReferenceCode');
    this.labelAttributeName = registerOutput<String>('labelAttributeName');
    this.labelCategoryConfigS3Uri =
        registerOutput<String?>('labelCategoryConfigS3Uri');
    this.labelCounters =
        registerOutput<List<LabelingJobLabelCounter>>('labelCounters');
    this.labelingJobAlgorithmsConfig =
        registerOutput<LabelingJobLabelingJobAlgorithmsConfig?>(
            'labelingJobAlgorithmsConfig');
    this.labelingJobArn = registerOutput<String>('labelingJobArn');
    this.labelingJobName = registerOutput<String>('labelingJobName');
    this.labelingJobStatus = registerOutput<String>('labelingJobStatus');
    this.outputConfig = registerOutput<LabelingJobOutputConfig>('outputConfig');
    this.region = registerOutput<String>('region');
    this.roleArn = registerOutput<String>('roleArn');
    this.stoppingConditions =
        registerOutput<List<LabelingJobStoppingCondition>>(
            'stoppingConditions');
    this.tags = registerOutput<Map<String, String>?>('tags');
    this.tagsAll = registerOutput<Map<String, String>>('tagsAll');
  }
}
