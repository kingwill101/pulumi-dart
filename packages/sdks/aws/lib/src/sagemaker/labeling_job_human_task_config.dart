// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'labeling_job_human_task_config_annotation_consolidation_config.dart';
import 'labeling_job_human_task_config_public_workforce_task_price.dart';
import 'labeling_job_human_task_config_ui_config.dart';

class LabelingJobHumanTaskConfig {
  /// How labels are consolidated across human workers. Fields are documented below.
  final pulumi.Input<LabelingJobHumanTaskConfigAnnotationConsolidationConfig>? annotationConsolidationConfig;
  /// Maximum number of data objects that can be labeled by human workers at the same time.
  final pulumi.Input<int>? maxConcurrentTaskCount;
  /// Number of human workers that will label an object.
  final pulumi.Input<int> numberOfHumanWorkersPerDataObject;
  /// ARN of a Lambda function that is run before a data object is sent to a human worker.
  final pulumi.Input<String>? preHumanTaskLambdaArn;
  /// Price to pay for each task performed by an Amazon Mechanical Turk worker. Fields are documented below.
  final pulumi.Input<LabelingJobHumanTaskConfigPublicWorkforceTaskPrice>? publicWorkforceTaskPrice;
  /// length of time that a task remains available for labeling by human workers.
  final pulumi.Input<int>? taskAvailabilityLifetimeInSeconds;
  /// Description of the task.
  final pulumi.Input<String> taskDescription;
  /// Keywords used to describe the task.
  final pulumi.Input<List<String>>? taskKeywords;
  /// Amount of time that a worker has to complete a task.
  final pulumi.Input<int> taskTimeLimitInSeconds;
  /// Title for the task.
  final pulumi.Input<String> taskTitle;
  /// Information about the user interface that workers use to complete the labeling task. Fields are documented below.
  final pulumi.Input<LabelingJobHumanTaskConfigUiConfig> uiConfig;
  /// ARN of the work team assigned to complete the tasks.
  final pulumi.Input<String> workteamArn;

  /// Creates a new [LabelingJobHumanTaskConfig].
  /// [annotationConsolidationConfig] How labels are consolidated across human workers. Fields are documented below.
  /// [maxConcurrentTaskCount] Maximum number of data objects that can be labeled by human workers at the same time.
  /// [numberOfHumanWorkersPerDataObject] Number of human workers that will label an object.
  /// [preHumanTaskLambdaArn] ARN of a Lambda function that is run before a data object is sent to a human worker.
  /// [publicWorkforceTaskPrice] Price to pay for each task performed by an Amazon Mechanical Turk worker. Fields are documented below.
  /// [taskAvailabilityLifetimeInSeconds] length of time that a task remains available for labeling by human workers.
  /// [taskDescription] Description of the task.
  /// [taskKeywords] Keywords used to describe the task.
  /// [taskTimeLimitInSeconds] Amount of time that a worker has to complete a task.
  /// [taskTitle] Title for the task.
  /// [uiConfig] Information about the user interface that workers use to complete the labeling task. Fields are documented below.
  /// [workteamArn] ARN of the work team assigned to complete the tasks.
  LabelingJobHumanTaskConfig({
    this.annotationConsolidationConfig,
    this.maxConcurrentTaskCount,
    required this.numberOfHumanWorkersPerDataObject,
    this.preHumanTaskLambdaArn,
    this.publicWorkforceTaskPrice,
    this.taskAvailabilityLifetimeInSeconds,
    required this.taskDescription,
    this.taskKeywords,
    required this.taskTimeLimitInSeconds,
    required this.taskTitle,
    required this.uiConfig,
    required this.workteamArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'annotationConsolidationConfig': ?pulumi.Input.mapOptionalInputValue<LabelingJobHumanTaskConfigAnnotationConsolidationConfig, Map<String, dynamic>>(annotationConsolidationConfig, (value) => value.toMap()),
      'maxConcurrentTaskCount': ?maxConcurrentTaskCount,
      'numberOfHumanWorkersPerDataObject': numberOfHumanWorkersPerDataObject,
      'preHumanTaskLambdaArn': ?preHumanTaskLambdaArn,
      'publicWorkforceTaskPrice': ?pulumi.Input.mapOptionalInputValue<LabelingJobHumanTaskConfigPublicWorkforceTaskPrice, Map<String, dynamic>>(publicWorkforceTaskPrice, (value) => value.toMap()),
      'taskAvailabilityLifetimeInSeconds': ?taskAvailabilityLifetimeInSeconds,
      'taskDescription': taskDescription,
      'taskKeywords': ?taskKeywords,
      'taskTimeLimitInSeconds': taskTimeLimitInSeconds,
      'taskTitle': taskTitle,
      'uiConfig': pulumi.Input.mapInputValue<LabelingJobHumanTaskConfigUiConfig, Map<String, dynamic>>(uiConfig, (value) => value.toMap()),
      'workteamArn': workteamArn,
    };
  }

  factory LabelingJobHumanTaskConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfig(
      annotationConsolidationConfig: map['annotationConsolidationConfig'] == null ? null : (LabelingJobHumanTaskConfigAnnotationConsolidationConfig.fromMap((map['annotationConsolidationConfig'] as Map).cast<String, dynamic>())).input(),
      maxConcurrentTaskCount: map['maxConcurrentTaskCount'] == null ? null : (map['maxConcurrentTaskCount'] as int).input(),
      numberOfHumanWorkersPerDataObject: (map['numberOfHumanWorkersPerDataObject'] as int).input(),
      preHumanTaskLambdaArn: map['preHumanTaskLambdaArn'] == null ? null : (map['preHumanTaskLambdaArn'] as String).input(),
      publicWorkforceTaskPrice: map['publicWorkforceTaskPrice'] == null ? null : (LabelingJobHumanTaskConfigPublicWorkforceTaskPrice.fromMap((map['publicWorkforceTaskPrice'] as Map).cast<String, dynamic>())).input(),
      taskAvailabilityLifetimeInSeconds: map['taskAvailabilityLifetimeInSeconds'] == null ? null : (map['taskAvailabilityLifetimeInSeconds'] as int).input(),
      taskDescription: (map['taskDescription'] as String).input(),
      taskKeywords: map['taskKeywords'] == null ? null : ((map['taskKeywords'] as List).cast<String>()).input(),
      taskTimeLimitInSeconds: (map['taskTimeLimitInSeconds'] as int).input(),
      taskTitle: (map['taskTitle'] as String).input(),
      uiConfig: (LabelingJobHumanTaskConfigUiConfig.fromMap((map['uiConfig'] as Map).cast<String, dynamic>())).input(),
      workteamArn: (map['workteamArn'] as String).input(),
    );
  }
}

