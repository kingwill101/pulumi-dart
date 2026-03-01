// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_option.dart';
import 'task_spec.dart';

/// Stage Properties
class StageSpec {
  /// Name of Stage
  final String name;
  /// Stage specification
  final dynamic specification;
  /// Task option for the stage
  final TaskOption? taskOption;
  /// List of tasks in the stage
  final List<TaskSpec>? tasks;

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
      'taskOption': ?taskOption == null ? null : taskOption!.toMap(),
      'tasks': ?tasks == null ? null : pulumi.Input.encodeList<TaskSpec, Map<String, dynamic>>(tasks!, (value) => value.toMap()),
    };
  }

  factory StageSpec.fromMap(Map<String, dynamic> map) {
    return StageSpec(
      name: map['name'] as String,
      specification: map['specification'] == null ? null : map['specification'],
      taskOption: map['taskOption'] == null ? null : TaskOption.fromMap((map['taskOption'] as Map).cast<String, dynamic>()),
      tasks: map['tasks'] == null ? null : pulumi.Input.decodeList<TaskSpec>(map['tasks'], (value) => TaskSpec.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

