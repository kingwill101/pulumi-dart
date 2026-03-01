// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'get_container_groups_group_volume_config_file_volume_config_file_to_path.dart';

class GetContainerGroupsGroupVolume {
  /// The list of configuration file paths.
  final List<GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath> configFileVolumeConfigFileToPaths;
  /// The ID of DiskVolume.
  final String diskVolumeDiskId;
  /// The type of DiskVolume.
  final String diskVolumeFsType;
  /// The name of the FlexVolume driver.
  final String flexVolumeDriver;
  /// The type of the mounted file system. The default value is determined by the script of FlexVolume.
  final String flexVolumeFsType;
  /// The list of FlexVolume objects.
  final String flexVolumeOptions;
  /// The name of the volume.
  final String name;
  /// The path to the NFS volume.
  final String nfsVolumePath;
  /// Default value: `false`.
  final bool nfsVolumeReadOnly;
  /// The address of the NFS server.
  final String nfsVolumeServer;
  /// The type of the volume. Currently, the following types of volumes are supported: EmptyDirVolume, NFSVolume, ConfigFileVolume, and FlexVolume.
  final String type;

  /// Creates a new [GetContainerGroupsGroupVolume].
  /// [configFileVolumeConfigFileToPaths] The list of configuration file paths.
  /// [diskVolumeDiskId] The ID of DiskVolume.
  /// [diskVolumeFsType] The type of DiskVolume.
  /// [flexVolumeDriver] The name of the FlexVolume driver.
  /// [flexVolumeFsType] The type of the mounted file system. The default value is determined by the script of FlexVolume.
  /// [flexVolumeOptions] The list of FlexVolume objects.
  /// [name] The name of the volume.
  /// [nfsVolumePath] The path to the NFS volume.
  /// [nfsVolumeReadOnly] Default value: `false`.
  /// [nfsVolumeServer] The address of the NFS server.
  /// [type] The type of the volume. Currently, the following types of volumes are supported: EmptyDirVolume, NFSVolume, ConfigFileVolume, and FlexVolume.
  GetContainerGroupsGroupVolume({
    required this.configFileVolumeConfigFileToPaths,
    required this.diskVolumeDiskId,
    required this.diskVolumeFsType,
    required this.flexVolumeDriver,
    required this.flexVolumeFsType,
    required this.flexVolumeOptions,
    required this.name,
    required this.nfsVolumePath,
    required this.nfsVolumeReadOnly,
    required this.nfsVolumeServer,
    required this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFileVolumeConfigFileToPaths': pulumi.Input.encodeList<GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath, Map<String, dynamic>>(configFileVolumeConfigFileToPaths, (value) => value.toMap()),
      'diskVolumeDiskId': diskVolumeDiskId,
      'diskVolumeFsType': diskVolumeFsType,
      'flexVolumeDriver': flexVolumeDriver,
      'flexVolumeFsType': flexVolumeFsType,
      'flexVolumeOptions': flexVolumeOptions,
      'name': name,
      'nfsVolumePath': nfsVolumePath,
      'nfsVolumeReadOnly': nfsVolumeReadOnly,
      'nfsVolumeServer': nfsVolumeServer,
      'type': type,
    };
  }

  factory GetContainerGroupsGroupVolume.fromMap(Map<String, dynamic> map) {
    return GetContainerGroupsGroupVolume(
      configFileVolumeConfigFileToPaths: pulumi.Input.decodeList<GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath>(map['configFileVolumeConfigFileToPaths'], (value) => GetContainerGroupsGroupVolumeConfigFileVolumeConfigFileToPath.fromMap((value as Map).cast<String, dynamic>())),
      diskVolumeDiskId: map['diskVolumeDiskId'] as String,
      diskVolumeFsType: map['diskVolumeFsType'] as String,
      flexVolumeDriver: map['flexVolumeDriver'] as String,
      flexVolumeFsType: map['flexVolumeFsType'] as String,
      flexVolumeOptions: map['flexVolumeOptions'] as String,
      name: map['name'] as String,
      nfsVolumePath: map['nfsVolumePath'] as String,
      nfsVolumeReadOnly: map['nfsVolumeReadOnly'] as bool,
      nfsVolumeServer: map['nfsVolumeServer'] as String,
      type: map['type'] as String,
    );
  }
}

