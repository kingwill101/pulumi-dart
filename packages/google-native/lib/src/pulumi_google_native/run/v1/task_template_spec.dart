// ignore_for_file: unused_element, unnecessary_cast

import 'task_spec2.dart';

/// TaskTemplateSpec describes the data a task should have when created from a template.
class TaskTemplateSpec {
  /// Optional. Specification of the desired behavior of the task.
  final TaskSpec2? spec;

  TaskTemplateSpec({
    this.spec,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final specValue = spec;
    if (specValue != null) {
      map['spec'] = specValue.toMap();
    }
    return map;
  }

  factory TaskTemplateSpec.fromMap(Map<String, dynamic> map) {
    return TaskTemplateSpec(
      spec: map['spec'] == null
          ? null
          : TaskSpec2.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}
