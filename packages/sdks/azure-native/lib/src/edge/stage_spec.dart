// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_option.dart';
import 'task_spec.dart';

/// Stage Properties
class StageSpec {
  /// Name of Stage
  final pulumi.Input<String> name;
  /// Stage specification
  final pulumi.Input<dynamic>? specification;
  /// Task option for the stage
  final pulumi.Input<TaskOption>? taskOption;
  /// List of tasks in the stage
  final pulumi.Input<List<TaskSpec>>? tasks;

  /// Creates a new [StageSpec].
  /// [name] Name of Stage
  /// [specification] Stage specification
  /// [taskOption] Task option for the stage
  /// [tasks] List of tasks in the stage
  const StageSpec({
    required this.name,
    this.specification,
    this.taskOption,
    this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'specification': ?specification,
      'taskOption': ?pulumi.Input.mapOptionalInputValue<TaskOption, Map<String, dynamic>>(taskOption, (value) => value.toMap()),
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<TaskSpec>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<TaskSpec, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StageSpec.fromMap(Map<String, dynamic> map) {
    return StageSpec(
      name: pulumi.Input.fromValue(map['name'] as String),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      taskOption: (() { final guardedValue = map['taskOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskOption.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskSpec>(guardedValue, (value) => TaskSpec.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
