// ignore_for_file: unused_element, unnecessary_cast

import '../labeling_job_human_task_config_annotation_consolidation_config/labeling_job_human_task_config_annotation_consolidation_config.dart';
import '../labeling_job_human_task_config_public_workforce_task_price/labeling_job_human_task_config_public_workforce_task_price.dart';
import '../labeling_job_human_task_config_ui_config/labeling_job_human_task_config_ui_config.dart';

class LabelingJobHumanTaskConfig {
  /// How labels are consolidated across human workers. Fields are documented below.
  final LabelingJobHumanTaskConfigAnnotationConsolidationConfig?
      annotationConsolidationConfig;

  /// Maximum number of data objects that can be labeled by human workers at the same time.
  final int? maxConcurrentTaskCount;

  /// Number of human workers that will label an object.
  final int numberOfHumanWorkersPerDataObject;

  /// ARN of a Lambda function that is run before a data object is sent to a human worker.
  final String? preHumanTaskLambdaArn;

  /// Price to pay for each task performed by an Amazon Mechanical Turk worker. Fields are documented below.
  final LabelingJobHumanTaskConfigPublicWorkforceTaskPrice?
      publicWorkforceTaskPrice;

  /// length of time that a task remains available for labeling by human workers.
  final int? taskAvailabilityLifetimeInSeconds;

  /// Description of the task.
  final String taskDescription;

  /// Keywords used to describe the task.
  final List<String>? taskKeywords;

  /// Amount of time that a worker has to complete a task.
  final int taskTimeLimitInSeconds;

  /// Title for the task.
  final String taskTitle;

  /// Information about the user interface that workers use to complete the labeling task. Fields are documented below.
  final LabelingJobHumanTaskConfigUiConfig uiConfig;

  /// ARN of the work team assigned to complete the tasks.
  final String workteamArn;

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
    final map = <String, dynamic>{};
    final annotationConsolidationConfigValue = annotationConsolidationConfig;
    if (annotationConsolidationConfigValue != null) {
      map['annotationConsolidationConfig'] =
          annotationConsolidationConfigValue.toMap();
    }
    final maxConcurrentTaskCountValue = maxConcurrentTaskCount;
    if (maxConcurrentTaskCountValue != null) {
      map['maxConcurrentTaskCount'] = maxConcurrentTaskCountValue;
    }
    map['numberOfHumanWorkersPerDataObject'] =
        numberOfHumanWorkersPerDataObject;
    final preHumanTaskLambdaArnValue = preHumanTaskLambdaArn;
    if (preHumanTaskLambdaArnValue != null) {
      map['preHumanTaskLambdaArn'] = preHumanTaskLambdaArnValue;
    }
    final publicWorkforceTaskPriceValue = publicWorkforceTaskPrice;
    if (publicWorkforceTaskPriceValue != null) {
      map['publicWorkforceTaskPrice'] = publicWorkforceTaskPriceValue.toMap();
    }
    final taskAvailabilityLifetimeInSecondsValue =
        taskAvailabilityLifetimeInSeconds;
    if (taskAvailabilityLifetimeInSecondsValue != null) {
      map['taskAvailabilityLifetimeInSeconds'] =
          taskAvailabilityLifetimeInSecondsValue;
    }
    map['taskDescription'] = taskDescription;
    final taskKeywordsValue = taskKeywords;
    if (taskKeywordsValue != null) {
      map['taskKeywords'] = taskKeywordsValue;
    }
    map['taskTimeLimitInSeconds'] = taskTimeLimitInSeconds;
    map['taskTitle'] = taskTitle;
    map['uiConfig'] = uiConfig.toMap();
    map['workteamArn'] = workteamArn;
    return map;
  }

  factory LabelingJobHumanTaskConfig.fromMap(Map<String, dynamic> map) {
    return LabelingJobHumanTaskConfig(
      annotationConsolidationConfig:
          map['annotationConsolidationConfig'] == null
              ? null
              : LabelingJobHumanTaskConfigAnnotationConsolidationConfig.fromMap(
                  (map['annotationConsolidationConfig'] as Map)
                      .cast<String, dynamic>()),
      maxConcurrentTaskCount: map['maxConcurrentTaskCount'] == null
          ? null
          : map['maxConcurrentTaskCount'] as int,
      numberOfHumanWorkersPerDataObject:
          map['numberOfHumanWorkersPerDataObject'] as int,
      preHumanTaskLambdaArn: map['preHumanTaskLambdaArn'] == null
          ? null
          : map['preHumanTaskLambdaArn'] as String,
      publicWorkforceTaskPrice: map['publicWorkforceTaskPrice'] == null
          ? null
          : LabelingJobHumanTaskConfigPublicWorkforceTaskPrice.fromMap(
              (map['publicWorkforceTaskPrice'] as Map).cast<String, dynamic>()),
      taskAvailabilityLifetimeInSeconds:
          map['taskAvailabilityLifetimeInSeconds'] == null
              ? null
              : map['taskAvailabilityLifetimeInSeconds'] as int,
      taskDescription: map['taskDescription'] as String,
      taskKeywords: map['taskKeywords'] == null
          ? null
          : (map['taskKeywords'] as List).cast<String>(),
      taskTimeLimitInSeconds: map['taskTimeLimitInSeconds'] as int,
      taskTitle: map['taskTitle'] as String,
      uiConfig: LabelingJobHumanTaskConfigUiConfig.fromMap(
          (map['uiConfig'] as Map).cast<String, dynamic>()),
      workteamArn: map['workteamArn'] as String,
    );
  }
}
