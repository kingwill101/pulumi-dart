// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_ephemeral_storage.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_inference_accelerator_override.dart';

class PipeTargetParametersEcsTaskParametersOverrides {
  /// One or more container overrides that are sent to a task. Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverride>>? containerOverrides;
  /// The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  final pulumi.Input<String>? cpu;
  /// The ephemeral storage setting override for the task.  Detailed below.
  final pulumi.Input<PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage>? ephemeralStorage;
  /// The Amazon Resource Name (ARN) of the task execution IAM role override for the task.
  final pulumi.Input<String>? executionRoleArn;
  /// List of Elastic Inference accelerator overrides for the task. Detailed below.
  final pulumi.Input<List<PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride>>? inferenceAcceleratorOverrides;
  /// The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  final pulumi.Input<String>? memory;
  /// The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.
  final pulumi.Input<String>? taskRoleArn;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverrides].
  /// [containerOverrides] One or more container overrides that are sent to a task. Detailed below.
  /// [cpu] The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  /// [ephemeralStorage] The ephemeral storage setting override for the task.  Detailed below.
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the task execution IAM role override for the task.
  /// [inferenceAcceleratorOverrides] List of Elastic Inference accelerator overrides for the task. Detailed below.
  /// [memory] The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  /// [taskRoleArn] The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.
  const PipeTargetParametersEcsTaskParametersOverrides({
    this.containerOverrides,
    this.cpu,
    this.ephemeralStorage,
    this.executionRoleArn,
    this.inferenceAcceleratorOverrides,
    this.memory,
    this.taskRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerOverrides': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersOverridesContainerOverride>, List<Map<String, dynamic>>>(containerOverrides, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpu': ?cpu,
      'ephemeralStorage': ?pulumi.Input.mapOptionalInputValue<PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage, Map<String, dynamic>>(ephemeralStorage, (value) => value.toMap()),
      'executionRoleArn': ?executionRoleArn,
      'inferenceAcceleratorOverrides': ?pulumi.Input.mapOptionalInputValue<List<PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride>, List<Map<String, dynamic>>>(inferenceAcceleratorOverrides, (value) => pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride, Map<String, dynamic>>(value, (value) => value.toMap())),
      'memory': ?memory,
      'taskRoleArn': ?taskRoleArn,
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverrides.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverrides(
      containerOverrides: (() { final guardedValue = map['containerOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverride>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersOverridesContainerOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      ephemeralStorage: (() { final guardedValue = map['ephemeralStorage']; if (guardedValue == null) return null; return pulumi.Input.fromValue(PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      inferenceAcceleratorOverrides: (() { final guardedValue = map['inferenceAcceleratorOverrides']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride>(guardedValue, (value) => PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride.fromMap((value as Map).cast<String, dynamic>()))); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

