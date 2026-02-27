// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../task_execution_spec/task_execution_spec.dart';
import '../task_notebook/task_notebook.dart';
import '../task_spark/task_spark.dart';
import '../task_trigger_spec/task_trigger_spec.dart';

/// The set of arguments for Task.
class TaskArgs {
  /// User-provided description of the task.
  final pulumi.Input<String>? description;

  /// User friendly display name.
  final pulumi.Input<String>? displayName;

  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskExecutionSpec> executionSpec;

  /// User-defined labels for the task.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field `effective_labels` for all of the labels present on the resource.
  final pulumi.Input<Map<String, String>>? labels;

  /// The lake in which the task will be created in.
  final pulumi.Input<String>? lake;

  /// The location in which the task will be created in.
  final pulumi.Input<String>? location;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskNotebook>? notebook;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final pulumi.Input<String>? project;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final pulumi.Input<TaskSpark>? spark;

  /// The task Id of the task.
  final pulumi.Input<String>? taskId;

  /// Configuration for the cluster
  /// Structure is documented below.
  final pulumi.Input<TaskTriggerSpec> triggerSpec;

  TaskArgs({
    this.description,
    this.displayName,
    required this.executionSpec,
    this.labels,
    this.lake,
    this.location,
    this.notebook,
    this.project,
    this.spark,
    this.taskId,
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
    map['executionSpec'] =
        pulumi.Input.mapInputValue<TaskExecutionSpec, Map<String, dynamic>>(
            executionSpec, (value) => value.toMap());
    final labelsValue = labels;
    if (labelsValue != null) {
      map['labels'] = labelsValue;
    }
    final lakeValue = lake;
    if (lakeValue != null) {
      map['lake'] = lakeValue;
    }
    final locationValue = location;
    if (locationValue != null) {
      map['location'] = locationValue;
    }
    final notebookValue = notebook;
    if (notebookValue != null) {
      map['notebook'] = pulumi.Input.mapOptionalInputValue<TaskNotebook,
          Map<String, dynamic>>(notebookValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sparkValue = spark;
    if (sparkValue != null) {
      map['spark'] =
          pulumi.Input.mapOptionalInputValue<TaskSpark, Map<String, dynamic>>(
              sparkValue, (value) => value.toMap());
    }
    final taskIdValue = taskId;
    if (taskIdValue != null) {
      map['taskId'] = taskIdValue;
    }
    map['triggerSpec'] =
        pulumi.Input.mapInputValue<TaskTriggerSpec, Map<String, dynamic>>(
            triggerSpec, (value) => value.toMap());
    return map;
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      description: pulumi.Input.asOptionalInput<String>(map['description']),
      displayName: pulumi.Input.asOptionalInput<String>(map['displayName']),
      executionSpec:
          pulumi.Input.asInput<TaskExecutionSpec>(map['executionSpec']),
      labels: pulumi.Input.asOptionalInput<Map<String, String>>(map['labels']),
      lake: pulumi.Input.asOptionalInput<String>(map['lake']),
      location: pulumi.Input.asOptionalInput<String>(map['location']),
      notebook: pulumi.Input.asOptionalInput<TaskNotebook>(map['notebook']),
      project: pulumi.Input.asOptionalInput<String>(map['project']),
      spark: pulumi.Input.asOptionalInput<TaskSpark>(map['spark']),
      taskId: pulumi.Input.asOptionalInput<String>(map['taskId']),
      triggerSpec: pulumi.Input.asInput<TaskTriggerSpec>(map['triggerSpec']),
    );
  }
}
