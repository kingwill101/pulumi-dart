// ignore_for_file: unused_element, unnecessary_cast

import 'secret_reference_patch.dart';

/// Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes support ownership management and SELinux relabeling.
class RBDPersistentVolumeSourcePatch {
  /// fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
  final String? fsType;
  /// image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String? image;
  /// keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String? keyring;
  /// monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final List<String>? monitors;
  /// pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String? pool;
  /// readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final bool? readOnly;
  /// secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final SecretReferencePatch? secretRef;
  /// user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  final String? user;

  /// Creates a new [RBDPersistentVolumeSourcePatch].
  /// [fsType] fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the filesystem type is supported by the host operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified. More info: https://kubernetes.io/docs/concepts/storage/volumes#rbd
  /// [image] image is the rados image name. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [keyring] keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [monitors] monitors is a collection of Ceph monitors. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [pool] pool is the rados pool name. Default is rbd. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [readOnly] readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [secretRef] secretRef is name of the authentication secret for RBDUser. If provided overrides keyring. Default is nil. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  /// [user] user is the rados user name. Default is admin. More info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
  RBDPersistentVolumeSourcePatch({
    this.fsType,
    this.image,
    this.keyring,
    this.monitors,
    this.pool,
    this.readOnly,
    this.secretRef,
    this.user,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'image': ?image,
      'keyring': ?keyring,
      'monitors': ?monitors,
      'pool': ?pool,
      'readOnly': ?readOnly,
      'secretRef': ?secretRef == null ? null : secretRef!.toMap(),
      'user': ?user,
    };
  }

  factory RBDPersistentVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return RBDPersistentVolumeSourcePatch(
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      image: map['image'] == null ? null : map['image'] as String,
      keyring: map['keyring'] == null ? null : map['keyring'] as String,
      monitors: map['monitors'] == null ? null : (map['monitors'] as List).cast<String>(),
      pool: map['pool'] == null ? null : map['pool'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretRef: map['secretRef'] == null ? null : SecretReferencePatch.fromMap((map['secretRef'] as Map).cast<String, dynamic>()),
      user: map['user'] == null ? null : map['user'] as String,
    );
  }
}

