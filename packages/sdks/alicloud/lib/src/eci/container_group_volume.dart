// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'container_group_volume_config_file_volume_config_file_to_path.dart';

class ContainerGroupVolume {
  /// The paths of the ConfigFile volume. See `config_file_volume_config_file_to_paths` below.
  /// &gt; **NOTE:** Every volumes mounted must have `name` and `type` attributes.
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
      configFileVolumeConfigFileToPaths: (() { final guardedValue = map['configFileVolumeConfigFileToPaths']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ContainerGroupVolumeConfigFileVolumeConfigFileToPath>(guardedValue, (value) => ContainerGroupVolumeConfigFileVolumeConfigFileToPath.fromMap((value as Map).cast<String, dynamic>()))); })(),
      diskVolumeDiskId: (() { final guardedValue = map['diskVolumeDiskId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      diskVolumeFsType: (() { final guardedValue = map['diskVolumeFsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flexVolumeDriver: (() { final guardedValue = map['flexVolumeDriver']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flexVolumeFsType: (() { final guardedValue = map['flexVolumeFsType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      flexVolumeOptions: (() { final guardedValue = map['flexVolumeOptions']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      name: (() { final guardedValue = map['name']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsVolumePath: (() { final guardedValue = map['nfsVolumePath']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      nfsVolumeReadOnly: (() { final guardedValue = map['nfsVolumeReadOnly']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as bool); })(),
      nfsVolumeServer: (() { final guardedValue = map['nfsVolumeServer']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      type: (() { final guardedValue = map['type']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

