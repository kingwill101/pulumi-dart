// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_human_task_config.dart';
import 'labeling_job_input_config.dart';
import 'labeling_job_label_counter.dart';
import 'labeling_job_labeling_job_algorithms_config.dart';
import 'labeling_job_output_config.dart';
import 'labeling_job_stopping_condition.dart';

/// Input properties used for looking up and filtering LabelingJob resources.
class LabelingJobState {
  /// If the job failed, the reason that it failed.
  final pulumi.Input<String>? failureReason;
  /// Configuration information required for human workers to complete a labeling task. Fields are documented below.
  final pulumi.Input<LabelingJobHumanTaskConfig>? humanTaskConfig;
  /// Input data for the labeling job. Fields are documented below.
  final pulumi.Input<LabelingJobInputConfig>? inputConfig;
  /// Unique identifier for work done as part of a labeling job.
  final pulumi.Input<String>? jobReferenceCode;
  /// Attribute name to use for the label in the output manifest file.
  final pulumi.Input<String>? labelAttributeName;
  /// S3 URI of the file that defines the categories used to label the data objects.
  final pulumi.Input<String>? labelCategoryConfigS3Uri;
  /// A breakdown of the number of objects labeled.
  final pulumi.Input<List<LabelingJobLabelCounter>>? labelCounters;
  /// Information required to perform automated data labeling.. Fields are documented below.
  final pulumi.Input<LabelingJobLabelingJobAlgorithmsConfig>? labelingJobAlgorithmsConfig;
  /// ARN of the labeling job.
  final pulumi.Input<String>? labelingJobArn;
  /// Name of the labeling job.
  final pulumi.Input<String>? labelingJobName;
  /// Processing status of the labeling job.
  final pulumi.Input<String>? labelingJobStatus;
  /// Location of the output data. Fields are documented below.
  final pulumi.Input<LabelingJobOutputConfig>? outputConfig;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// ARN of IAM role that Amazon SageMaker assumes to perform tasks during data labeling.
  final pulumi.Input<String>? roleArn;
  /// Conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped. Fields are documented below.
  final pulumi.Input<List<LabelingJobStoppingCondition>>? stoppingConditions;
  /// A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  final pulumi.Input<Map<String, String>>? tagsAll;

