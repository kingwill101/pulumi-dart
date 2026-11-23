// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_definition.dart';
import 'cpu_architecture.dart';
import 'task_compatibility.dart';

/// {@template pulumi_ecs_task_definition_args_doc}
/// The set of arguments for TaskDefinition.
/// {@endtemplate}
/// {@macro pulumi_ecs_task_definition_args_doc}
class TaskDefinitionArgs {
  /// Compute environments this task definition must support. When multiple environments are
  /// selected, the task must satisfy every selected environment's restrictions. Including Fargate
  /// enables automatic task sizing using valid Fargate CPU and memory configurations.
  ///
  /// This does not select where tasks run. Configure capacity separately on the service.
  ///
  /// Default - FARGATE.
  final pulumi.Input<List<TaskCompatibility>?>? compatibilities;
  /// Containers in the task, keyed by container name.
  ///
  /// AWSX uses each map key as the corresponding ECS container name.
  final pulumi.Input<Map<String, ContainerDefinition>> containers;
  /// The CpuArchitecture of the task.
  ///
  /// Default - AWS default of X86_64 for Fargate. EC2 and Managed Instances default is based on the
  /// selected capacity provider on the service.
  final pulumi.Input<CpuArchitecture?>? cpuArchitecture;
  /// The number of cpu units used by the task. For tasks using the Fargate launch type, this field
  /// is required and you must use one of the following values, which determines your range of valid
  /// values for the memory parameter:
  ///
  /// 256 (.25 vCPU) - Available memory values: 512 (0.5 GB), 1024 (1 GB), 2048 (2 GB)
  ///
  /// 512 (.5 vCPU) - Available memory values: 1024 (1 GB), 2048 (2 GB), 3072 (3 GB), 4096 (4 GB)
  ///
  /// 1024 (1 vCPU) - Available memory values: 2048 (2 GB), 3072 (3 GB), 4096 (4 GB), 5120 (5 GB),
  /// 6144 (6 GB), 7168 (7 GB), 8192 (8 GB)
  ///
  /// 2048 (2 vCPU) - Available memory values: Between 4096 (4 GB) and 16384 (16 GB) in increments of
  /// 1024 (1 GB)
  ///
  /// 4096 (4 vCPU) - Available memory values: Between 8192 (8 GB) and 30720 (30 GB) in increments of
  /// 1024 (1 GB)
  ///
  /// 8192 (8 vCPU) - Available memory values: Between 16384 (16 GB) and 61440 (60 GB) in increments
  /// of 4096 (4 GB)
  ///
  /// 16384 (16 vCPU) - Available memory values: Between 32768 (32 GB) and 122880 (120 GB) in
  /// increments of 8192 (8 GB)
  ///
  /// 32768 (32 vCPU) - Available memory values: 61440 (60 GB), 122880 (120 GB), 249856 (244 GB)
  ///
  /// Default - Select a valid task size from container requirements when Fargate is included,
  /// otherwise leave the task-wide limit unset.
  final pulumi.Input<double?>? cpuUnits;
  /// The amount (in GiB) of ephemeral storage to be allocated to the task.
  ///
  /// Requires Fargate-only compatibility
  ///
  /// Default - AWS default of 20GiB ephemeral storage.
  final pulumi.Input<double?>? ephemeralStorageGiB;
  /// The ARN of the IAM task execution role that will be used by the ECS Task.
  ///
  /// The execution role grants access required by the configured containers, such as pulling images
  /// from Amazon ECR, writing logs to CloudWatch, retrieving secrets and credential specifications,
  /// etc.
  ///
  /// The component will automatically attach IAM policies granting access based on the container
  /// definitions. Policies for AWSX-managed environment secrets are retained when a variable is
  /// removed, preserving access for older task definitions using this role.
  ///
  /// Default - An execution role will be automatically created for you
  final pulumi.Input<String?>? executionRoleArn;
  /// The name of a family that this task definition is registered to. A family groups multiple
  /// versions of a task definition.
  ///
  /// Default - The Pulumi resource name of this component
  final pulumi.Input<String?>? family;
  /// The amount (in MiB) of memory used by the task. For tasks using the Fargate launch type, this
  /// field is required and must be valid for the selected CPU value:
  ///
  /// 256 CPU units - 512 (0.5 GB), 1024 (1 GB), or 2048 (2 GB)
  ///
  /// 512 CPU units - Between 1024 (1 GB) and 4096 (4 GB) in increments of 1024 (1 GB)
  ///
  /// 1024 CPU units - Between 2048 (2 GB) and 8192 (8 GB) in increments of 1024 (1 GB)
  ///
  /// 2048 CPU units - Between 4096 (4 GB) and 16384 (16 GB) in increments of 1024 (1 GB)
  ///
  /// 4096 CPU units - Between 8192 (8 GB) and 30720 (30 GB) in increments of 1024 (1 GB)
  ///
  /// 8192 CPU units - Between 16384 (16 GB) and 61440 (60 GB) in increments of 4096 (4 GB)
  ///
  /// 16384 CPU units - Between 32768 (32 GB) and 122880 (120 GB) in increments of 8192 (8 GB)
  ///
  /// 32768 CPU units - 61440 (60 GB), 122880 (120 GB), or 249856 (244 GB)
  ///
  /// For EC2 and Managed Instances, task-level memory is optional and is not automatically
  /// calculated. When omitted, every container must specify memoryMiB or memoryReservationMiB
  ///
  /// Default - Select a valid task size when Fargate is included, otherwise leave unset.
  final pulumi.Input<double?>? memoryMiB;
  /// Region where this task and its supporting resources will be managed.
  ///
  /// The AWS Native provider must use this region and the same account as the AWS provider. This
  /// input does not override the AWS Native provider configuration.
  ///
  /// Default - Region set in the AWS provider configuration.
  final pulumi.Input<String?>? region;
  /// The ARN of the IAM role that grants containers in the task permission to call AWS APIs on your
  /// behalf.
  ///
  /// Default - A task role is automatically created for you.
  final pulumi.Input<String?>? taskRoleArn;

