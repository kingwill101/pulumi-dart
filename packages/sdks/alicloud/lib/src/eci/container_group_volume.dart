// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_volume_config_file_volume_config_file_to_path.dart';

class ContainerGroupVolume {
  /// The paths of the ConfigFile volume. See `config_file_volume_config_file_to_paths` below.
  /// > **NOTE:** Every volumes mounted must have `name` and `type` attributes.
  final pulumi.Input<List<ContainerGroupVolumeConfigFileVolumeConfigFileToPath>>? configFileVolumeConfigFileToPaths;
  /// The ID of DiskVolume.
  final pulumi.Input<String>? diskVolumeDiskId;
  /// The system type of DiskVolume.
  final pulumi.Input<String>? diskVolumeFsType;
  /// The name of the FlexVolume driver.
  final pulumi.Input<String>? flexVolumeDriver;
  /// The type of the mounted file system. The default value is determined by the script of FlexVolume.
  final pulumi.Input<String>? flexVolumeFsType;
  /// The list of FlexVolume objects. Each object is a key-value pair contained in a JSON string.
  final pulumi.Input<String>? flexVolumeOptions;
  /// The name of the volume.
  final pulumi.Input<String>? name;
  /// The path to the NFS volume.
  final pulumi.Input<String>? nfsVolumePath;
  /// The nfs volume read only. Default value: `false`.
  final pulumi.Input<bool>? nfsVolumeReadOnly;
  /// The address of the NFS server.
  final pulumi.Input<String>? nfsVolumeServer;
  /// The type of the volume.
  final pulumi.Input<String>? type;

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
      'configFileVolumeConfigFileToPaths': ?pulumi.Input.mapOptionalInputValue<List<ContainerGroupVolumeConfigFileVolumeConfigFileToPath>, List<Map<String, dynamic>>>(configFileVolumeConfigFileToPaths, (value) => pulumi.Input.encodeList<ContainerGroupVolumeConfigFileVolumeConfigFileToPath, Map<String, dynamic>>(value, (value) => value.toMap())),
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
      configFileVolumeConfigFileToPaths: map['configFileVolumeConfigFileToPaths'] == null ? null : (pulumi.Input.decodeList<ContainerGroupVolumeConfigFileVolumeConfigFileToPath>(map['configFileVolumeConfigFileToPaths'], (value) => ContainerGroupVolumeConfigFileVolumeConfigFileToPath.fromMap((value as Map).cast<String, dynamic>()))).input(),
      diskVolumeDiskId: map['diskVolumeDiskId'] == null ? null : (map['diskVolumeDiskId'] as String).input(),
      diskVolumeFsType: map['diskVolumeFsType'] == null ? null : (map['diskVolumeFsType'] as String).input(),
      flexVolumeDriver: map['flexVolumeDriver'] == null ? null : (map['flexVolumeDriver'] as String).input(),
      flexVolumeFsType: map['flexVolumeFsType'] == null ? null : (map['flexVolumeFsType'] as String).input(),
      flexVolumeOptions: map['flexVolumeOptions'] == null ? null : (map['flexVolumeOptions'] as String).input(),
      name: map['name'] == null ? null : (map['name'] as String).input(),
      nfsVolumePath: map['nfsVolumePath'] == null ? null : (map['nfsVolumePath'] as String).input(),
      nfsVolumeReadOnly: map['nfsVolumeReadOnly'] == null ? null : (map['nfsVolumeReadOnly'] as bool).input(),
      nfsVolumeServer: map['nfsVolumeServer'] == null ? null : (map['nfsVolumeServer'] as String).input(),
      type: map['type'] == null ? null : (map['type'] as String).input(),
    );
  }
}

