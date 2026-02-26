// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'google_cloud_dataplex_v1_task_execution_spec.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec.dart';

/// The set of arguments for Task.
class TaskArgs4 {
  /// Optional. Description of the task.
  final Input<String>? description;

  /// Optional. User friendly display name.
  final Input<String>? displayName;

  /// Spec related to how a task is executed.
  final Input<GoogleCloudDataplexV1TaskExecutionSpec> executionSpec;

  /// Optional. User-defined labels for the task.
  final Input<Map<String, String>>? labels;
  final Input<String> lakeId;
  final Input<String>? location;

  /// Config related to running scheduled Notebooks.
  final Input<GoogleCloudDataplexV1TaskNotebookTaskConfig>? notebook;
  final Input<String>? project;

  /// Config related to running custom Spark tasks.
  final Input<GoogleCloudDataplexV1TaskSparkTaskConfig>? spark;

  /// Required. Task identifier.
  final Input<String> taskId;

  /// Spec related to how often and when a task should be triggered.
  final Input<GoogleCloudDataplexV1TaskTriggerSpec> triggerSpec;

  TaskArgs4({
    this.description,
    this.displayName,
    required this.executionSpec,
    this.labels,
    required this.lakeId,
    this.location,
    this.notebook,
    this.project,
    this.spark,
    required this.taskId,
    required this.triggerSpec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final descriptionValue = description;
    if (descriptionValue != null) {
      map['description'] = descriptionValue;
    }
    final displayNameValue = displayName;
    if (displayNameValue != null) {
      map['displayName'] = displayNameValue;
    }
    map['executionSpec'] = Input.mapInputValue<
        GoogleCloudDataplexV1TaskExecutionSpec,
        Map<String, dynamic>>(executionSpec, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    map['lakeId'] = lakeId;
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final notebookValue = notebook;
    if (notebookValue != null) {
      map['notebook'] = Input.mapOptionalInputValue<
          GoogleCloudDataplexV1TaskNotebookTaskConfig,
          Map<String, dynamic>>(notebookValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sparkValue = spark;
    if (sparkValue != null) {
      map['spark'] = Input.mapOptionalInputValue<
          GoogleCloudDataplexV1TaskSparkTaskConfig,
          Map<String, dynamic>>(sparkValue, (value) => value.toMap());
    }
    map['taskId'] = taskId;
    map['triggerSpec'] = Input.mapInputValue<
        GoogleCloudDataplexV1TaskTriggerSpec,
        Map<String, dynamic>>(triggerSpec, (value) => value.toMap());
    return map;
  }

  factory TaskArgs4.fromMap(Map<String, dynamic> map) {
    return TaskArgs4(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      executionSpec: Input.asInput<GoogleCloudDataplexV1TaskExecutionSpec>(
          map['executionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: Input.asInput<String>(map['lakeId']),
      location: Input.asOptionalInput<String>(map['location']),
      notebook:
          Input.asOptionalInput<GoogleCloudDataplexV1TaskNotebookTaskConfig>(
              map['notebook']),
      project: Input.asOptionalInput<String>(map['project']),
      spark: Input.asOptionalInput<GoogleCloudDataplexV1TaskSparkTaskConfig>(
          map['spark']),
      taskId: Input.asInput<String>(map['taskId']),
      triggerSpec: Input.asInput<GoogleCloudDataplexV1TaskTriggerSpec>(
          map['triggerSpec']),
    );
  }
}
