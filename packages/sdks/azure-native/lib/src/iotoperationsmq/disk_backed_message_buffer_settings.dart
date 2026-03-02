// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_claim_spec.dart';

/// DiskBackedMessageBufferSettings properties
class DiskBackedMessageBufferSettings {
  /// Use the specified persistent volume claim template to mount a "generic ephemeral volume" for the message buffer. See <https://kubernetes.io/docs/concepts/storage/ephemeral-volumes/#generic-ephemeral-volumes> for details.
  final pulumi.Input<VolumeClaimSpec>? ephemeralVolumeClaimSpec;
  /// The max size of the message buffer on disk. If a PVC template is specified using one of ephemeralVolumeClaimSpec or persistentVolumeClaimSpec, then this size is used as the request and limit sizes of that template. If neither ephemeralVolumeClaimSpec nor persistentVolumeClaimSpec are specified, then an emptyDir volume is mounted with this size as its limit. See <https://kubernetes.io/docs/concepts/storage/volumes/#emptydir> for details.
  final pulumi.Input<String> maxSize;
  /// Use the specified persistent volume claim template to mount a persistent volume for the message buffer.
  final pulumi.Input<VolumeClaimSpec>? persistentVolumeClaimSpec;

  /// Creates a new [DiskBackedMessageBufferSettings].
  /// [ephemeralVolumeClaimSpec] Use the specified persistent volume claim template to mount a "generic ephemeral volume" for the message buffer. See <https://kubernetes.io/docs/concepts/storage/ephemeral-volumes/#generic-ephemeral-volumes> for details.
  /// [maxSize] The max size of the message buffer on disk. If a PVC template is specified using one of ephemeralVolumeClaimSpec or persistentVolumeClaimSpec, then this size is used as the request and limit sizes of that template. If neither ephemeralVolumeClaimSpec nor persistentVolumeClaimSpec are specified, then an emptyDir volume is mounted with this size as its limit. See <https://kubernetes.io/docs/concepts/storage/volumes/#emptydir> for details.
  /// [persistentVolumeClaimSpec] Use the specified persistent volume claim template to mount a persistent volume for the message buffer.
  DiskBackedMessageBufferSettings({
    this.ephemeralVolumeClaimSpec,
    required this.maxSize,
    this.persistentVolumeClaimSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ephemeralVolumeClaimSpec': ?pulumi.Input.mapOptionalInputValue<VolumeClaimSpec, Map<String, dynamic>>(ephemeralVolumeClaimSpec, (value) => value.toMap()),
      'maxSize': maxSize,
      'persistentVolumeClaimSpec': ?pulumi.Input.mapOptionalInputValue<VolumeClaimSpec, Map<String, dynamic>>(persistentVolumeClaimSpec, (value) => value.toMap()),
    };
  }

  factory DiskBackedMessageBufferSettings.fromMap(Map<String, dynamic> map) {
    return DiskBackedMessageBufferSettings(
      ephemeralVolumeClaimSpec: map['ephemeralVolumeClaimSpec'] == null ? null : (VolumeClaimSpec.fromMap((map['ephemeralVolumeClaimSpec'] as Map).cast<String, dynamic>())).input(),
      maxSize: (map['maxSize'] as String).input(),
      persistentVolumeClaimSpec: map['persistentVolumeClaimSpec'] == null ? null : (VolumeClaimSpec.fromMap((map['persistentVolumeClaimSpec'] as Map).cast<String, dynamic>())).input(),
    );
  }
}

