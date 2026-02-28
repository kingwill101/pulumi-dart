// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'pipe_target_parameters_ecs_task_parameters_overrides_container_override.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_ephemeral_storage.dart';
import 'pipe_target_parameters_ecs_task_parameters_overrides_inference_accelerator_override.dart';

class PipeTargetParametersEcsTaskParametersOverrides {
  /// One or more container overrides that are sent to a task. Detailed below.
  final List<PipeTargetParametersEcsTaskParametersOverridesContainerOverride>? containerOverrides;
  /// The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  final String? cpu;
  /// The ephemeral storage setting override for the task.  Detailed below.
  final PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage? ephemeralStorage;
  /// The Amazon Resource Name (ARN) of the task execution IAM role override for the task.
  final String? executionRoleArn;
  /// List of Elastic Inference accelerator overrides for the task. Detailed below.
  final List<PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride>? inferenceAcceleratorOverrides;
  /// The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  final String? memory;
  /// The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.
  final String? taskRoleArn;

  /// Creates a new [PipeTargetParametersEcsTaskParametersOverrides].
  /// [containerOverrides] One or more container overrides that are sent to a task. Detailed below.
  /// [cpu] The number of cpu units reserved for the container, instead of the default value from the task definition. You must also specify a container name.
  /// [ephemeralStorage] The ephemeral storage setting override for the task.  Detailed below.
  /// [executionRoleArn] The Amazon Resource Name (ARN) of the task execution IAM role override for the task.
  /// [inferenceAcceleratorOverrides] List of Elastic Inference accelerator overrides for the task. Detailed below.
  /// [memory] The hard limit (in MiB) of memory to present to the container, instead of the default value from the task definition. If your container attempts to exceed the memory specified here, the container is killed. You must also specify a container name.
  /// [taskRoleArn] The Amazon Resource Name (ARN) of the IAM role that containers in this task can assume. All containers in this task are granted the permissions that are specified in this role.
  PipeTargetParametersEcsTaskParametersOverrides({
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
      'containerOverrides': ?containerOverrides == null ? null : pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverride, Map<String, dynamic>>(containerOverrides!, (value) => value.toMap()),
      'cpu': ?cpu,
      'ephemeralStorage': ?ephemeralStorage == null ? null : ephemeralStorage!.toMap(),
      'executionRoleArn': ?executionRoleArn,
      'inferenceAcceleratorOverrides': ?inferenceAcceleratorOverrides == null ? null : pulumi.Input.encodeList<PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride, Map<String, dynamic>>(inferenceAcceleratorOverrides!, (value) => value.toMap()),
      'memory': ?memory,
      'taskRoleArn': ?taskRoleArn,
    };
  }

  factory PipeTargetParametersEcsTaskParametersOverrides.fromMap(Map<String, dynamic> map) {
    return PipeTargetParametersEcsTaskParametersOverrides(
      containerOverrides: map['containerOverrides'] == null ? null : pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersOverridesContainerOverride>(map['containerOverrides'], (value) => PipeTargetParametersEcsTaskParametersOverridesContainerOverride.fromMap((value as Map).cast<String, dynamic>())),
      cpu: map['cpu'] == null ? null : map['cpu'] as String,
      ephemeralStorage: map['ephemeralStorage'] == null ? null : PipeTargetParametersEcsTaskParametersOverridesEphemeralStorage.fromMap((map['ephemeralStorage'] as Map).cast<String, dynamic>()),
      executionRoleArn: map['executionRoleArn'] == null ? null : map['executionRoleArn'] as String,
      inferenceAcceleratorOverrides: map['inferenceAcceleratorOverrides'] == null ? null : pulumi.Input.decodeList<PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride>(map['inferenceAcceleratorOverrides'], (value) => PipeTargetParametersEcsTaskParametersOverridesInferenceAcceleratorOverride.fromMap((value as Map).cast<String, dynamic>())),
      memory: map['memory'] == null ? null : map['memory'] as String,
      taskRoleArn: map['taskRoleArn'] == null ? null : map['taskRoleArn'] as String,
    );
  }
}

