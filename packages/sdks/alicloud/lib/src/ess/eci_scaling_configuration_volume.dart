// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_volume_config_file_volume_config_file_to_path.dart';

class EciScalingConfigurationVolume {
  /// ConfigFileVolumeConfigFileToPaths.
  /// See `config_file_volume_config_file_to_paths` below for details.
  final pulumi.Input<List<EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath>>? configFileVolumeConfigFileToPaths;
  /// The default permissions on the ConfigFileVolume.
  final pulumi.Input<int>? configFileVolumeDefaultMode;
  /// The ID of DiskVolume.
  final pulumi.Input<String>? diskVolumeDiskId;
  /// The disk size of DiskVolume.
  final pulumi.Input<int>? diskVolumeDiskSize;
  /// The system type of DiskVolume.
  final pulumi.Input<String>? diskVolumeFsType;
  /// The storage medium of the EmptyDirVolume. If you leave this parameter empty, the file system of the node is used as the storage medium. If you set this parameter to memory, the memory is used as the storage medium.
  final pulumi.Input<String>? emptyDirVolumeMedium;
  /// The storage size of the EmptyDirVolume. Unit: GiB or MiB.
  final pulumi.Input<String>? emptyDirVolumeSizeLimit;
  /// The name of the FlexVolume driver.
  final pulumi.Input<String>? flexVolumeDriver;
  /// The type of the mounted file system. The default value is determined by the script
  /// of FlexVolume.
  final pulumi.Input<String>? flexVolumeFsType;
  /// The list of FlexVolume objects. Each object is a key-value pair contained in a JSON
  /// string.
  final pulumi.Input<String>? flexVolumeOptions;
  /// The absolute path on the host.
  final pulumi.Input<String>? hostPathVolumePath;
  /// The type of the host path. Examples: File, Directory, and Socket.
  final pulumi.Input<String>? hostPathVolumeType;
  /// The name of the volume.
  final pulumi.Input<String>? name;
  /// The path to the NFS volume.
  final pulumi.Input<String>? nfsVolumePath;
  /// The nfs volume read only. Default to `false`.
  final pulumi.Input<bool>? nfsVolumeReadOnly;
  /// The address of the NFS server.
  ///
  /// &gt; **NOTE:** Every volume mounted must have a name and type attributes.
  final pulumi.Input<String>? nfsVolumeServer;
  /// The type of the volume.
  final pulumi.Input<String>? type;

  /// Creates a new [EciScalingConfigurationVolume].
  /// [configFileVolumeConfigFileToPaths] ConfigFileVolumeConfigFileToPaths.
  /// [configFileVolumeDefaultMode] The default permissions on the ConfigFileVolume.
  /// [diskVolumeDiskId] The ID of DiskVolume.
  /// [diskVolumeDiskSize] The disk size of DiskVolume.
  /// [diskVolumeFsType] The system type of DiskVolume.
  /// [emptyDirVolumeMedium] The storage medium of the EmptyDirVolume. If you leave this parameter empty, the file system of the node is used as the storage medium. If you set this parameter to memory, the memory is used as the storage medium.
  /// [emptyDirVolumeSizeLimit] The storage size of the EmptyDirVolume. Unit: GiB or MiB.
  /// [flexVolumeDriver] The name of the FlexVolume driver.
  /// [flexVolumeFsType] The type of the mounted file system. The default value is determined by the script
  /// [flexVolumeOptions] The list of FlexVolume objects. Each object is a key-value pair contained in a JSON
  /// [hostPathVolumePath] The absolute path on the host.
  /// [hostPathVolumeType] The type of the host path. Examples: File, Directory, and Socket.
  /// [name] The name of the volume.
  /// [nfsVolumePath] The path to the NFS volume.
  /// [nfsVolumeReadOnly] The nfs volume read only. Default to `false`.
  /// [nfsVolumeServer] The address of the NFS server.
  /// [type] The type of the volume.
  EciScalingConfigurationVolume({
    this.configFileVolumeConfigFileToPaths,
    this.configFileVolumeDefaultMode,
    this.diskVolumeDiskId,
    this.diskVolumeDiskSize,
    this.diskVolumeFsType,
    this.emptyDirVolumeMedium,
    this.emptyDirVolumeSizeLimit,
    this.flexVolumeDriver,
    this.flexVolumeFsType,
    this.flexVolumeOptions,
    this.hostPathVolumePath,
    this.hostPathVolumeType,
    this.name,
    this.nfsVolumePath,
    this.nfsVolumeReadOnly,
    this.nfsVolumeServer,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFileVolumeConfigFileToPaths': ?pulumi.Input.mapOptionalInputValue<List<EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath>, List<Map<String, dynamic>>>(configFileVolumeConfigFileToPaths, (value) => pulumi.Input.encodeList<EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath, Map<String, dynamic>>(value, (value) => value.toMap())),
      'configFileVolumeDefaultMode': ?configFileVolumeDefaultMode,
      'diskVolumeDiskId': ?diskVolumeDiskId,
      'diskVolumeDiskSize': ?diskVolumeDiskSize,
      'diskVolumeFsType': ?diskVolumeFsType,
      'emptyDirVolumeMedium': ?emptyDirVolumeMedium,
      'emptyDirVolumeSizeLimit': ?emptyDirVolumeSizeLimit,
      'flexVolumeDriver': ?flexVolumeDriver,
      'flexVolumeFsType': ?flexVolumeFsType,
      'flexVolumeOptions': ?flexVolumeOptions,
      'hostPathVolumePath': ?hostPathVolumePath,
      'hostPathVolumeType': ?hostPathVolumeType,
      'name': ?name,
      'nfsVolumePath': ?nfsVolumePath,
      'nfsVolumeReadOnly': ?nfsVolumeReadOnly,
      'nfsVolumeServer': ?nfsVolumeServer,
      'type': ?type,
    };
  }

  factory EciScalingConfigurationVolume.fromMap(Map<String, dynamic> map) {
    return EciScalingConfigurationVolume(
      configFileVolumeConfigFileToPaths: (() { final guardedValue = map['configFileVolumeConfigFileToPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath>(guardedValue, (value) => EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      configFileVolumeDefaultMode: (() { final guardedValue = map['configFileVolumeDefaultMode']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskVolumeDiskId: (() { final guardedValue = map['diskVolumeDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskVolumeDiskSize: (() { final guardedValue = map['diskVolumeDiskSize']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as int); })(),
      diskVolumeFsType: (() { final guardedValue = map['diskVolumeFsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emptyDirVolumeMedium: (() { final guardedValue = map['emptyDirVolumeMedium']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      emptyDirVolumeSizeLimit: (() { final guardedValue = map['emptyDirVolumeSizeLimit']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flexVolumeDriver: (() { final guardedValue = map['flexVolumeDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flexVolumeFsType: (() { final guardedValue = map['flexVolumeFsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flexVolumeOptions: (() { final guardedValue = map['flexVolumeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPathVolumePath: (() { final guardedValue = map['hostPathVolumePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      hostPathVolumeType: (() { final guardedValue = map['hostPathVolumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsVolumePath: (() { final guardedValue = map['nfsVolumePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsVolumeReadOnly: (() { final guardedValue = map['nfsVolumeReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nfsVolumeServer: (() { final guardedValue = map['nfsVolumeServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

