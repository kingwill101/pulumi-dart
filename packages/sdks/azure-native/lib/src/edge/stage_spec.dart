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
  StageSpec({
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
      name: (map['name'] as String).input(),
      specification: map['specification'] == null ? null : (map['specification']!).input(),
      taskOption: map['taskOption'] == null ? null : (TaskOption.fromMap((map['taskOption']! as Map).cast<String, dynamic>())).input(),
      tasks: map['tasks'] == null ? null : (pulumi.Input.decodeList<TaskSpec>(map['tasks']!, (value) => TaskSpec.fromMap((value as Map).cast<String, dynamic>()))).input(),
    );
  }
}

