// ignore_for_file: unused_element, unnecessary_cast

import 'task_definition_volume_docker_volume_configuration.dart';
import 'task_definition_volume_efs_volume_configuration.dart';
import 'task_definition_volume_fsx_windows_file_server_volume_configuration.dart';

class TaskDefinitionVolume {
  /// Whether the volume should be configured at launch time. This is used to create Amazon EBS volumes for standalone tasks or tasks created as part of a service. Each task definition revision may only have one volume configured at launch in the volume configuration.
  final bool? configureAtLaunch;
  /// Configuration block to configure a docker volume. Detailed below.
  final TaskDefinitionVolumeDockerVolumeConfiguration? dockerVolumeConfiguration;
  /// Configuration block for an EFS volume. Detailed below.
  final TaskDefinitionVolumeEfsVolumeConfiguration? efsVolumeConfiguration;
  /// Configuration block for an FSX Windows File Server volume. Detailed below.
  final TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration? fsxWindowsFileServerVolumeConfiguration;
  /// Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished.
  final String? hostPath;
  /// Name of the volume. This name is referenced in the `sourceVolume`
  /// parameter of container definition in the `mountPoints` section.
  final String name;

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
      'dockerVolumeConfiguration': ?dockerVolumeConfiguration == null ? null : dockerVolumeConfiguration!.toMap(),
      'efsVolumeConfiguration': ?efsVolumeConfiguration == null ? null : efsVolumeConfiguration!.toMap(),
      'fsxWindowsFileServerVolumeConfiguration': ?fsxWindowsFileServerVolumeConfiguration == null ? null : fsxWindowsFileServerVolumeConfiguration!.toMap(),
      'hostPath': ?hostPath,
      'name': name,
    };
  }

  factory TaskDefinitionVolume.fromMap(Map<String, dynamic> map) {
    return TaskDefinitionVolume(
      configureAtLaunch: map['configureAtLaunch'] == null ? null : map['configureAtLaunch'] as bool,
      dockerVolumeConfiguration: map['dockerVolumeConfiguration'] == null ? null : TaskDefinitionVolumeDockerVolumeConfiguration.fromMap((map['dockerVolumeConfiguration'] as Map).cast<String, dynamic>()),
      efsVolumeConfiguration: map['efsVolumeConfiguration'] == null ? null : TaskDefinitionVolumeEfsVolumeConfiguration.fromMap((map['efsVolumeConfiguration'] as Map).cast<String, dynamic>()),
      fsxWindowsFileServerVolumeConfiguration: map['fsxWindowsFileServerVolumeConfiguration'] == null ? null : TaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap((map['fsxWindowsFileServerVolumeConfiguration'] as Map).cast<String, dynamic>()),
      hostPath: map['hostPath'] == null ? null : map['hostPath'] as String,
      name: map['name'] as String,
    );
  }
}

