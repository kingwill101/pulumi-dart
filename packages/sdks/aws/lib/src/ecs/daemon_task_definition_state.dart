// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'daemon_task_definition_container_definition.dart';
import 'daemon_task_definition_volume.dart';

/// Input properties used for looking up and filtering DaemonTaskDefinition resources.
class DaemonTaskDefinitionState {
  /// Full ARN of the Daemon Task Definition (including both `family` and `revision`).
  final pulumi.Input<String?>? arn;
  /// One or more container definition blocks. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionContainerDefinition>?>? containerDefinitions;
  /// Number of CPU units used by the task.
  final pulumi.Input<String?>? cpu;
  /// ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  final pulumi.Input<String?>? executionRoleArn;
  /// Unique name for your daemon task definition.
  ///
  /// The following arguments are optional:
  final pulumi.Input<String?>? family;
  /// Amount (in MiB) of memory used by the task.
  final pulumi.Input<String?>? memory;
  /// Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  final pulumi.Input<String?>? region;
  /// Revision of the task in a particular family.
  final pulumi.Input<int?>? revision;
  /// Status of the daemon task definition.
  final pulumi.Input<String?>? status;
  /// Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  final pulumi.Input<Map<String, String>?>? tags;
  /// Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  final pulumi.Input<Map<String, String>?>? tagsAll;
  /// ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  final pulumi.Input<String?>? taskRoleArn;
  /// Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  final pulumi.Input<List<DaemonTaskDefinitionVolume>?>? volumes;

  /// Creates a new [DaemonTaskDefinitionState].
  /// [arn] Full ARN of the Daemon Task Definition (including both `family` and `revision`).
  /// [containerDefinitions] One or more container definition blocks. Detailed below.
  /// [cpu] Number of CPU units used by the task.
  /// [executionRoleArn] ARN of the task execution role that the Amazon ECS container agent and the Docker daemon can assume.
  /// [family] Unique name for your daemon task definition.
  /// [memory] Amount (in MiB) of memory used by the task.
  /// [region] Region where this resource will be [managed](https://docs.aws.amazon.com/general/latest/gr/rande.html#regional-endpoints). Defaults to the Region set in the provider configuration.
  /// [revision] Revision of the task in a particular family.
  /// [status] Status of the daemon task definition.
  /// [tags] Key-value map of resource tags. If configured with a provider `defaultTags` configuration block present, tags with matching keys will overwrite those defined at the provider-level.
  /// [tagsAll] Map of tags assigned to the resource, including those inherited from the provider `defaultTags` configuration block.
  /// [taskRoleArn] ARN of IAM role that allows your Amazon ECS container task to make calls to other AWS services.
  /// [volumes] Repeatable configuration block for volumes that containers in your task may use. Detailed below.
  const DaemonTaskDefinitionState({
    this.arn,
    this.containerDefinitions,
    this.cpu,
    this.executionRoleArn,
    this.family,
    this.memory,
    this.region,
    this.revision,
    this.status,
    this.tags,
    this.tagsAll,
    this.taskRoleArn,
    this.volumes,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'arn': ?arn,
      'containerDefinitions': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionContainerDefinition>, List<Map<String, dynamic>>>(containerDefinitions, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionContainerDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpu': ?cpu,
      'executionRoleArn': ?executionRoleArn,
      'family': ?family,
      'memory': ?memory,
      'region': ?region,
      'revision': ?revision,
      'status': ?status,
      'tags': ?tags,
      'tagsAll': ?tagsAll,
      'taskRoleArn': ?taskRoleArn,
      'volumes': ?pulumi.Input.mapOptionalInputValue<List<DaemonTaskDefinitionVolume>, List<Map<String, dynamic>>>(volumes, (value) => pulumi.Input.encodeList<DaemonTaskDefinitionVolume, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory DaemonTaskDefinitionState.fromMap(Map<String, dynamic> map) {
    return DaemonTaskDefinitionState(
      arn: (() { final guardedValue = map['arn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      containerDefinitions: (() { final guardedValue = map['containerDefinitions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionContainerDefinition>(guardedValue, (value) => DaemonTaskDefinitionContainerDefinition.fromMap((value as Map).cast<String, dynamic>()))); })(),
      cpu: (() { final guardedValue = map['cpu']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memory: (() { final guardedValue = map['memory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      revision: (() { final guardedValue = map['revision']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toInt()); })(),
      status: (() { final guardedValue = map['status']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      tags: (() { final guardedValue = map['tags']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      tagsAll: (() { final guardedValue = map['tagsAll']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as Map).cast<String, String>()); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumes: (() { final guardedValue = map['volumes']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<DaemonTaskDefinitionVolume>(guardedValue, (value) => DaemonTaskDefinitionVolume.fromMap((value as Map).cast<String, dynamic>()))); })(),
    );
  }
}
