// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'docker_volume_configuration_response.dart';
import 'efsvolume_configuration_response.dart';
import 'fsx_windows_file_server_volume_configuration_response.dart';
import 'host_volume_properties_response.dart';

/// Definition of Volume
class VolumeResponse {
  /// Indicates whether the volume should be configured at launch time. This is used to create Amazon EBS volumes for standalone tasks or tasks created as part of a service. Each task definition revision may only have one volume configured at launch in the volume configuration. To configure a volume at launch time, use this task definition revision and specify a ``volumeConfigurations`` object when calling the ``CreateService``, ``UpdateService``, ``RunTask`` or ``StartTask`` APIs.
  final pulumi.Input<bool>? configuredAtLaunch;
  /// This parameter is specified when you use Docker volumes. Windows containers only support the use of the ``local`` driver. To use bind mounts, specify the ``host`` parameter instead.  Docker volumes aren't supported by tasks run on FARGATElong. The ``DockerVolumeConfiguration`` property specifies a Docker volume configuration and is used when you use Docker volumes. Docker volumes are only supported when you are using the EC2 launch type. Windows containers only support the use of the ``local`` driver. To use bind mounts, specify a ``host`` instead.
  final pulumi.Input<DockerVolumeConfigurationResponse>? dockerVolumeConfiguration;
  /// This parameter is specified when you use an Amazon Elastic File System file system for task storage. This parameter is specified when you're using an Amazon Elastic File System file system for task storage. For more information, see [Amazon EFS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html) in the *Amazon Elastic Container Service Developer Guide*.
  final pulumi.Input<EFSVolumeConfigurationResponse>? efsVolumeConfiguration;
  /// This parameter is specified when you use Amazon FSx for Windows File Server file system for task storage. This parameter is specified when you're using [Amazon FSx for Windows File Server](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html) file system for task storage. For more information and the input format, see [Amazon FSx for Windows File Server volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/wfsx-volumes.html) in the *Amazon Elastic Container Service Developer Guide*.
  final pulumi.Input<FSxWindowsFileServerVolumeConfigurationResponse>? fSxWindowsFileServerVolumeConfiguration;
  /// This parameter is specified when you use bind mount host volumes. The contents of the ``host`` parameter determine whether your bind mount host volume persists on the host container instance and where it's stored. If the ``host`` parameter is empty, then the Docker daemon assigns a host path for your data volume. However, the data isn't guaranteed to persist after the containers that are associated with it stop running. Windows containers can mount whole directories on the same drive as ``$env:ProgramData``. Windows containers can't mount directories on a different drive, and mount point can't be across drives. For example, you can mount ``C:\my\path:C:\my\path`` and ``D:\:D:\``, but not ``D:\my\path:C:\my\path`` or ``D:\:C:\my\path``. The ``HostVolumeProperties`` property specifies details on a container instance bind mount host volume.
  final pulumi.Input<HostVolumePropertiesResponse>? host;
  /// The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. When using a volume configured at launch, the ``name`` is required and must also be specified as the volume name in the ``ServiceVolumeConfiguration`` or ``TaskVolumeConfiguration`` parameter when creating your service or standalone task. For all other types of volumes, this name is referenced in the ``sourceVolume`` parameter of the ``mountPoints`` object in the container definition. When a volume is using the ``efsVolumeConfiguration``, the name is required.
  final pulumi.Input<String>? name;

