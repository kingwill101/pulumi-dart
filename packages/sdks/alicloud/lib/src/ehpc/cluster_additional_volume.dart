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
  ClusterAdditionalVolume({
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
      jobQueue: map['jobQueue'] == null ? null : (map['jobQueue'] as String).input(),
      localDirectory: map['localDirectory'] == null ? null : (map['localDirectory'] as String).input(),
      location: map['location'] == null ? null : (map['location'] as String).input(),
      remoteDirectory: map['remoteDirectory'] == null ? null : (map['remoteDirectory'] as String).input(),
      roles: map['roles'] == null ? null : (pulumi.Input.decodeList<ClusterAdditionalVolumeRole>(map['roles'], (value) => ClusterAdditionalVolumeRole.fromMap((value as Map).cast<String, dynamic>()))).input(),
      volumeId: map['volumeId'] == null ? null : (map['volumeId'] as String).input(),
      volumeMountOption: map['volumeMountOption'] == null ? null : (map['volumeMountOption'] as String).input(),
      volumeMountpoint: map['volumeMountpoint'] == null ? null : (map['volumeMountpoint'] as String).input(),
      volumeProtocol: map['volumeProtocol'] == null ? null : (map['volumeProtocol'] as String).input(),
      volumeType: map['volumeType'] == null ? null : (map['volumeType'] as String).input(),
    );
  }
}

