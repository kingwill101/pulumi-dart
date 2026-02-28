// ignore_for_file: unused_element, unnecessary_cast

import 'task_template_spec.dart';

/// ExecutionSpec describes how the execution will look.
class ExecutionSpec {
  /// Optional. Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed, i.e. when the work left to do is less than max parallelism.
  final int? parallelism;

  /// Optional. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  final int? taskCount;

  /// Optional. The template used to create tasks for this execution.
  final TaskTemplateSpec? template;

  /// Creates a new [ExecutionSpec].
  /// [parallelism] Optional. Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed, i.e. when the work left to do is less than max parallelism.
  /// [taskCount] Optional. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  /// [template] Optional. The template used to create tasks for this execution.
  ExecutionSpec({
    this.parallelism,
    this.taskCount,
    this.template,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final parallelismValue = parallelism;
    if (parallelismValue != null) {
      map['parallelism'] = parallelismValue;
    }
    final taskCountValue = taskCount;
    if (taskCountValue != null) {
      map['taskCount'] = taskCountValue;
    }
    final templateValue = template;
    if (templateValue != null) {
      map['template'] = templateValue.toMap();
    }
    return map;
  }

  factory ExecutionSpec.fromMap(Map<String, dynamic> map) {
    return ExecutionSpec(
      parallelism:
          map['parallelism'] == null ? null : map['parallelism'] as int,
      taskCount: map['taskCount'] == null ? null : map['taskCount'] as int,
      template: map['template'] == null
          ? null
          : TaskTemplateSpec.fromMap(
              (map['template'] as Map).cast<String, dynamic>()),
    );
  }
}
