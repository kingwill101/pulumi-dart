// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'cluster_additional_volume_role.dart';

class ClusterAdditionalVolume {
  /// The queue of the nodes to which the additional file system is attached.
  final String? jobQueue;
  /// The local directory on which the additional file system is mounted.
  final String? localDirectory;
  /// The type of the cluster. Valid value: `PublicCloud`.
  final String? location;
  /// The remote directory to which the additional file system is mounted.
  final String? remoteDirectory;
  /// The roles. See `roles` below.
  final List<ClusterAdditionalVolumeRole>? roles;
  /// The ID of the additional file system.
  final String? volumeId;
  /// The mount options of the file system.
  final String? volumeMountOption;
  /// The mount target of the additional file system.
  final String? volumeMountpoint;
  /// The type of the protocol that is used by the additional file system. Valid values: `NFS`, `SMB`. Default value: `NFS`
  final String? volumeProtocol;
  /// The type of the additional shared storage. Only NAS file systems are supported.
  final String? volumeType;

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
      'roles': ?roles == null ? null : pulumi.Input.encodeList<ClusterAdditionalVolumeRole, Map<String, dynamic>>(roles!, (value) => value.toMap()),
      'volumeId': ?volumeId,
      'volumeMountOption': ?volumeMountOption,
      'volumeMountpoint': ?volumeMountpoint,
      'volumeProtocol': ?volumeProtocol,
      'volumeType': ?volumeType,
    };
  }

  factory ClusterAdditionalVolume.fromMap(Map<String, dynamic> map) {
    return ClusterAdditionalVolume(
      jobQueue: map['jobQueue'] == null ? null : map['jobQueue'] as String,
      localDirectory: map['localDirectory'] == null ? null : map['localDirectory'] as String,
      location: map['location'] == null ? null : map['location'] as String,
      remoteDirectory: map['remoteDirectory'] == null ? null : map['remoteDirectory'] as String,
      roles: map['roles'] == null ? null : pulumi.Input.decodeList<ClusterAdditionalVolumeRole>(map['roles'], (value) => ClusterAdditionalVolumeRole.fromMap((value as Map).cast<String, dynamic>())),
      volumeId: map['volumeId'] == null ? null : map['volumeId'] as String,
      volumeMountOption: map['volumeMountOption'] == null ? null : map['volumeMountOption'] as String,
      volumeMountpoint: map['volumeMountpoint'] == null ? null : map['volumeMountpoint'] as String,
      volumeProtocol: map['volumeProtocol'] == null ? null : map['volumeProtocol'] as String,
      volumeType: map['volumeType'] == null ? null : map['volumeType'] as String,
    );
  }
}

