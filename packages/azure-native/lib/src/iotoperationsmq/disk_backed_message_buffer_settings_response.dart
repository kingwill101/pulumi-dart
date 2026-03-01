// ignore_for_file: unused_element, unnecessary_cast

import 'volume_claim_spec_response.dart';

/// DiskBackedMessageBufferSettings properties
class DiskBackedMessageBufferSettingsResponse {
  /// Use the specified persistent volume claim template to mount a "generic ephemeral volume" for the message buffer. See <https://kubernetes.io/docs/concepts/storage/ephemeral-volumes/#generic-ephemeral-volumes> for details.
  final VolumeClaimSpecResponse? ephemeralVolumeClaimSpec;
  /// The max size of the message buffer on disk. If a PVC template is specified using one of ephemeralVolumeClaimSpec or persistentVolumeClaimSpec, then this size is used as the request and limit sizes of that template. If neither ephemeralVolumeClaimSpec nor persistentVolumeClaimSpec are specified, then an emptyDir volume is mounted with this size as its limit. See <https://kubernetes.io/docs/concepts/storage/volumes/#emptydir> for details.
  final String maxSize;
  /// Use the specified persistent volume claim template to mount a persistent volume for the message buffer.
  final VolumeClaimSpecResponse? persistentVolumeClaimSpec;

  /// Creates a new [DiskBackedMessageBufferSettingsResponse].
  /// [ephemeralVolumeClaimSpec] Use the specified persistent volume claim template to mount a "generic ephemeral volume" for the message buffer. See <https://kubernetes.io/docs/concepts/storage/ephemeral-volumes/#generic-ephemeral-volumes> for details.
  /// [maxSize] The max size of the message buffer on disk. If a PVC template is specified using one of ephemeralVolumeClaimSpec or persistentVolumeClaimSpec, then this size is used as the request and limit sizes of that template. If neither ephemeralVolumeClaimSpec nor persistentVolumeClaimSpec are specified, then an emptyDir volume is mounted with this size as its limit. See <https://kubernetes.io/docs/concepts/storage/volumes/#emptydir> for details.
  /// [persistentVolumeClaimSpec] Use the specified persistent volume claim template to mount a persistent volume for the message buffer.
  DiskBackedMessageBufferSettingsResponse({
    this.ephemeralVolumeClaimSpec,
    required this.maxSize,
    this.persistentVolumeClaimSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ephemeralVolumeClaimSpec': ?ephemeralVolumeClaimSpec == null ? null : ephemeralVolumeClaimSpec!.toMap(),
      'maxSize': maxSize,
      'persistentVolumeClaimSpec': ?persistentVolumeClaimSpec == null ? null : persistentVolumeClaimSpec!.toMap(),
    };
  }

  factory DiskBackedMessageBufferSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DiskBackedMessageBufferSettingsResponse(
      ephemeralVolumeClaimSpec: map['ephemeralVolumeClaimSpec'] == null ? null : VolumeClaimSpecResponse.fromMap((map['ephemeralVolumeClaimSpec'] as Map).cast<String, dynamic>()),
      maxSize: map['maxSize'] as String,
      persistentVolumeClaimSpec: map['persistentVolumeClaimSpec'] == null ? null : VolumeClaimSpecResponse.fromMap((map['persistentVolumeClaimSpec'] as Map).cast<String, dynamic>()),
    );
  }
}

