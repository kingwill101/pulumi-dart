// ignore_for_file: unused_element, unnecessary_cast

import 'secret_reference.dart';

/// Represents storage that is managed by an external CSI volume driver
class CSIPersistentVolumeSource {
  /// controllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? controllerExpandSecretRef;
  /// controllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? controllerPublishSecretRef;
  /// driver is the name of the driver to use for this volume. Required.
  final String driver;
  /// fsType to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
  final String? fsType;
  /// nodeExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is optional, may be omitted if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodeExpandSecretRef;
  /// nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodePublishSecretRef;
  /// nodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  final SecretReference? nodeStageSecretRef;
  /// readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  final bool? readOnly;
  /// volumeAttributes of the volume to publish.
  final Map<String, String>? volumeAttributes;
  /// volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  final String volumeHandle;

  /// Creates a new [CSIPersistentVolumeSource].
  /// [controllerExpandSecretRef] controllerExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerExpandVolume call. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [controllerPublishSecretRef] controllerPublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI ControllerPublishVolume and ControllerUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [driver] driver is the name of the driver to use for this volume. Required.
  /// [fsType] fsType to mount. Must be a filesystem type supported by the host operating system. Ex. "ext4", "xfs", "ntfs".
  /// [nodeExpandSecretRef] nodeExpandSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeExpandVolume call. This field is optional, may be omitted if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [nodePublishSecretRef] nodePublishSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [nodeStageSecretRef] nodeStageSecretRef is a reference to the secret object containing sensitive information to pass to the CSI driver to complete the CSI NodeStageVolume and NodeStageVolume and NodeUnstageVolume calls. This field is optional, and may be empty if no secret is required. If the secret object contains more than one secret, all secrets are passed.
  /// [readOnly] readOnly value to pass to ControllerPublishVolumeRequest. Defaults to false (read/write).
  /// [volumeAttributes] volumeAttributes of the volume to publish.
  /// [volumeHandle] volumeHandle is the unique volume name returned by the CSI volume plugin’s CreateVolume to refer to the volume on all subsequent calls. Required.
  CSIPersistentVolumeSource({
    this.controllerExpandSecretRef,
    this.controllerPublishSecretRef,
    required this.driver,
    this.fsType,
    this.nodeExpandSecretRef,
    this.nodePublishSecretRef,
    this.nodeStageSecretRef,
    this.readOnly,
    this.volumeAttributes,
    required this.volumeHandle,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'controllerExpandSecretRef': ?controllerExpandSecretRef == null ? null : controllerExpandSecretRef!.toMap(),
      'controllerPublishSecretRef': ?controllerPublishSecretRef == null ? null : controllerPublishSecretRef!.toMap(),
      'driver': driver,
      'fsType': ?fsType,
      'nodeExpandSecretRef': ?nodeExpandSecretRef == null ? null : nodeExpandSecretRef!.toMap(),
      'nodePublishSecretRef': ?nodePublishSecretRef == null ? null : nodePublishSecretRef!.toMap(),
      'nodeStageSecretRef': ?nodeStageSecretRef == null ? null : nodeStageSecretRef!.toMap(),
      'readOnly': ?readOnly,
      'volumeAttributes': ?volumeAttributes,
      'volumeHandle': volumeHandle,
    };
  }

  factory CSIPersistentVolumeSource.fromMap(Map<String, dynamic> map) {
    return CSIPersistentVolumeSource(
      controllerExpandSecretRef: map['controllerExpandSecretRef'] == null ? null : SecretReference.fromMap((map['controllerExpandSecretRef'] as Map).cast<String, dynamic>()),
      controllerPublishSecretRef: map['controllerPublishSecretRef'] == null ? null : SecretReference.fromMap((map['controllerPublishSecretRef'] as Map).cast<String, dynamic>()),
      driver: map['driver'] as String,
      fsType: map['fsType'] == null ? null : map['fsType'] as String,
      nodeExpandSecretRef: map['nodeExpandSecretRef'] == null ? null : SecretReference.fromMap((map['nodeExpandSecretRef'] as Map).cast<String, dynamic>()),
      nodePublishSecretRef: map['nodePublishSecretRef'] == null ? null : SecretReference.fromMap((map['nodePublishSecretRef'] as Map).cast<String, dynamic>()),
      nodeStageSecretRef: map['nodeStageSecretRef'] == null ? null : SecretReference.fromMap((map['nodeStageSecretRef'] as Map).cast<String, dynamic>()),
      readOnly: map['readOnly'] == null ? null : map['readOnly'] as bool,
      volumeAttributes: map['volumeAttributes'] == null ? null : (map['volumeAttributes'] as Map).cast<String, String>(),
      volumeHandle: map['volumeHandle'] as String,
    );
  }
}

