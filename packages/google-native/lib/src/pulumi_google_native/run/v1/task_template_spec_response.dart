// ignore_for_file: unused_element, unnecessary_cast

import 'task_spec_response_run_v1.dart';

/// TaskTemplateSpec describes the data a task should have when created from a template.
class TaskTemplateSpecResponse {
  /// Optional. Specification of the desired behavior of the task.
  final TaskSpecResponseRunV1 spec;

  TaskTemplateSpecResponse({
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['spec'] = spec.toMap();
    return map;
  }

  factory TaskTemplateSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskTemplateSpecResponse(
      spec: TaskSpecResponseRunV1.fromMap(
          (map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}
