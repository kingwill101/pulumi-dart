// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'task_definition_volume_docker_volume_configuration.dart';
import 'task_definition_volume_efs_volume_configuration.dart';
import 'task_definition_volume_fsx_windows_file_server_volume_configuration.dart';

class TaskDefinitionVolume {
  /// Whether the volume should be configured at launch time. This is used to create Amazon EBS volumes for standalone tasks or tasks created as part of a service. Each task definition revision may only have one volume configured at launch in the volume configuration.
  final pulumi.Input<bool>? configureAtLaunch;
  /// Configuration block to configure a docker volume. Detailed below.
  final pulumi.Input<TaskDefinitionVolumeDockerVolumeConfiguration>? dockerVolumeConfiguration;
  /// Configuration block for an EFS volume. Detailed below.
  final pulumi.Input<TaskDefinitionVolumeEfsVolumeConfiguration>? efsVolumeConfiguration;
  /// Configuration block for an FSX Windows File Server volume. Detailed below.
  final pulumi.Input<TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration>? fsxWindowsFileServerVolumeConfiguration;
  /// Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished.
  final pulumi.Input<String>? hostPath;
  /// Name of the volume. This name is referenced in the `sourceVolume`
  /// parameter of container definition in the `mountPoints` section.
  final pulumi.Input<String> name;

  /// Creates a new [TaskDefinitionVolume].
  /// [configureAtLaunch] Whether the volume should be configured at launch time. This is used to create Amazon EBS volumes for standalone tasks or tasks created as part of a service. Each task definition revision may only have one volume configured at launch in the volume configuration.
  /// [dockerVolumeConfiguration] Configuration block to configure a docker volume. Detailed below.
  /// [efsVolumeConfiguration] Configuration block for an EFS volume. Detailed below.
  /// [fsxWindowsFileServerVolumeConfiguration] Configuration block for an FSX Windows File Server volume. Detailed below.
  /// [hostPath] Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished.
  /// [name] Name of the volume. This name is referenced in the `sourceVolume`
  TaskDefinitionVolume({
    this.configureAtLaunch,
    this.dockerVolumeConfiguration,
    this.efsVolumeConfiguration,
    this.fsxWindowsFileServerVolumeConfiguration,
    this.hostPath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configureAtLaunch': ?configureAtLaunch,
      'dockerVolumeConfiguration': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionVolumeDockerVolumeConfiguration, Map<String, dynamic>>(dockerVolumeConfiguration, (value) => value.toMap()),
      'efsVolumeConfiguration': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionVolumeEfsVolumeConfiguration, Map<String, dynamic>>(efsVolumeConfiguration, (value) => value.toMap()),
      'fsxWindowsFileServerVolumeConfiguration': ?pulumi.Input.mapOptionalInputValue<TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration, Map<String, dynamic>>(fsxWindowsFileServerVolumeConfiguration, (value) => value.toMap()),
      'hostPath': ?hostPath,
      'name': name,
    };
  }

  factory TaskDefinitionVolume.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolume(
      configureAtLaunch: map['configureAtLaunch'] == null ? null : ((map['configureAtLaunch'] as bool).input()).input(),
      dockerVolumeConfiguration: map['dockerVolumeConfiguration'] == null ? null : ((TaskDefinitionVolumeDockerVolumeConfiguration.fromMap((map['dockerVolumeConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      efsVolumeConfiguration: map['efsVolumeConfiguration'] == null ? null : ((TaskDefinitionVolumeEfsVolumeConfiguration.fromMap((map['efsVolumeConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      fsxWindowsFileServerVolumeConfiguration: map['fsxWindowsFileServerVolumeConfiguration'] == null ? null : ((TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap((map['fsxWindowsFileServerVolumeConfiguration']! as Map).cast<String, dynamic>())).input()).input(),
      hostPath: map['hostPath'] == null ? null : ((map['hostPath'] as String).input()).input(),
      name: (map['name'] as String).input(),
    );
  }
}

