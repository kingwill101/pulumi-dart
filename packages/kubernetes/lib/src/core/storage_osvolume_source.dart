// ignore_for_file: unused_element, unnecessary_cast

import 'local_object_reference.dart';

/// Represents a StorageOS persistent volume resource.
class StorageOSVolumeSource {
  /// fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  final String? fsType;
  /// readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;
  /// secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
  final LocalObjectReference? secretRef;
  /// volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
  final String? volumeName;
  /// volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
  final String? volumeNamespace;

  /// Creates a new [StorageOSVolumeSource].
  /// [fsType] fsType is the filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if unspecified.
  /// [readOnly] readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretRef] secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If not specified, default values will be attempted.
  /// [volumeName] volumeName is the human-readable name of the StorageOS volume.  Volume names are only unique within a namespace.
  /// [volumeNamespace] volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to override the default behaviour. Set to "default" if you are not using namespaces within StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
  StorageOSVolumeSource({
    this.fsType,
    this.readOnly,
    this.secretRef,
    this.volumeName,
    this.volumeNamespace,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'fsType': ?fsType,
      'readOnly': ?readOnly,
      'secretRef': ?secretRef == null ? null : secretRef!.toMap(),
      'volumeName': ?volumeName,
      'volumeNamespace': ?volumeNamespace,
    };
  }

  factory StorageOSVolumeSource.fromMap(Map<String, dynamic> map) {
    return StorageOSVolumeSource(
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretRef: map['secretRef'] == null ? null : LocalObjectReference.fromMap((map['secretRef'] as Map).cast<String, dynamic>()),
      volumeName: map['volumeName'] == null ? null : map['volumeName'] as String,
      volumeNamespace: map['volumeNamespace'] == null ? null : map['volumeNamespace'] as String,
    );
  }
}

