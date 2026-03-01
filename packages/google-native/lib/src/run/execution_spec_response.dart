// ignore_for_file: unused_element, unnecessary_cast

import 'task_template_spec_response.dart';

/// ExecutionSpec describes how the execution will look.
class ExecutionSpecResponse {
  /// Optional. Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed, i.e. when the work left to do is less than max parallelism.
  final int parallelism;

  /// Optional. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  final int taskCount;

  /// Optional. The template used to create tasks for this execution.
  final TaskTemplateSpecResponse template;

  /// Creates a new [ExecutionSpecResponse].
  /// [parallelism] Optional. Specifies the maximum desired number of tasks the execution should run at given time. Must be <= task_count. When the job is run, if this field is 0 or unset, the maximum possible value will be used for that execution. The actual number of tasks running in steady state will be less than this number when there are fewer tasks waiting to be completed, i.e. when the work left to do is less than max parallelism.
  /// [taskCount] Optional. Specifies the desired number of tasks the execution should run. Setting to 1 means that parallelism is limited to 1 and the success of that task signals the success of the execution. Defaults to 1.
  /// [template] Optional. The template used to create tasks for this execution.
  ExecutionSpecResponse({
    required this.parallelism,
    required this.taskCount,
    required this.template,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'parallelism': parallelism,
      'taskCount': taskCount,
      'template': template.toMap(),
    };
  }

  factory ExecutionSpecResponse.fromMap(Map<String, dynamic> map) {
    return ExecutionSpecResponse(
      parallelism: map['parallelism'] as int,
      taskCount: map['taskCount'] as int,
      template: TaskTemplateSpecResponse.fromMap(
        (map['template'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