  /// Creates a new [TaskDefinitionArgs].
  /// [compatibilities] Compute environments this task definition must support. When multiple environments are
  /// [containers] Containers in the task, keyed by container name.
  /// [cpuArchitecture] The CpuArchitecture of the task.
  /// [cpuUnits] The number of cpu units used by the task. For tasks using the Fargate launch type, this field
  /// [ephemeralStorageGiB] The amount (in GiB) of ephemeral storage to be allocated to the task.
  /// [executionRoleArn] The ARN of the IAM task execution role that will be used by the ECS Task.
  /// [family] The name of a family that this task definition is registered to. A family groups multiple
  /// [memoryMiB] The amount (in MiB) of memory used by the task. For tasks using the Fargate launch type, this
  /// [region] Region where this task and its supporting resources will be managed.
  /// [taskRoleArn] The ARN of the IAM role that grants containers in the task permission to call AWS APIs on your
  const TaskDefinitionArgs({
    this.compatibilities,
    required this.containers,
    this.cpuArchitecture,
    this.cpuUnits,
    this.ephemeralStorageGiB,
    this.executionRoleArn,
    this.family,
    this.memoryMiB,
    this.region,
    this.taskRoleArn,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'compatibilities': ?pulumi.Input.mapOptionalInputValue<List<TaskCompatibility>, List<String>>(compatibilities, (value) => pulumi.Input.encodeList<TaskCompatibility, String>(value, (value) => value.wireValue)),
      'containers': pulumi.Input.mapInputValue<Map<String, ContainerDefinition>, Map<String, Map<String, dynamic>>>(containers, (value) => pulumi.Input.encodeMapValues<ContainerDefinition, Map<String, dynamic>>(value, (value) => value.toMap())),
      'cpuArchitecture': ?pulumi.Input.mapOptionalInputValue<CpuArchitecture, String>(cpuArchitecture, (value) => value.wireValue),
      'cpuUnits': ?cpuUnits,
      'ephemeralStorageGiB': ?ephemeralStorageGiB,
      'executionRoleArn': ?executionRoleArn,
      'family': ?family,
      'memoryMiB': ?memoryMiB,
      'region': ?region,
      'taskRoleArn': ?taskRoleArn,
    };
  }

  factory TaskDefinitionArgs.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionArgs(
      compatibilities: (() { final guardedValue = map['compatibilities']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<TaskCompatibility>(guardedValue, (value) => TaskCompatibility.fromValue(value as String))); })(),
      containers: pulumi.Input.fromValue(pulumi.Input.decodeMapValues<ContainerDefinition>(map['containers']!, (value) => ContainerDefinition.fromMap((value as Map).cast<String, dynamic>()))),
      cpuArchitecture: (() { final guardedValue = map['cpuArchitecture']; if (guardedValue == null) return null; return pulumi.Input.fromValue(CpuArchitecture.fromValue(guardedValue as String)); })(),
      cpuUnits: (() { final guardedValue = map['cpuUnits']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      ephemeralStorageGiB: (() { final guardedValue = map['ephemeralStorageGiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      executionRoleArn: (() { final guardedValue = map['executionRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      family: (() { final guardedValue = map['family']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      memoryMiB: (() { final guardedValue = map['memoryMiB']; if (guardedValue == null) return null; return pulumi.Input.fromValue((guardedValue as num).toDouble()); })(),
      region: (() { final guardedValue = map['region']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      taskRoleArn: (() { final guardedValue = map['taskRoleArn']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
