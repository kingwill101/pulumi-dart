// ignore_for_file: unused_element, unnecessary_cast

import 'task_spec_response.dart';

/// TaskTemplateSpec describes the data a task should have when created from a template.
class TaskTemplateSpecResponse {
  /// Optional. Specification of the desired behavior of the task.
  final TaskSpecResponse spec;

  /// Creates a new [TaskTemplateSpecResponse].
  /// [spec] Optional. Specification of the desired behavior of the task.
  TaskTemplateSpecResponse({required this.spec});

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'spec': spec.toMap()};
  }

  factory TaskTemplateSpecResponse.fromMap(Map<String, dynamic> map) {
    return TaskTemplateSpecResponse(
      spec: TaskSpecResponse.fromMap(
        (map['spec'] as Map).cast<String, dynamic>(),
      ),
    );
  }
}
