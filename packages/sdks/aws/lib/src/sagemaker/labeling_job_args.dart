// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_human_task_config.dart';
import 'labeling_job_input_config.dart';
import 'labeling_job_labeling_job_algorithms_config.dart';
import 'labeling_job_output_config.dart';
import 'labeling_job_stopping_condition.dart';

/// {@template pulumi_sagemaker_labeling_job_labeling_job_args_doc}
/// The set of arguments for LabelingJob.
/// {@endtemplate}
/// {@macro pulumi_sagemaker_labeling_job_labeling_job_args_doc}
class LabelingJobArgs {
  /// Configuration information required for human workers to complete a labeling task. Fields are documented below.
  final pulumi.Input<LabelingJobHumanTaskConfig> humanTaskConfig;
  /// Input data for the labeling job. Fields are documented below.
  final pulumi.Input<LabelingJobInputConfig> inputConfig;
  /// Attribute name to use for the label in the output manifest file.
  final pulumi.Input<String> labelAttributeName;
  /// S3 URI of the file that defines the categories used to label the data objects.
  final pulumi.Input<String>? labelCategoryConfigS3Uri;
  /// Information required to perform automated data labeling.. Fields are documented below.
  final pulumi.Input<LabelingJobLabelingJobAlgorithmsConfig>? labelingJobAlgorithmsConfig;
  /// Name of the labeling job.
  final pulumi.Input<String> labelingJobName;
  /// Location of the output data. Fields are documented below.
  final pulumi.Input<LabelingJobOutputConfig> outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of IAM role that Amazon SageMaker assumes to perform tasks during data labeling.
  final pulumi.Input<String> roleArn;
  /// Conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped. Fields are documented below.
  final pulumi.Input<List<LabelingJobStoppingCondition>>? stoppingConditions;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;

  /// Creates a new [LabelingJobArgs].
  /// [humanTaskConfig] Configuration information required for human workers to complete a labeling task. Fields are documented below.
  /// [inputConfig] Input data for the labeling job. Fields are documented below.
  /// [labelAttributeName] Attribute name to use for the label in the output manifest file.
  /// [labelCategoryConfigS3Uri] S3 URI of the file that defines the categories used to label the data objects.
  /// [labelingJobAlgorithmsConfig] Information required to perform automated data labeling.. Fields are documented below.
  /// [labelingJobName] Name of the labeling job.
  /// [outputConfig] Location of the output data. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of IAM role that Amazon SageMaker assumes to perform tasks during data labeling.
  /// [stoppingConditions] Conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped. Fields are documented below.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  LabelingJobArgs({
    required this.humanTaskConfig,
    required this.inputConfig,
    required this.labelAttributeName,
    this.labelCategoryConfigS3Uri,
    this.labelingJobAlgorithmsConfig,
    required this.labelingJobName,
    required this.outputConfig,
    this.region,
    required this.roleArn,
    this.stoppingConditions,
    this.tags,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'humanTaskConfig': pulumi.Input.mapInputValue<LabelingJobHumanTaskConfig, Map<String, dynamic>>(humanTaskConfig, (value) => value.toMap()),
      'inputConfig': pulumi.Input.mapInputValue<LabelingJobInputConfig, Map<String, dynamic>>(inputConfig, (value) => value.toMap()),
      'labelAttributeName': labelAttributeName,
      'labelCategoryConfigS3Uri': ?labelCategoryConfigS3Uri,
      'labelingJobAlgorithmsConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobLabelingJobAlgorithmsConfig, Map<String, dynamic>>(labelingJobAlgorithmsConfig, (value) => value.toMap()),
      'labelingJobName': labelingJobName,
      'outputConfig': pulumi.Input.mapInputValue<LabelingJobOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': roleArn,
      'stoppingConditions': ?pulumi.Input.mapOptionalInputValue<List<LabelingJobStoppingCondition>, List<Map<String, dynamic>>>(stoppingConditions, (value) => pulumi.Input.encodeList<LabelingJobStoppingCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
    };
  }

  factory LabelingJobArgs.fromMap(Map<String, dynamic> map) {
    return LabelingJobArgs(
      humanTaskConfig: (LabelingJobHumanTaskConfig.fromMap((map['humanTaskConfig'] as Map).cast<String, dynamic>())).input(),
      inputConfig: (LabelingJobInputConfig.fromMap((map['inputConfig'] as Map).cast<String, dynamic>())).input(),
      labelAttributeName: (map['labelAttributeName'] as String).input(),
      labelCategoryConfigS3Uri: map['labelCategoryConfigS3Uri'] == null ? null : (map['labelCategoryConfigS3Uri'] as String).input(),
      labelingJobAlgorithmsConfig: map['labelingJobAlgorithmsConfig'] == null ? null : (LabelingJobLabelingJobAlgorithmsConfig.fromMap((map['labelingJobAlgorithmsConfig'] as Map).cast<String, dynamic>())).input(),
      labelingJobName: (map['labelingJobName'] as String).input(),
      outputConfig: (LabelingJobOutputConfig.fromMap((map['outputConfig'] as Map).cast<String, dynamic>())).input(),
      region: map['region'] == null ? null : (map['region'] as String).input(),
      roleArn: (map['roleArn'] as String).input(),
      stoppingConditions: map['stoppingConditions'] == null ? null : (pulumi.Input.decodeList<LabelingJobStoppingCondition>(map['stoppingConditions'], (value) => LabelingJobStoppingCondition.fromMap((value as Map).cast<String, dynamic>()))).input(),
      tags: map['tags'] == null ? null : ((map['tags'] as Map).cast<String, String>()).input(),
    );
  }
}

