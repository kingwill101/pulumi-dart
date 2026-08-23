// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'volume_claim_spec_response.dart';

/// DiskBackedMessageBufferSettings properties
class DiskBackedMessageBufferSettingsResponse {
  /// Use the specified persistent volume claim template to mount a "generic ephemeral volume" for the message buffer. See &lt;https://kubernetes.io/docs/concepts/storage/ephemeral-volumes/#generic-ephemeral-volumes&gt; for details.
  final pulumi.Input<VolumeClaimSpecResponse>? ephemeralVolumeClaimSpec;
  /// The max size of the message buffer on disk. If a PVC template is specified using one of ephemeralVolumeClaimSpec or persistentVolumeClaimSpec, then this size is used as the request and limit sizes of that template. If neither ephemeralVolumeClaimSpec nor persistentVolumeClaimSpec are specified, then an emptyDir volume is mounted with this size as its limit. See &lt;https://kubernetes.io/docs/concepts/storage/volumes/#emptydir&gt; for details.
  final pulumi.Input<String> maxSize;
  /// Use the specified persistent volume claim template to mount a persistent volume for the message buffer.
  final pulumi.Input<VolumeClaimSpecResponse>? persistentVolumeClaimSpec;

  /// Creates a new [DiskBackedMessageBufferSettingsResponse].
  /// [ephemeralVolumeClaimSpec] Use the specified persistent volume claim template to mount a "generic ephemeral volume" for the message buffer. See &lt;https://kubernetes.io/docs/concepts/storage/ephemeral-volumes/#generic-ephemeral-volumes&gt; for details.
  /// [maxSize] The max size of the message buffer on disk. If a PVC template is specified using one of ephemeralVolumeClaimSpec or persistentVolumeClaimSpec, then this size is used as the request and limit sizes of that template. If neither ephemeralVolumeClaimSpec nor persistentVolumeClaimSpec are specified, then an emptyDir volume is mounted with this size as its limit. See &lt;https://kubernetes.io/docs/concepts/storage/volumes/#emptydir&gt; for details.
  /// [persistentVolumeClaimSpec] Use the specified persistent volume claim template to mount a persistent volume for the message buffer.
  const DiskBackedMessageBufferSettingsResponse({
    this.ephemeralVolumeClaimSpec,
    required this.maxSize,
    this.persistentVolumeClaimSpec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'ephemeralVolumeClaimSpec': ?pulumi.Input.mapOptionalInputValue<VolumeClaimSpecResponse, Map<String, dynamic>>(ephemeralVolumeClaimSpec, (value) => value.toMap()),
      'maxSize': maxSize,
      'persistentVolumeClaimSpec': ?pulumi.Input.mapOptionalInputValue<VolumeClaimSpecResponse, Map<String, dynamic>>(persistentVolumeClaimSpec, (value) => value.toMap()),
    };
  }

  factory DiskBackedMessageBufferSettingsResponse.fromMap(Map<String, dynamic> map) {
    return DiskBackedMessageBufferSettingsResponse(
      ephemeralVolumeClaimSpec: (() { final guardedValue = map['ephemeralVolumeClaimSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeClaimSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
      maxSize: pulumi.Input.fromValue(map['maxSize'] as String),
      persistentVolumeClaimSpec: (() { final guardedValue = map['persistentVolumeClaimSpec']; if (guardedValue == null) return null; return pulumi.Input.fromValue(VolumeClaimSpecResponse.fromMap((guardedValue as Map).cast<String, dynamic>())); })(),
    );
  }
}
