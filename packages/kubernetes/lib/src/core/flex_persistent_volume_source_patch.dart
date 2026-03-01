// ignore_for_file: unused_element, unnecessary_cast

import 'secret_reference_patch.dart';

/// FlexPersistentVolumeSource represents a generic persistent volume resource that is provisioned/attached using an exec based plugin.
class FlexPersistentVolumeSourcePatch {
  /// driver is the name of the driver to use for this volume.
  final String? driver;
  /// fsType is the Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  final String? fsType;
  /// options is Optional: this field holds extra command options if any.
  final Map<String, String>? options;
  /// readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  final bool? readOnly;
  /// secretRef is Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  final SecretReferencePatch? secretRef;

  /// Creates a new [FlexPersistentVolumeSourcePatch].
  /// [driver] driver is the name of the driver to use for this volume.
  /// [fsType] fsType is the Filesystem type to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume script.
  /// [options] options is Optional: this field holds extra command options if any.
  /// [readOnly] readOnly is Optional: defaults to false (read/write). ReadOnly here will force the ReadOnly setting in VolumeMounts.
  /// [secretRef] secretRef is Optional: SecretRef is reference to the secret object containing sensitive information to pass to the plugin scripts. This may be empty if no secret object is specified. If the secret object contains more than one secret, all secrets are passed to the plugin scripts.
  FlexPersistentVolumeSourcePatch({
    this.driver,
    this.fsType,
    this.options,
    this.readOnly,
    this.secretRef,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'driver': ?driver,
      'fsType': ?fsType,
      'options': ?options,
      'readOnly': ?readOnly,
      'secretRef': ?secretRef == null ? null : secretRef!.toMap(),
    };
  }

  factory FlexPersistentVolumeSourcePatch.fromMap(Map<String, dynamic> map) {
    return FlexPersistentVolumeSourcePatch(
      driver: map['driver'] == null ? null : map['driver'] as String,
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      options: map['options'] == null ? null : (map['options'] as Map).cast<String, String>(),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      secretRef: map['secretRef'] == null ? null : SecretReferencePatch.fromMap((map['secretRef'] as Map).cast<String, dynamic>()),
    );
  }
}

