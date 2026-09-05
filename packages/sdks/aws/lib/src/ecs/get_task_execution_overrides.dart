// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_execution_overrides_container_override.dart';

class GetTaskExecutionOverrides {
  /// One or more container overrides that are sent to a task. See below.
  final pulumi.Input<List<GetTaskExecutionOverridesContainerOverride>?>? containerOverrides;
  /// CPU override for the task.
  final pulumi.Input<String?>? cpu;
  /// ARN of the task execution role override for the task.
  final pulumi.Input<String?>? executionRoleArn;
  /// Memory override for the task.
  final pulumi.Input<String?>? memory;
  /// ARN of the role that containers in this task can assume.
  final pulumi.Input<String?>? taskRoleArn;

  /// Creates a new [GetTaskExecutionOverrides].
  /// [containerOverrides] One or more container overrides that are sent to a task. See below.
  /// [cpu] CPU override for the task.
  /// [executionRoleArn] ARN of the task execution role override for the task.
  /// [memory] Memory override for the task.
  /// [taskRoleArn] ARN of the role that containers in this task can assume.
  const GetTaskExecutionOverrides({
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
      containerOverrides: (() { final guardedValue = map['containerOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskExecutionOverridesContainerOverride>(guardedValue, (value) => GetTaskExecutionOverridesContainerOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
