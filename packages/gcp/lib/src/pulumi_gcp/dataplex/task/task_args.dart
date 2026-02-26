// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import '../task_execution_spec/task_execution_spec.dart';
import '../task_notebook/task_notebook.dart';
import '../task_spark/task_spark.dart';
import '../task_trigger_spec/task_trigger_spec.dart';

/// The set of arguments for Task.
class TaskArgs {
  /// User-provided description of the task.
  final Input<String>? description;

  /// User friendly display name.
  final Input<String>? displayName;

  /// Configuration for the cluster
  /// Structure is documented below.
  final Input<TaskExecutionSpec> executionSpec;

  /// User-defined labels for the task.
  ///
  /// **Note**: This field is non-authoritative, and will only manage the labels present in your configuration.
  /// Please refer to the field <span pulumi-lang-nodejs="`effectiveLabels`" pulumi-lang-dotnet="`EffectiveLabels`" pulumi-lang-go="`effectiveLabels`" pulumi-lang-python="`effective_labels`" pulumi-lang-yaml="`effectiveLabels`" pulumi-lang-java="`effectiveLabels`">`effective_labels`</span> for all of the labels present on the resource.
  final Input<Map<String, String>>? labels;

  /// The lake in which the task will be created in.
  final Input<String>? lake;

  /// The location in which the task will be created in.
  final Input<String>? location;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final Input<TaskNotebook>? notebook;

  /// The ID of the project in which the resource belongs.
  /// If it is not provided, the provider project is used.
  final Input<String>? project;

  /// A service with manual scaling runs continuously, allowing you to perform complex initialization and rely on the state of its memory over time.
  /// Structure is documented below.
  final Input<TaskSpark>? spark;

  /// The task Id of the task.
  final Input<String>? taskId;

  /// Configuration for the cluster
  /// Structure is documented below.
  final Input<TaskTriggerSpec> triggerSpec;

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
        Input.mapInputValue<TaskExecutionSpec, Map<String, dynamic>>(
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
      map['notebook'] =
          Input.mapOptionalInputValue<TaskNotebook, Map<String, dynamic>>(
              notebookValue, (value) => value.toMap());
    }
    final projectValue = project;
    if (projectValue != null) {
      map['project'] = projectValue;
    }
    final sparkValue = spark;
    if (sparkValue != null) {
      map['spark'] =
          Input.mapOptionalInputValue<TaskSpark, Map<String, dynamic>>(
              sparkValue, (value) => value.toMap());
    }
    final taskIdValue = taskId;
    if (taskIdValue != null) {
      map['taskId'] = taskIdValue;
    }
    map['triggerSpec'] =
        Input.mapInputValue<TaskTriggerSpec, Map<String, dynamic>>(
            triggerSpec, (value) => value.toMap());
    return map;
  }

  factory TaskArgs.fromMap(Map<String, dynamic> map) {
    return TaskArgs(
      description: Input.asOptionalInput<String>(map['description']),
      displayName: Input.asOptionalInput<String>(map['displayName']),
      executionSpec: Input.asInput<TaskExecutionSpec>(map['executionSpec']),
      labels: Input.asOptionalInput<Map<String, String>>(map['labels']),
      lake: Input.asOptionalInput<String>(map['lake']),
      location: Input.asOptionalInput<String>(map['location']),
      notebook: Input.asOptionalInput<TaskNotebook>(map['notebook']),
      project: Input.asOptionalInput<String>(map['project']),
      spark: Input.asOptionalInput<TaskSpark>(map['spark']),
      taskId: Input.asOptionalInput<String>(map['taskId']),
      triggerSpec: Input.asInput<TaskTriggerSpec>(map['triggerSpec']),
    );
  }
}
