// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_task_definition_volume_docker_volume_configuration.dart';
import 'get_task_definition_volume_efs_volume_configuration.dart';
import 'get_task_definition_volume_fsx_windows_file_server_volume_configuration.dart';
import 'get_task_definition_volume_s3files_volume_configuration.dart';

class GetTaskDefinitionVolume {
  /// Whether the volume is configured at launch time.
  final pulumi.Input<bool> configureAtLaunch;
  /// Configuration block for a Docker volume. See `dockerVolumeConfiguration` Block for details.
  final pulumi.Input<List<GetTaskDefinitionVolumeDockerVolumeConfiguration>> dockerVolumeConfigurations;
  /// Configuration block for an EFS volume. See `efsVolumeConfiguration` Block for details.
  final pulumi.Input<List<GetTaskDefinitionVolumeEfsVolumeConfiguration>> efsVolumeConfigurations;
  /// Configuration block for an FSx for Windows File Server volume. See `fsxWindowsFileServerVolumeConfiguration` Block for details.
  final pulumi.Input<List<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration>> fsxWindowsFileServerVolumeConfigurations;
  /// Path on the host container instance that is presented to the container.
  final pulumi.Input<String> hostPath;
  /// Name of the volume.
  final pulumi.Input<String> name;
  /// Configuration block for an S3 Files volume. See `s3filesVolumeConfiguration` Block for details.
  final pulumi.Input<List<GetTaskDefinitionVolumeS3filesVolumeConfiguration>> s3filesVolumeConfigurations;

  /// Creates a new [GetTaskDefinitionVolume].
  /// [configureAtLaunch] Whether the volume is configured at launch time.
  /// [dockerVolumeConfigurations] Configuration block for a Docker volume. See `dockerVolumeConfiguration` Block for details.
  /// [efsVolumeConfigurations] Configuration block for an EFS volume. See `efsVolumeConfiguration` Block for details.
  /// [fsxWindowsFileServerVolumeConfigurations] Configuration block for an FSx for Windows File Server volume. See `fsxWindowsFileServerVolumeConfiguration` Block for details.
  /// [hostPath] Path on the host container instance that is presented to the container.
  /// [name] Name of the volume.
  /// [s3filesVolumeConfigurations] Configuration block for an S3 Files volume. See `s3filesVolumeConfiguration` Block for details.
  const GetTaskDefinitionVolume({
    required this.configureAtLaunch,
    required this.dockerVolumeConfigurations,
    required this.efsVolumeConfigurations,
    required this.fsxWindowsFileServerVolumeConfigurations,
    required this.hostPath,
    required this.name,
    required this.s3filesVolumeConfigurations,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configureAtLaunch': configureAtLaunch,
      'dockerVolumeConfigurations': pulumi.Input.mapInputValue<List<GetTaskDefinitionVolumeDockerVolumeConfiguration>, List<Map<String, dynamic>>>(dockerVolumeConfigurations, (value) => pulumi.Input.encodeList<GetTaskDefinitionVolumeDockerVolumeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'efsVolumeConfigurations': pulumi.Input.mapInputValue<List<GetTaskDefinitionVolumeEfsVolumeConfiguration>, List<Map<String, dynamic>>>(efsVolumeConfigurations, (value) => pulumi.Input.encodeList<GetTaskDefinitionVolumeEfsVolumeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'fsxWindowsFileServerVolumeConfigurations': pulumi.Input.mapInputValue<List<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration>, List<Map<String, dynamic>>>(fsxWindowsFileServerVolumeConfigurations, (value) => pulumi.Input.encodeList<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
      'hostPath': hostPath,
      'name': name,
      's3filesVolumeConfigurations': pulumi.Input.mapInputValue<List<GetTaskDefinitionVolumeS3filesVolumeConfiguration>, List<Map<String, dynamic>>>(s3filesVolumeConfigurations, (value) => pulumi.Input.encodeList<GetTaskDefinitionVolumeS3filesVolumeConfiguration, Map<String, dynamic>>(value, (value) => value.toMap())),
    };
  }

  factory GetTaskDefinitionVolume.fromMap(Map<String, dynamic> map) {
    return GetTaskDefinitionVolume(
      configureAtLaunch: pulumi.Input.fromValue(map['configureAtLaunch'] as bool),
      dockerVolumeConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskDefinitionVolumeDockerVolumeConfiguration>(map['dockerVolumeConfigurations']!, (value) => GetTaskDefinitionVolumeDockerVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      efsVolumeConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskDefinitionVolumeEfsVolumeConfiguration>(map['efsVolumeConfigurations']!, (value) => GetTaskDefinitionVolumeEfsVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      fsxWindowsFileServerVolumeConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration>(map['fsxWindowsFileServerVolumeConfigurations']!, (value) => GetTaskDefinitionVolumeFsxWindowsFileServerVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
      hostPath: pulumi.Input.fromValue(map['hostPath'] as String),
      name: pulumi.Input.fromValue(map['name'] as String),
      s3filesVolumeConfigurations: pulumi.Input.fromValue(pulumi.Input.decodeList<GetTaskDefinitionVolumeS3filesVolumeConfiguration>(map['s3filesVolumeConfigurations']!, (value) => GetTaskDefinitionVolumeS3filesVolumeConfiguration.fromMap((value as Map).cast<String, dynamic>()))),
    );
  }
}