  /// Creates a new [VolumeResponse].
  /// [configuredAtLaunch] Indicates whether the volume should be configured at launch time. This is used to create Amazon EBS volumes for standalone tasks or tasks created as part of a service. Each task definition revision may only have one volume configured at launch in the volume configuration. To configure a volume at launch time, use this task definition revision and specify a ``volumeConfigurations`` object when calling the ``CreateService``, ``UpdateService``, ``RunTask`` or ``StartTask`` APIs.
  /// [dockerVolumeConfiguration] This parameter is specified when you use Docker volumes. Windows containers only support the use of the ``local`` driver. To use bind mounts, specify the ``host`` parameter instead.  Docker volumes aren't supported by tasks run on FARGATElong. The ``DockerVolumeConfiguration`` property specifies a Docker volume configuration and is used when you use Docker volumes. Docker volumes are only supported when you are using the EC2 launch type. Windows containers only support the use of the ``local`` driver. To use bind mounts, specify a ``host`` instead.
  /// [efsVolumeConfiguration] This parameter is specified when you use an Amazon Elastic File System file system for task storage. This parameter is specified when you're using an Amazon Elastic File System file system for task storage. For more information, see [Amazon EFS volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/efs-volumes.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [fSxWindowsFileServerVolumeConfiguration] This parameter is specified when you use Amazon FSx for Windows File Server file system for task storage. This parameter is specified when you're using [Amazon FSx for Windows File Server](https://docs.aws.amazon.com/fsx/latest/WindowsGuide/what-is.html) file system for task storage. For more information and the input format, see [Amazon FSx for Windows File Server volumes](https://docs.aws.amazon.com/AmazonECS/latest/developerguide/wfsx-volumes.html) in the *Amazon Elastic Container Service Developer Guide*.
  /// [host] This parameter is specified when you use bind mount host volumes. The contents of the ``host`` parameter determine whether your bind mount host volume persists on the host container instance and where it's stored. If the ``host`` parameter is empty, then the Docker daemon assigns a host path for your data volume. However, the data isn't guaranteed to persist after the containers that are associated with it stop running. Windows containers can mount whole directories on the same drive as ``$env:ProgramData``. Windows containers can't mount directories on a different drive, and mount point can't be across drives. For example, you can mount ``C:\my\path:C:\my\path`` and ``D:\:D:\``, but not ``D:\my\path:C:\my\path`` or ``D:\:C:\my\path``. The ``HostVolumeProperties`` property specifies details on a container instance bind mount host volume.
  /// [name] The name of the volume. Up to 255 letters (uppercase and lowercase), numbers, underscores, and hyphens are allowed. When using a volume configured at launch, the ``name`` is required and must also be specified as the volume name in the ``ServiceVolumeConfiguration`` or ``TaskVolumeConfiguration`` parameter when creating your service or standalone task. For all other types of volumes, this name is referenced in the ``sourceVolume`` parameter of the ``mountPoints`` object in the container definition. When a volume is using the ``efsVolumeConfiguration``, the name is required.
  const VolumeResponse({
    this.configuredAtLaunch,
    this.dockerVolumeConfiguration,
    this.efsVolumeConfiguration,
    this.fSxWindowsFileServerVolumeConfiguration,
    this.host,
    this.name,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configuredAtLaunch': ?configuredAtLaunch,
      'dockerVolumeConfiguration': ?pulumi.Input.mapOptionalInputValue<DockerVolumeConfigurationResponse, Map<String, dynamic>>(dockerVolumeConfiguration, (value) => value.toMap()),
      'efsVolumeConfiguration': ?pulumi.Input.mapOptionalInputValue<EFSVolumeConfigurationResponse, Map<String, dynamic>>(efsVolumeConfiguration, (value) => value.toMap()),
      'fSxWindowsFileServerVolumeConfiguration': ?pulumi.Input.mapOptionalInputValue<FSxWindowsFileServerVolumeConfigurationResponse, Map<String, dynamic>>(fSxWindowsFileServerVolumeConfiguration, (value) => value.toMap()),
      'host': ?pulumi.Input.mapOptionalInputValue<HostVolumePropertiesResponse, Map<String, dynamic>>(host, (value) => value.toMap()),
      'name': ?name,
    };
  }

  factory VolumeResponse.fromMap(Map<String, dynamic> map) {
    return VolumeResponse(
      configuredAtLaunch: (() { final guardedValue = map['configuredAtLaunch']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      dockerVolumeConfiguration: (() { final guardedValue = map['dockerVolumeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(DockerVolumeConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      efsVolumeConfiguration: (() { final guardedValue = map['efsVolumeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(EFSVolumeConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      fSxWindowsFileServerVolumeConfiguration: (() { final guardedValue = map['fSxWindowsFileServerVolumeConfiguration']; if (guardedValue == null) return null; return pulumi.Input.fromValue(FSxWindowsFileServerVolumeConfigurationResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      host: (() { final guardedValue = map['host']; if (guardedValue == null) return null; return pulumi.Input.fromValue(HostVolumePropertiesResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
