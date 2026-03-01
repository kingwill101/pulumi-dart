// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_option_response.dart';
import 'task_spec_response.dart';

/// Stage Properties
class StageSpecResponse {
  /// Name of Stage
  final String name;
  /// Stage specification
  final dynamic specification;
  /// Task option for the stage
  final TaskOptionResponse? taskOption;
  /// List of tasks in the stage
  final List<TaskSpecResponse>? tasks;

  /// Creates a new [StageSpecResponse].
  /// [name] Name of Stage
  /// [specification] Stage specification
  /// [taskOption] Task option for the stage
  /// [tasks] List of tasks in the stage
  StageSpecResponse({
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
      'tasks': ?tasks == null ? null : pulumi.Input.encodeList<TaskSpecResponse, Map<String, dynamic>>(tasks!, (value) => value.toMap()),
    };
  }

  factory StageSpecResponse.fromMap(Map<String, dynamic> map) {
    return StageSpecResponse(
      name: map['name'] as String,
      specification: map['specification'] == null ? null : map['specification'],
      taskOption: map['taskOption'] == null ? null : TaskOptionResponse.fromMap((map['taskOption'] as Map).cast<String, dynamic>()),
      tasks: map['tasks'] == null ? null : pulumi.Input.decodeList<TaskSpecResponse>(map['tasks'], (value) => TaskSpecResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

