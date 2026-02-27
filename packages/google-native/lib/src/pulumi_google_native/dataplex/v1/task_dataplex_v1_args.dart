// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_execution_spec.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec.dart';

/// The set of arguments for Task.
class TaskDataplexV1Args {
  /// Optional. Description of the task.
  final pulumi.Input<String>? description;

  /// Optional. User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Spec related to how a task is executed.
  final pulumi.Input<GoogleCloudDataplexV1TaskExecutionSpec> executionSpec;

  /// Optional. User-defined labels for the task.
  final pulumi.Input<Map<String, String>>? labels;
  final pulumi.Input<String> lakeId;
  final pulumi.Input<String>? location;

  /// Config related to running scheduled Notebooks.
  final pulumi.Input<GoogleCloudDataplexV1TaskNotebookTaskConfig>? notebook;
  final pulumi.Input<String>? project;

  /// Config related to running custom Spark tasks.
  final pulumi.Input<GoogleCloudDataplexV1TaskSparkTaskConfig>? spark;

  /// Required. Task identifier.
  final pulumi.Input<String> taskId;

  /// Spec related to how often and when a task should be triggered.
  final pulumi.Input<GoogleCloudDataplexV1TaskTriggerSpec> triggerSpec;

  TaskDataplexV1Args({
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
    map['executionSpec'] = pulumi.Input.mapInputValue<
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
      map['notebook'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1TaskNotebookTaskConfig,
          Map<String, dynamic>>(notebookValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sparkValue = spark;
    if (sparkValue != null) {
      map['spark'] = pulumi.Input.mapOptionalInputValue<
          GoogleCloudDataplexV1TaskSparkTaskConfig,
          Map<String, dynamic>>(sparkValue, (value) => value.toMap());
    }
    map['taskId'] = taskId;
    map['triggerSpec'] = pulumi.Input.mapInputValue<
        GoogleCloudDataplexV1TaskTriggerSpec,
        Map<String, dynamic>>(triggerSpec, (value) => value.toMap());
    return map;
  }

  factory TaskDataplexV1Args.fromMap(Map<String, dynamic> map) {
    return TaskDataplexV1Args(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      executionSpec:
          pulumi.Input.asInput<GoogleCloudDataplexV1TaskExecutionSpec>(
              map['executionSpec']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lakeId: pulumi.Input.asInput<String>(map['lakeId']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      notebook: pulumi.Input.asOptionalInput<
          GoogleCloudDataplexV1TaskNotebookTaskConfig>(map['notebook']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spark: pulumi.Input.asOptionalInput<
          GoogleCloudDataplexV1TaskSparkTaskConfig>(map['spark']),
      taskId: pulumi.Input.asInput<String>(map['taskId']),
      triggerSpec: pulumi.Input.asInput<GoogleCloudDataplexV1TaskTriggerSpec>(
          map['triggerSpec']),
    );
  }
}