  /// Creates a new [LabelingJobState].
  /// [failureReason] If the job failed, the reason that it failed.
  /// [humanTaskConfig] Configuration information required for human workers to complete a labeling task. Fields are documented below.
  /// [inputConfig] Input data for the labeling job. Fields are documented below.
  /// [jobReferenceCode] Unique identifier for work done as part of a labeling job.
  /// [labelAttributeName] Attribute name to use for the label in the output manifest file.
  /// [labelCategoryConfigS3Uri] S3 URI of the file that defines the categories used to label the data objects.
  /// [labelCounters] A breakdown of the number of objects labeled.
  /// [labelingJobAlgorithmsConfig] Information required to perform automated data labeling.. Fields are documented below.
  /// [labelingJobArn] ARN of the labeling job.
  /// [labelingJobName] Name of the labeling job.
  /// [labelingJobStatus] Processing status of the labeling job.
  /// [outputConfig] Location of the output data. Fields are documented below.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [roleArn] ARN of IAM role that Amazon SageMaker assumes to perform tasks during data labeling.
  /// [stoppingConditions] Conditions for stopping a labeling job. If any of the conditions are met, the job is automatically stopped. Fields are documented below.
  /// [tags] A mapping of tags to assign to the resource. If configured with a provider `default_tags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] A map of tags assigned to the resource, including those inherited from the provider `default_tags` configuration block.
  LabelingJobState({
    pulumi.Output<String>? failureReason,
    pulumi.Output<LabelingJobHumanTaskConfig>? humanTaskConfig,
    pulumi.Output<LabelingJobInputConfig>? inputConfig,
    pulumi.Output<String>? jobReferenceCode,
    pulumi.Output<String>? labelAttributeName,
    pulumi.Output<String>? labelCategoryConfigS3Uri,
    pulumi.Output<List<LabelingJobLabelCounter>>? labelCounters,
    pulumi.Output<LabelingJobLabelingJobAlgorithmsConfig>? labelingJobAlgorithmsConfig,
    pulumi.Output<String>? labelingJobArn,
    pulumi.Output<String>? labelingJobName,
    pulumi.Output<String>? labelingJobStatus,
    pulumi.Output<LabelingJobOutputConfig>? outputConfig,
    pulumi.Output<String>? region,
    pulumi.Output<String>? roleArn,
    pulumi.Output<List<LabelingJobStoppingCondition>>? stoppingConditions,
    pulumi.Output<Map<String, String>>? tags,
    pulumi.Output<Map<String, String>>? tagsAll,
  }) :
      failureReason = pulumi.Input.asOptionalInput<String>(failureReason),
      humanTaskConfig = pulumi.Input.asOptionalInput<LabelingJobHumanTaskConfig>(humanTaskConfig),
      inputConfig = pulumi.Input.asOptionalInput<LabelingJobInputConfig>(inputConfig),
      jobReferenceCode = pulumi.Input.asOptionalInput<String>(jobReferenceCode),
      labelAttributeName = pulumi.Input.asOptionalInput<String>(labelAttributeName),
      labelCategoryConfigS3Uri = pulumi.Input.asOptionalInput<String>(labelCategoryConfigS3Uri),
      labelCounters = pulumi.Input.asOptionalInput<List<LabelingJobLabelCounter>>(labelCounters),
      labelingJobAlgorithmsConfig = pulumi.Input.asOptionalInput<LabelingJobLabelingJobAlgorithmsConfig>(labelingJobAlgorithmsConfig),
      labelingJobArn = pulumi.Input.asOptionalInput<String>(labelingJobArn),
      labelingJobName = pulumi.Input.asOptionalInput<String>(labelingJobName),
      labelingJobStatus = pulumi.Input.asOptionalInput<String>(labelingJobStatus),
      outputConfig = pulumi.Input.asOptionalInput<LabelingJobOutputConfig>(outputConfig),
      region = pulumi.Input.asOptionalInput<String>(region),
      roleArn = pulumi.Input.asOptionalInput<String>(roleArn),
      stoppingConditions = pulumi.Input.asOptionalInput<List<LabelingJobStoppingCondition>>(stoppingConditions),
      tags = pulumi.Input.asOptionalInput<Map<String, String>>(tags),
      tagsAll = pulumi.Input.asOptionalInput<Map<String, String>>(tagsAll);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'failureReason': ?failureReason,
      'humanTaskConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobHumanTaskConfig, Map<String, dynamic>>(humanTaskConfig, (value) => value.toMap()),
      'inputConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobInputConfig, Map<String, dynamic>>(inputConfig, (value) => value.toMap()),
      'jobReferenceCode': ?jobReferenceCode,
      'labelAttributeName': ?labelAttributeName,
      'labelCategoryConfigS3Uri': ?labelCategoryConfigS3Uri,
      'labelCounters': ?pulumi.Input.mapOptionalInputValue<List<LabelingJobLabelCounter>, List<Map<String, dynamic>>>(labelCounters, (value) => pulumi.Input.encodeList<LabelingJobLabelCounter, Map<String, dynamic>>(value, (value) => value.toMap())),
      'labelingJobAlgorithmsConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobLabelingJobAlgorithmsConfig, Map<String, dynamic>>(labelingJobAlgorithmsConfig, (value) => value.toMap()),
      'labelingJobArn': ?labelingJobArn,
      'labelingJobName': ?labelingJobName,
      'labelingJobStatus': ?labelingJobStatus,
      'outputConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobOutputConfig, Map<String, dynamic>>(outputConfig, (value) => value.toMap()),
      'region': ?region,
      'roleArn': ?roleArn,
      'stoppingConditions': ?pulumi.Input.mapOptionalInputValue<List<LabelingJobStoppingCondition>, List<Map<String, dynamic>>>(stoppingConditions, (value) => pulumi.Input.encodeList<LabelingJobStoppingCondition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'tags': ?tags,
      'tagsAll': ?tagsAll,
    };
  }

  factory LabelingJobState.fromMap(Map<String, dynamic> map) {
    return LabelingJobState(
      failureReason: map['failureReason'] == null ? null : pulumi.Output.create<String>(map['failureReason'] as String),
      humanTaskConfig: map['humanTaskConfig'] == null ? null : pulumi.Output.create<LabelingJobHumanTaskConfig>(LabelingJobHumanTaskConfig.fromMap((map['humanTaskConfig'] as Map).cast<String, dynamic>())),
      inputConfig: map['inputConfig'] == null ? null : pulumi.Output.create<LabelingJobInputConfig>(LabelingJobInputConfig.fromMap((map['inputConfig'] as Map).cast<String, dynamic>())),
      jobReferenceCode: map['jobReferenceCode'] == null ? null : pulumi.Output.create<String>(map['jobReferenceCode'] as String),
      labelAttributeName: map['labelAttributeName'] == null ? null : pulumi.Output.create<String>(map['labelAttributeName'] as String),
      labelCategoryConfigS3Uri: map['labelCategoryConfigS3Uri'] == null ? null : pulumi.Output.create<String>(map['labelCategoryConfigS3Uri'] as String),
      labelCounters: map['labelCounters'] == null ? null : pulumi.Output.create<List<LabelingJobLabelCounter>>(pulumi.Input.decodeList<LabelingJobLabelCounter>(map['labelCounters'], (value) => LabelingJobLabelCounter.fromMap((value as Map).cast<String, dynamic>()))),
      labelingJobAlgorithmsConfig: map['labelingJobAlgorithmsConfig'] == null ? null : pulumi.Output.create<LabelingJobLabelingJobAlgorithmsConfig>(LabelingJobLabelingJobAlgorithmsConfig.fromMap((map['labelingJobAlgorithmsConfig'] as Map).cast<String, dynamic>())),
      labelingJobArn: map['labelingJobArn'] == null ? null : pulumi.Output.create<String>(map['labelingJobArn'] as String),
      labelingJobName: map['labelingJobName'] == null ? null : pulumi.Output.create<String>(map['labelingJobName'] as String),
      labelingJobStatus: map['labelingJobStatus'] == null ? null : pulumi.Output.create<String>(map['labelingJobStatus'] as String),
      outputConfig: map['outputConfig'] == null ? null : pulumi.Output.create<LabelingJobOutputConfig>(LabelingJobOutputConfig.fromMap((map['outputConfig'] as Map).cast<String, dynamic>())),
      region: map['region'] == null ? null : pulumi.Output.create<String>(map['region'] as String),
      roleArn: map['roleArn'] == null ? null : pulumi.Output.create<String>(map['roleArn'] as String),
      stoppingConditions: map['stoppingConditions'] == null ? null : pulumi.Output.create<List<LabelingJobStoppingCondition>>(pulumi.Input.decodeList<LabelingJobStoppingCondition>(map['stoppingConditions'], (value) => LabelingJobStoppingCondition.fromMap((value as Map).cast<String, dynamic>()))),
      tags: map['tags'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tags'] as Map).cast<String, String>()),
      tagsAll: map['tagsAll'] == null ? null : pulumi.Output.create<Map<String, String>>((map['tagsAll'] as Map).cast<String, String>()),
    );
  }
}

