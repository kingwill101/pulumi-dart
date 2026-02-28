// ignore_for_file: unused_element, unnecessary_cast

import 'task_spec.dart';

/// TaskTemplateSpec describes the data a task should have when created from a template.
class TaskTemplateSpec {
  /// Optional. Specification of the desired behavior of the task.
  final TaskSpec? spec;

  /// Creates a new [TaskTemplateSpec].
  /// [spec] Optional. Specification of the desired behavior of the task.
  TaskTemplateSpec({
    this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'spec': ?spec == null ? null : spec!.toMap(),
    };
  }

  factory TaskTemplateSpec.fromMap(Map<String, dynamic> map) {
    return TaskTemplateSpec(
      spec: map['spec'] == null ? null : TaskSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

