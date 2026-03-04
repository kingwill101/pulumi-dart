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
      fileSystemId: (() {
        final guardedValue = map['fileSystemId'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountDirectory: (() {
        final guardedValue = map['mountDirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountOptions: (() {
        final guardedValue = map['mountOptions'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      mountTargetDomain: (() {
        final guardedValue = map['mountTargetDomain'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      nasDirectory: (() {
        final guardedValue = map['nasDirectory'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
      protocolType: (() {
        final guardedValue = map['protocolType'];
        if (guardedValue == null) return null;
        return pulumi.Input.fromValue(guardedValue as String);
      })(),
    );
  }
}
