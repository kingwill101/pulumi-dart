// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'resource_claim_spec_resource_k8s_io_v1beta2.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpecResourceK8sIoV1beta2 {
  /// ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMeta? metadata;
  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final ResourceClaimSpecResourceK8sIoV1beta2 spec;

  /// Creates a new [ResourceClaimTemplateSpecResourceK8sIoV1beta2].
  /// [metadata] ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  ResourceClaimTemplateSpecResourceK8sIoV1beta2({
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': spec.toMap(),
    };
  }

  factory ResourceClaimTemplateSpecResourceK8sIoV1beta2.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateSpecResourceK8sIoV1beta2(
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: ResourceClaimSpecResourceK8sIoV1beta2.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

