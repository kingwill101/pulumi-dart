// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'persistent_volume_claim_spec.dart';

/// PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of an EphemeralVolumeSource.
class PersistentVolumeClaimTemplate {
  /// May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMeta? metadata;
  /// The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  final PersistentVolumeClaimSpec spec;

  /// Creates a new [PersistentVolumeClaimTemplate].
  /// [metadata] May contain labels and annotations that will be copied into the PVC when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] The specification for the PersistentVolumeClaim. The entire content is copied unchanged into the PVC that gets created from this template. The same fields as in a PersistentVolumeClaim are also valid here.
  PersistentVolumeClaimTemplate({
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': spec.toMap(),
    };
  }

  factory PersistentVolumeClaimTemplate.fromMap(Map<String, dynamic> map) {
    return PersistentVolumeClaimTemplate(
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: PersistentVolumeClaimSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

