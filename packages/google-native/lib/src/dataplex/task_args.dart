// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'google_cloud_dataplex_v1_task_execution_spec.dart';
import 'google_cloud_dataplex_v1_task_notebook_task_config.dart';
import 'google_cloud_dataplex_v1_task_spark_task_config.dart';
import 'google_cloud_dataplex_v1_task_trigger_spec.dart';

/// {@template pulumi_dataplex_v1_task_args_doc}
/// The set of arguments for Task.
/// {@endtemplate}
/// {@macro pulumi_dataplex_v1_task_args_doc}
class TaskArgs {
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

  /// Creates a new [TaskArgs].
  /// [description] Optional. Description of the task.
  /// [displayName] Optional. User friendly display name.
  /// [executionSpec] Spec related to how a task is executed.
  /// [labels] Optional. User-defined labels for the task.
  /// [lakeId] Required.
  /// [location] Optional.
  /// [notebook] Config related to running scheduled Notebooks.
  /// [project] Optional.
  /// [spark] Config related to running custom Spark tasks.
  /// [taskId] Required. Task identifier.
  /// [triggerSpec] Spec related to how often and when a task should be triggered.
  TaskArgs({
    String? description,
    String? displayName,
    required GoogleCloudDataplexV1TaskExecutionSpec executionSpec,
    Map<String, String>? labels,
    required String lakeId,
    String? location,
    GoogleCloudDataplexV1TaskNotebookTaskConfig? notebook,
    String? project,
    GoogleCloudDataplexV1TaskSparkTaskConfig? spark,
    required String taskId,
    required GoogleCloudDataplexV1TaskTriggerSpec triggerSpec,
  })  : description = pulumi.Input.asOptionalInput<String>(description),
        displayName = pulumi.Input.asOptionalInput<String>(displayName),
        executionSpec =
            pulumi.Input.asInput<GoogleCloudDataplexV1TaskExecutionSpec>(
                executionSpec),
        labels = pulumi.Input.asOptionalInput<Map<String, String>>(labels),
        lakeId = pulumi.Input.asInput<String>(lakeId),
        location = pulumi.Input.asOptionalInput<String>(location),
        notebook = pulumi.Input.asOptionalInput<
            GoogleCloudDataplexV1TaskNotebookTaskConfig>(notebook),
        project = pulumi.Input.asOptionalInput<String>(project),
        spark = pulumi.Input.asOptionalInput<
            GoogleCloudDataplexV1TaskSparkTaskConfig>(spark),
        taskId = pulumi.Input.asInput<String>(taskId),
        triggerSpec =
            pulumi.Input.asInput<GoogleCloudDataplexV1TaskTriggerSpec>(
                triggerSpec);

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

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      description:
          map['description'] == null ? null : map['description'] as String,
      displayName:
          map['displayName'] == null ? null : map['displayName'] as String,
      executionSpec: GoogleCloudDataplexV1TaskExecutionSpec.fromMap(
          (map['executionSpec'] as Map).cast<String, dynamic>()),
      labels: map['labels'] == null
          ? null
          : (map['labels'] as Map).cast<String, String>(),
      lakeId: map['lakeId'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      notebook: map['notebook'] == null
          ? null
          : GoogleCloudDataplexV1TaskNotebookTaskConfig.fromMap(
              (map['notebook'] as Map).cast<String, dynamic>()),
      project: map['project'] == null ? null : map['project'] as String,
      spark: map['spark'] == null
          ? null
          : GoogleCloudDataplexV1TaskSparkTaskConfig.fromMap(
              (map['spark'] as Map).cast<String, dynamic>()),
      taskId: map['taskId'] as String,
      triggerSpec: GoogleCloudDataplexV1TaskTriggerSpec.fromMap(
          (map['triggerSpec'] as Map).cast<String, dynamic>()),
    );
  }
}
