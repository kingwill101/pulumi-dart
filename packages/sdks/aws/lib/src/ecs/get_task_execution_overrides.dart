// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_overrides_container_override.dart';

class GetTaskExecutionOverrides {
  /// One or more container overrides that are sent to a task. See below.
  final pulumi.Input<List<GetTaskExecutionOverridesContainerOverride>>? containerOverrides;
  /// The CPU override for the task.
  final pulumi.Input<String>? cpu;
  /// Amazon Resource Name (ARN) of the task execution role override for the task.
  final pulumi.Input<String>? executionRoleArn;
  /// The memory override for the task.
  final pulumi.Input<String>? memory;
  /// Amazon Resource Name (ARN) of the role that containers in this task can assume.
  final pulumi.Input<String>? taskRoleArn;

  /// Creates a new [GetTaskExecutionOverrides].
  /// [containerOverrides] One or more container overrides that are sent to a task. See below.
  /// [cpu] The CPU override for the task.
  /// [executionRoleArn] Amazon Resource Name (ARN) of the task execution role override for the task.
  /// [memory] The memory override for the task.
  /// [taskRoleArn] Amazon Resource Name (ARN) of the role that containers in this task can assume.
  GetTaskExecutionOverrides({
    this.containerOverrides,
    this.cpu,
    this.executionRoleArn,
    this.memory,
    this.taskRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerOverrides': ?pulumi.Input.mapOptionalInputValue<List<GetTaskExecutionOverridesContainerOverride>, List<Map<String, dynamic>>>(containerOverrides, (value) => pulumi.Input.encodeList<GetTaskExecutionOverridesContainerOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpu': ?cpu,
      'executionRoleArn': ?executionRoleArn,
      'memory': ?memory,
      'taskRoleArn': ?taskRoleArn,
    };
  }

  factory GetTaskExecutionOverrides.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionOverrides(
      containerOverrides: map['containerOverrides'] == null ? null : (pulumi.Input.decodeList<GetTaskExecutionOverridesContainerOverride>(map['containerOverrides'], (value) => GetTaskExecutionOverridesContainerOverride.fromMap((value as Map).cast<String, dynamic>()))).input(),
      cpu: map['cpu'] == null ? null : (map['cpu'] as String).input(),
      executionRoleArn: map['executionRoleArn'] == null ? null : (map['executionRoleArn'] as String).input(),
      memory: map['memory'] == null ? null : (map['memory'] as String).input(),
      taskRoleArn: map['taskRoleArn'] == null ? null : (map['taskRoleArn'] as String).input(),
    );
  }
}

