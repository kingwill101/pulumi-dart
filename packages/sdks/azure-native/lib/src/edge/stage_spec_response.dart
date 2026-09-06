// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_option_response.dart';
import 'task_spec_response.dart';

/// Stage Properties
class StageSpecResponse {
  /// Name of Stage
  final pulumi.Input<String> name;
  /// Stage specification
  final pulumi.Input<dynamic>? specification;
  /// Task option for the stage
  final pulumi.Input<TaskOptionResponse?>? taskOption;
  /// List of tasks in the stage
  final pulumi.Input<List<TaskSpecResponse>?>? tasks;

  /// Creates a new [StageSpecResponse].
  /// [name] Name of Stage
  /// [specification] Stage specification
  /// [taskOption] Task option for the stage
  /// [tasks] List of tasks in the stage
  const StageSpecResponse({
    required this.name,
    this.specification,
    this.taskOption,
    this.tasks,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'name': name,
      'specification': ?specification,
      'taskOption': ?pulumi.Input.mapOptionalInputValue<TaskOptionResponse, Map<String, dynamic>>(taskOption, (value) => value.toMap()),
      'tasks': ?pulumi.Input.mapOptionalInputValue<List<TaskSpecResponse>, List<Map<String, dynamic>>>(tasks, (value) => pulumi.Input.encodeList<TaskSpecResponse, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory StageSpecResponse.fromMap(Map<String, dynamic> map) {
    return StageSpecResponse(
      name: pulumi.Input.fromValue(map['name'] as String),
      specification: (() { final guardedValue = map['specification']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue); })(),
      taskOption: (() { final guardedValue = map['taskOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(TaskOptionResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      tasks: (() { final guardedValue = map['tasks']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskSpecResponse>(guardedValue, (value) => TaskSpecResponse.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
