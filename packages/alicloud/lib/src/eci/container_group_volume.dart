// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_volume_config_file_volume_config_file_to_path.dart';

class ContainerGroupVolume {
  /// The paths of the ConfigFile volume. See `config_file_volume_config_file_to_paths` below.
  /// > **NOTE:** Every volumes mounted must have `name` and `type` attributes.
  final List<ContainerGroupVolumeConfigFileVolumeConfigFileToPath>? configFileVolumeConfigFileToPaths;
  /// The ID of DiskVolume.
  final String? diskVolumeDiskId;
  /// The system type of DiskVolume.
  final String? diskVolumeFsType;
  /// The name of the FlexVolume driver.
  final String? flexVolumeDriver;
  /// The type of the mounted file system. The default value is determined by the script of FlexVolume.
  final String? flexVolumeFsType;
  /// The list of FlexVolume objects. Each object is a key-value pair contained in a JSON string.
  final String? flexVolumeOptions;
  /// The name of the volume.
  final String? name;
  /// The path to the NFS volume.
  final String? nfsVolumePath;
  /// The nfs volume read only. Default value: `false`.
  final bool? nfsVolumeReadOnly;
  /// The address of the NFS server.
  final String? nfsVolumeServer;
  /// The type of the volume.
  final String? type;

  /// Creates a new [ContainerGroupVolume].
  /// [configFileVolumeConfigFileToPaths] The paths of the ConfigFile volume. See `config_file_volume_config_file_to_paths` below.
  /// [diskVolumeDiskId] The ID of DiskVolume.
  /// [diskVolumeFsType] The system type of DiskVolume.
  /// [flexVolumeDriver] The name of the FlexVolume driver.
  /// [flexVolumeFsType] The type of the mounted file system. The default value is determined by the script of FlexVolume.
  /// [flexVolumeOptions] The list of FlexVolume objects. Each object is a key-value pair contained in a JSON string.
  /// [name] The name of the volume.
  /// [nfsVolumePath] The path to the NFS volume.
  /// [nfsVolumeReadOnly] The nfs volume read only. Default value: `false`.
  /// [nfsVolumeServer] The address of the NFS server.
  /// [type] The type of the volume.
  ContainerGroupVolume({
    this.configFileVolumeConfigFileToPaths,
    this.diskVolumeDiskId,
    this.diskVolumeFsType,
    this.flexVolumeDriver,
    this.flexVolumeFsType,
    this.flexVolumeOptions,
    this.name,
    this.nfsVolumePath,
    this.nfsVolumeReadOnly,
    this.nfsVolumeServer,
    this.type,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'configFileVolumeConfigFileToPaths': ?configFileVolumeConfigFileToPaths == null ? null : pulumi.Input.encodeList<ContainerGroupVolumeConfigFileVolumeConfigFileToPath, Map<String, dynamic>>(configFileVolumeConfigFileToPaths!, (value) => value.toMap()),
      'diskVolumeDiskId': ?diskVolumeDiskId,
      'diskVolumeFsType': ?diskVolumeFsType,
      'flexVolumeDriver': ?flexVolumeDriver,
      'flexVolumeFsType': ?flexVolumeFsType,
      'flexVolumeOptions': ?flexVolumeOptions,
      'name': ?name,
      'nfsVolumePath': ?nfsVolumePath,
      'nfsVolumeReadOnly': ?nfsVolumeReadOnly,
      'nfsVolumeServer': ?nfsVolumeServer,
      'type': ?type,
    };
  }

  factory ContainerGroupVolume.fromMap(Map<String, dynamic> map) {
    return ContainerGroupVolume(
      configFileVolumeConfigFileToPaths: map['configFileVolumeConfigFileToPaths'] == null ? null : pulumi.Input.decodeList<ContainerGroupVolumeConfigFileVolumeConfigFileToPath>(map['configFileVolumeConfigFileToPaths'], (value) => ContainerGroupVolumeConfigFileVolumeConfigFileToPath.fromMap((value as Map).cast<String, dynamic>())),
      diskVolumeDiskId: map['diskVolumeDiskId'] == null ? null : map['diskVolumeDiskId'] as String,
      diskVolumeFsType: map['diskVolumeFsType'] == null ? null : map['diskVolumeFsType'] as String,
      flexVolumeDriver: map['flexVolumeDriver'] == null ? null : map['flexVolumeDriver'] as String,
      flexVolumeFsType: map['flexVolumeFsType'] == null ? null : map['flexVolumeFsType'] as String,
      flexVolumeOptions: map['flexVolumeOptions'] == null ? null : map['flexVolumeOptions'] as String,
      name: map['name'] == null ? null : map['name'] as String,
      nfsVolumePath: map['nfsVolumePath'] == null ? null : map['nfsVolumePath'] as String,
      nfsVolumeReadOnly: map['nfsVolumeReadOnly'] == null ? null : map['nfsVolumeReadOnly'] as bool,
      nfsVolumeServer: map['nfsVolumeServer'] == null ? null : map['nfsVolumeServer'] as String,
      type: map['type'] == null ? null : map['type'] as String,
    );
  }
}

