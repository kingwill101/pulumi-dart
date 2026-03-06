// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_additional_volume_role.dart';

class ClusterAdditionalVolume {
  /// The queue of the nodes to which the additional file system is attached.
  final pulumi.Input<String>? jobQueue;
  /// The local directory on which the additional file system is mounted.
  final pulumi.Input<String>? localDirectory;
  /// The type of the cluster. Valid value: `PublicCloud`.
  final pulumi.Input<String>? location;
  /// The remote directory to which the additional file system is mounted.
  final pulumi.Input<String>? remoteDirectory;
  /// The roles. See `roles` below.
  final pulumi.Input<List<ClusterAdditionalVolumeRole>>? roles;
  /// The ID of the additional file system.
  final pulumi.Input<String>? volumeId;
  /// The mount options of the file system.
  final pulumi.Input<String>? volumeMountOption;
  /// The mount target of the additional file system.
  final pulumi.Input<String>? volumeMountpoint;
  /// The type of the protocol that is used by the additional file system. Valid values: `NFS`, `SMB`. Default value: `NFS`
  final pulumi.Input<String>? volumeProtocol;
  /// The type of the additional shared storage. Only NAS file systems are supported.
  final pulumi.Input<String>? volumeType;

  /// Creates a new [ClusterAdditionalVolume].
  /// [jobQueue] The queue of the nodes to which the additional file system is attached.
  /// [localDirectory] The local directory on which the additional file system is mounted.
  /// [location] The type of the cluster. Valid value: `PublicCloud`.
  /// [remoteDirectory] The remote directory to which the additional file system is mounted.
  /// [roles] The roles. See `roles` below.
  /// [volumeId] The ID of the additional file system.
  /// [volumeMountOption] The mount options of the file system.
  /// [volumeMountpoint] The mount target of the additional file system.
  /// [volumeProtocol] The type of the protocol that is used by the additional file system. Valid values: `NFS`, `SMB`. Default value: `NFS`
  /// [volumeType] The type of the additional shared storage. Only NAS file systems are supported.
  const ClusterAdditionalVolume({
    this.jobQueue,
    this.localDirectory,
    this.location,
    this.remoteDirectory,
    this.roles,
    this.volumeId,
    this.volumeMountOption,
    this.volumeMountpoint,
    this.volumeProtocol,
    this.volumeType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'jobQueue': ?jobQueue,
      'localDirectory': ?localDirectory,
      'location': ?location,
      'remoteDirectory': ?remoteDirectory,
      'roles': ?pulumi.Input.mapOptionalInputValue<List<ClusterAdditionalVolumeRole>, List<Map<String, dynamic>>>(roles, (value) => pulumi.Input.encodeList<ClusterAdditionalVolumeRole, Map<String, dynamic>>(value, (value) => value.toMap())),
      'volumeId': ?volumeId,
      'volumeMountOption': ?volumeMountOption,
      'volumeMountpoint': ?volumeMountpoint,
      'volumeProtocol': ?volumeProtocol,
      'volumeType': ?volumeType,
    };
  }

  factory ClusterAdditionalVolume.fromMap(Map<String, dynamic> map) {
    return ClusterAdditionalVolume(
      jobQueue: (() { final guardedValue = map['jobQueue']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      localDirectory: (() { final guardedValue = map['localDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      location: (() { final guardedValue = map['location']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      remoteDirectory: (() { final guardedValue = map['remoteDirectory']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      roles: (() { final guardedValue = map['roles']; if (guardedValue == null) return null; return pulumi.Input.fromValue(pulumi.Input.decodeList<ClusterAdditionalVolumeRole>(guardedValue, (value) => ClusterAdditionalVolumeRole.fromMap((value as Map).cast<String, dynamic>()))); })(),
      volumeId: (() { final guardedValue = map['volumeId']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMountOption: (() { final guardedValue = map['volumeMountOption']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeMountpoint: (() { final guardedValue = map['volumeMountpoint']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeProtocol: (() { final guardedValue = map['volumeProtocol']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      volumeType: (() { final guardedValue = map['volumeType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}

