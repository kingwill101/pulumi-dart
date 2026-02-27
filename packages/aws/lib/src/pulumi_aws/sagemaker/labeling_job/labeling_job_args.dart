// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../labeling_job_human_task_config/labeling_job_human_task_config.dart';
import '../labeling_job_input_config/labeling_job_input_config.dart';
import '../labeling_job_labeling_job_algorithms_config/labeling_job_labeling_job_algorithms_config.dart';
import '../labeling_job_output_config/labeling_job_output_config.dart';
import '../labeling_job_stopping_condition/labeling_job_stopping_condition.dart';

/// The set of arguments for LabelingJob.
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
  final pulumi.Input<LabelingJobLabelingJobAlgorithmsConfig>?
      labelingJobAlgorithmsConfig;

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
    final map = <String, dynamic>{};
    map['humanTaskConfig'] = pulumi.Input.mapInputValue<
        LabelingJobHumanTaskConfig,
        Map<String, dynamic>>(humanTaskConfig, (value) => value.toMap());
    map['inputConfig'] = pulumi.Input.mapInputValue<LabelingJobInputConfig,
        Map<String, dynamic>>(inputConfig, (value) => value.toMap());
    map['labelAttributeName'] = labelAttributeName;
    final labelCategoryConfigS3UriValue = labelCategoryConfigS3Uri;
    if (labelCategoryConfigS3UriValue != null) {
      map['labelCategoryConfigS3Uri'] = labelCategoryConfigS3UriValue;
    }
    final labelingJobAlgorithmsConfigValue = labelingJobAlgorithmsConfig;
    if (labelingJobAlgorithmsConfigValue != null) {
      map['labelingJobAlgorithmsConfig'] = pulumi.Input.mapOptionalInputValue<
              LabelingJobLabelingJobAlgorithmsConfig, Map<String, dynamic>>(
          labelingJobAlgorithmsConfigValue, (value) => value.toMap());
    }
    map['labelingJobName'] = labelingJobName;
    map['outputConfig'] = pulumi.Input.mapInputValue<LabelingJobOutputConfig,
        Map<String, dynamic>>(outputConfig, (value) => value.toMap());
    final regionValue = region;
    if (regionValue != null) {
      map['region'] = regionValue;
    }
    map['roleArn'] = roleArn;
    final stoppingConditionsValue = stoppingConditions;
    if (stoppingConditionsValue != null) {
      map['stoppingConditions'] = pulumi.Input.mapOptionalInputValue<
              List<LabelingJobStoppingCondition>, List<Map<String, dynamic>>>(
          stoppingConditionsValue,
          (value) => pulumi.Input.encodeList<LabelingJobStoppingCondition,
              Map<String, dynamic>>(value, (value) => value.toMap()));
    }
    final tagsValue = tags;
    if (tagsValue != null) {
      map['tags'] = tagsValue;
    }
    return map;
  }

  factory LabelingJobArgs.fromMap(Map<String, dynamic> map) {
    return LabelingJobArgs(
      humanTaskConfig: pulumi.Input.asInput<LabelingJobHumanTaskConfig>(
          map['humanTaskConfig']),
      inputConfig:
          pulumi.Input.asInput<LabelingJobInputConfig>(map['inputConfig']),
      labelAttributeName:
          pulumi.Input.asInput<String>(map['labelAttributeName']),
      labelCategoryConfigS3Uri:
          pulumi.Input.asOptionalInput<String>(map['labelCategoryConfigS3Uri']),
      labelingJobAlgorithmsConfig:
          pulumi.Input.asOptionalInput<LabelingJobLabelingJobAlgorithmsConfig>(
              map['labelingJobAlgorithmsConfig']),
      labelingJobName: pulumi.Input.asInput<String>(map['labelingJobName']),
      outputConfig:
          pulumi.Input.asInput<LabelingJobOutputConfig>(map['outputConfig']),
      region: pulumi.Input.asOptionalInput<String>(map['region']),
      roleArn: pulumi.Input.asInput<String>(map['roleArn']),
      stoppingConditions:
          pulumi.Input.asOptionalInput<List<LabelingJobStoppingCondition>>(
              map['stoppingConditions']),
      tags: pulumi.Input.asOptionalInput<Map<String, String>>(map['tags']),
    );
  }
}
