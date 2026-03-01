// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference_patch.dart';

/// Represents a cinder volume resource in Openstack. A Cinder volume must exist before mounting to a container. The volume must also be in the same region as the kubelet. Cinder volumes support ownership management and SELinux relabeling.
class CinderVolumeSourcePatch {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final String? fsType;
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final bool? readOnly;
  /// secretRef is optional: points to a secret object containing parameters used to connect to OpenStack.
  final LocalObjectReferencePatch? secretRef;
  /// volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  final String? volumeID;

  /// Creates a new [CinderVolumeSourcePatch].
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  /// [secretRef] secretRef is optional: points to a secret object containing parameters used to connect to OpenStack.
  /// [volumeID] volumeID used to identify the volume in cinder. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
  CinderVolumeSourcePatch({
    this.fsType,
    this.readOnly,
    this.secretRef,
    this.volumeID,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'readOnly': ?readOnly,
      'secretRef': ?secretRef == null ? null : secretRef!.toMap(),
      'volumeID': ?volumeID,
    };
  }

  factory CinderVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return CinderVolumeSourcePatch(
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretRef: map['secretRef'] == null ? null : LocalObjectReferencePatch.fromMap((map['secretRef'] as Map).cast<String, dynamic>()),
      volumeID: map['volumeID'] == null ? null : map['volumeID'] as String,
    );
  }
}

