// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'eci_scaling_configuration_volume_config_file_volume_config_file_to_path.dart';

class EciScalingConfigurationVolume {
  /// ConfigFileVolumeConfigFileToPaths.
  /// See `config_file_volume_config_file_to_paths` below for details.
  final List<EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath>? configFileVolumeConfigFileToPaths;
  /// The default permissions on the ConfigFileVolume.
  final int? configFileVolumeDefaultMode;
  /// The ID of DiskVolume.
  final String? diskVolumeDiskId;
  /// The disk size of DiskVolume.
  final int? diskVolumeDiskSize;
  /// The system type of DiskVolume.
  final String? diskVolumeFsType;
  /// The storage medium of the EmptyDirVolume. If you leave this parameter empty, the file system of the node is used as the storage medium. If you set this parameter to memory, the memory is used as the storage medium.
  final String? emptyDirVolumeMedium;
  /// The storage size of the EmptyDirVolume. Unit: GiB or MiB.
  final String? emptyDirVolumeSizeLimit;
  /// The name of the FlexVolume driver.
  final String? flexVolumeDriver;
  /// The type of the mounted file system. The default value is determined by the script
  /// of FlexVolume.
  final String? flexVolumeFsType;
  /// The list of FlexVolume objects. Each object is a key-value pair contained in a JSON
  /// string.
  final String? flexVolumeOptions;
  /// The absolute path on the host.
  final String? hostPathVolumePath;
  /// The type of the host path. Examples: File, Directory, and Socket.
  final String? hostPathVolumeType;
  /// The name of the volume.
  final String? name;
  /// The path to the NFS volume.
  final String? nfsVolumePath;
  /// The nfs volume read only. Default to `false`.
  final bool? nfsVolumeReadOnly;
  /// The address of the NFS server.
  ///
  /// > **NOTE:** Every volume mounted must have a name and type attributes.
  final String? nfsVolumeServer;
  /// The type of the volume.
  final String? type;

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
      'configFileVolumeConfigFileToPaths': ?configFileVolumeConfigFileToPaths == null ? null : pulumi.Input.encodeList<EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath, Map<String, dynamic>>(configFileVolumeConfigFileToPaths!, (value) => value.toMap()),
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
      configFileVolumeConfigFileToPaths: map['configFileVolumeConfigFileToPaths'] == null ? null : pulumi.Input.decodeList<EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath>(map['configFileVolumeConfigFileToPaths'], (value) => EciScalingConfigurationVolumeConfigFileVolumeConfigFileToPath.fromMap((value as Map).cast<String, dynamic>())),
      configFileVolumeDefaultMode: map['configFileVolumeDefaultMode'] == null ? null : map['configFileVolumeDefaultMode'] as int,
      diskVolumeDiskId: map['diskVolumeDiskId'] == null ? null : map['diskVolumeDiskId'] as String,
      diskVolumeDiskSize: map['diskVolumeDiskSize'] == null ? null : map['diskVolumeDiskSize'] as int,
      diskVolumeFsType: map['diskVolumeFsType'] == null ? null : map['diskVolumeFsType'] as String,
      emptyDirVolumeMedium: map['emptyDirVolumeMedium'] == null ? null : map['emptyDirVolumeMedium'] as String,
      emptyDirVolumeSizeLimit: map['emptyDirVolumeSizeLimit'] == null ? null : map['emptyDirVolumeSizeLimit'] as String,
      flexVolumeDriver: map['flexVolumeDriver'] == null ? null : map['flexVolumeDriver'] as String,
      flexVolumeFsType: map['flexVolumeFsType'] == null ? null : map['flexVolumeFsType'] as String,
      flexVolumeOptions: map['flexVolumeOptions'] == null ? null : map['flexVolumeOptions'] as String,
      hostPathVolumePath: map['hostPathVolumePath'] == null ? null : map['hostPathVolumePath'] as String,
      hostPathVolumeType: map['hostPathVolumeType'] == null ? null : map['hostPathVolumeType'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nfsVolumePath: map['nfsVolumePath'] == null ? null : map['nfsVolumePath'] as String,
      nfsVolumeReadOnly: map['nfsVolumeReadOnly'] == null ? null : map['nfsVolumeReadOnly'] as bool,
      nfsVolumeServer: map['nfsVolumeServer'] == null ? null : map['nfsVolumeServer'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

