// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_task_definition_container_definition.dart';
import 'daemon_task_definition_volume.dart';

/// {@template pulumi_ecs_daemon_task_definition_daemon_task_definition_args_doc}
/// The set of arguments for DaemonTaskDefinition.
/// {@endtemplate}
/// {@macro pulumi_ecs_daemon_task_definition_daemon_task_definition_args_doc}
class DaemonTaskDefinitionArgs {
  /// One or more container definition blocks. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinition>> containerDefinitions;
  /// Number of CPU units used by the task.
  final pulumi.Input<String>? cpu;
  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  final pulumi.Input<String>? executionRoleArn;
  /// Unique name for your daemon task definition.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String> family;
  /// Amount (in MiB) of memory used by the task.
  final pulumi.Input<String>? memory;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String>? region;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>>? tags;
  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final pulumi.Input<String>? taskRoleArn;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionVolume>>? volumes;

  /// Creates a new [DaemonTaskDefinitionArgs].
  /// [containerDefinitions] One or more container definition blocks. Detailed below.
  /// [cpu] Number of CPU units used by the task.
  /// [executionRoleArn] ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  /// [family] Unique name for your daemon task definition.
  /// [memory] Amount (in MiB) of memory used by the task.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [taskRoleArn] ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [volumes] Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  const DaemonTaskDefinitionArgs({
    required this.containerDefinitions,
    this.cpu,
    this.executionRoleArn,
    required this.family,
    this.memory,
    this.region,
    this.tags,
    this.taskRoleArn,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'containerDefinitions': pulumi.Input.mapInputValue<List<DaemonTaskDefinitionContainerDefinition>, List<Map<String, dynamic>>>(containerDefinitions, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpu': ?cpu,
      'executionRoleArn': ?executionRoleArn,
      'family': family,
      'memory': ?memory,
      'region': ?region,
      'tags': ?tags,
      'taskRoleArn': ?taskRoleArn,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DaemonTaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionArgs(
      containerDefinitions: pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinition>(map['containerDefinitions']!, (value) => DaemonTaskDefinitionContainerDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: pulumi.Input.fromValue(map['family'] as String),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionVolume>(guardedValue, (value) => DaemonTaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
