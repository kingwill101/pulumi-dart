// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../get_task_execution_overrides_container_override/get_task_execution_overrides_container_override.dart';

class GetTaskExecutionOverrides {
  /// One or more container overrides that are sent to a task. See below.
  final List<GetTaskExecutionOverridesContainerOverride>? containerOverrides;

  /// The CPU override for the task.
  final String? cpu;

  /// Amazon Resource Name (ARN) of the task execution role override for the task.
  final String? executionRoleArn;

  /// The memory override for the task.
  final String? memory;

  /// Amazon Resource Name (ARN) of the role that containers in this task can assume.
  final String? taskRoleArn;

  GetTaskExecutionOverrides({
    this.containerOverrides,
    this.cpu,
    this.executionRoleArn,
    this.memory,
    this.taskRoleArn,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final containerOverridesValue = containerOverrides;
    if (containerOverridesValue != null) {
      map['containerOverrides'] = pulumi.Input.encodeList<
              GetTaskExecutionOverridesContainerOverride, Map<String, dynamic>>(
          containerOverridesValue, (value) => value.toMap());
    }
    final cpuValue = cpu;
    if (cpuValue != null) {
      map['cpu'] = cpuValue;
    }
    final executionRoleArnValue = executionRoleArn;
    if (executionRoleArnValue != null) {
      map['executionRoleArn'] = executionRoleArnValue;
    }
    final memoryValue = memory;
    if (memoryValue != null) {
      map['memory'] = memoryValue;
    }
    final taskRoleArnValue = taskRoleArn;
    if (taskRoleArnValue != null) {
      map['taskRoleArn'] = taskRoleArnValue;
    }
    return map;
  }

  factory GetTaskExecutionOverrides.fromMap(Map<String, dynamic> map) {
    return GetTaskExecutionOverrides(
      containerOverrides: map['containerOverrides'] == null
          ? null
          : pulumi.Input.decodeList<GetTaskExecutionOverridesContainerOverride>(
              map['containerOverrides'],
              (value) => GetTaskExecutionOverridesContainerOverride.fromMap(
                  (value as Map).cast<String, dynamic>())),
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      executionRoleArn: map['executionRoleArn'] == null
          ? null
          : map['executionRoleArn'] as String,
      memory: map['memory'] == null ? null : map['memory'] as String,
      taskRoleArn:
          map['taskRoleArn'] == null ? null : map['taskRoleArn'] as String,
    );
  }
}
