// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

class ClusterV2SharedStorage {
  /// The ID of the mounted file system.
  final pulumi.Input<String>? fileSystemId;
  /// The local Mount directory where the file system is mounted.
  final pulumi.Input<String>? mountDirectory;
  /// Storage mount options for the mounted file system.
  final pulumi.Input<String>? mountOptions;
  /// The mount point address of the mounted file system.
  final pulumi.Input<String>? mountTargetDomain;
  /// The remote directory to which the mounted file system needs to be mounted.
  final pulumi.Input<String>? nasDirectory;
  /// The protocol type of the mounted file system. Value range:
  /// - NFS
  /// - SMB
  final pulumi.Input<String>? protocolType;

  /// Creates a new [ClusterV2SharedStorage].
  /// [fileSystemId] The ID of the mounted file system.
  /// [mountDirectory] The local Mount directory where the file system is mounted.
  /// [mountOptions] Storage mount options for the mounted file system.
  /// [mountTargetDomain] The mount point address of the mounted file system.
  /// [nasDirectory] The remote directory to which the mounted file system needs to be mounted.
  /// [protocolType] The protocol type of the mounted file system. Value range:
  ClusterV2SharedStorage({
    this.fileSystemId,
    this.mountDirectory,
    this.mountOptions,
    this.mountTargetDomain,
    this.nasDirectory,
    this.protocolType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fileSystemId': ?fileSystemId,
      'mountDirectory': ?mountDirectory,
      'mountOptions': ?mountOptions,
      'mountTargetDomain': ?mountTargetDomain,
      'nasDirectory': ?nasDirectory,
      'protocolType': ?protocolType,
    };
  }

  factory ClusterV2SharedStorage.fromMap(Map<String, dynamic> map) {
    return ClusterV2SharedStorage(
      fileSystemId: map['fileSystemId'] == null ? null : (map['fileSystemId'] as String).input(),
      mountDirectory: map['mountDirectory'] == null ? null : (map['mountDirectory'] as String).input(),
      mountOptions: map['mountOptions'] == null ? null : (map['mountOptions'] as String).input(),
      mountTargetDomain: map['mountTargetDomain'] == null ? null : (map['mountTargetDomain'] as String).input(),
      nasDirectory: map['nasDirectory'] == null ? null : (map['nasDirectory'] as String).input(),
      protocolType: map['protocolType'] == null ? null : (map['protocolType'] as String).input(),
    );
  }
}

