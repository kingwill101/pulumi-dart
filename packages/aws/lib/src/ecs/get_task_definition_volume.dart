// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_volume_docker_volume_configuration.dart';
import 'get_task_definition_volume_efs_volume_configuration.dart';
import 'get_task_definition_volume_fsx_windows_file_server_volume_configuration.dart';

class GetTaskDefinitionVolume {
  /// Whether the volume should be configured at launch time. This is used to create Amazon EBS volumes for standalone tasks or tasks created as part of a service. Each task definition revision may only have one volume configured at launch in the volume configuration.
  final bool configureAtLaunch;

  /// Configuration block to configure a docker volume. Detailed below.
  final List<GetTaskDefinitionVolumeDockerVolumeConfiguration>
  dockerVolumeConfigurations;

  /// Configuration block for an EFS volume. Detailed below.
  final List<GetTaskDefinitionVolumeEfsVolumeConfiguration>
  efsVolumeConfigurations;

  /// Configuration block for an FSX Windows File Server volume. Detailed below.
  final List<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration>
  fsxWindowsFileServerVolumeConfigurations;

  /// Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished.
  final String hostPath;

  /// Name of the volume. This name is referenced in the `sourceVolume`
  /// parameter of container definition in the `mountPoints` section.
  final String name;

  /// Creates a new [GetTaskDefinitionVolume].
  /// [configureAtLaunch] Whether the volume should be configured at launch time. This is used to create Amazon EBS volumes for standalone tasks or tasks created as part of a service. Each task definition revision may only have one volume configured at launch in the volume configuration.
  /// [dockerVolumeConfigurations] Configuration block to configure a docker volume. Detailed below.
  /// [efsVolumeConfigurations] Configuration block for an EFS volume. Detailed below.
  /// [fsxWindowsFileServerVolumeConfigurations] Configuration block for an FSX Windows File Server volume. Detailed below.
  /// [hostPath] Path on the host container instance that is presented to the container. If not set, ECS will create a nonpersistent data volume that starts empty and is deleted after the task has finished.
  /// [name] Name of the volume. This name is referenced in the `sourceVolume`
  GetTaskDefinitionVolume({
    required this.configureAtLaunch,
    required this.dockerVolumeConfigurations,
    required this.efsVolumeConfigurations,
    required this.fsxWindowsFileServerVolumeConfigurations,
    required this.hostPath,
    required this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configureAtLaunch': configureAtLaunch,
      'dockerVolumeConfigurations':
          pulumi.Input.encodeList<
            GetTaskDefinitionVolumeDockerVolumeConfiguration,
            Map<String, dynamic>
          >(dockerVolumeConfigurations, (value) => value.toMap()),
      'efsVolumeConfigurations':
          pulumi.Input.encodeList<
            GetTaskDefinitionVolumeEfsVolumeConfiguration,
            Map<String, dynamic>
          >(efsVolumeConfigurations, (value) => value.toMap()),
      'fsxWindowsFileServerVolumeConfigurations':
          pulumi.Input.encodeList<
            GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration,
            Map<String, dynamic>
          >(fsxWindowsFileServerVolumeConfigurations, (value) => value.toMap()),
      'hostPath': hostPath,
      'name': name,
    };
  }

  factory GetTaskDefinitionVolume.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolume(
      configureAtLaunch: map['configureAtLaunch'] as bool,
      dockerVolumeConfigurations:
          pulumi.Input.decodeList<
            GetTaskDefinitionVolumeDockerVolumeConfiguration
          >(
            map['dockerVolumeConfigurations'],
            (value) => GetTaskDefinitionVolumeDockerVolumeConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      efsVolumeConfigurations:
          pulumi
              .Input.decodeList<GetTaskDefinitionVolumeEfsVolumeConfiguration>(
            map['efsVolumeConfigurations'],
            (value) => GetTaskDefinitionVolumeEfsVolumeConfiguration.fromMap(
              (value as Map).cast<String, dynamic>(),
            ),
          ),
      fsxWindowsFileServerVolumeConfigurations:
          pulumi.Input.decodeList<
            GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration
          >(
            map['fsxWindowsFileServerVolumeConfigurations'],
            (value) =>
                GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap(
                  (value as Map).cast<String, dynamic>(),
                ),
          ),
      hostPath: map['hostPath'] as String,
      name: map['name'] as String,
    );
  }
}
