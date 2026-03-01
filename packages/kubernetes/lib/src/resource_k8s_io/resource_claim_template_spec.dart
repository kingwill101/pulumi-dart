// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'resource_claim_spec.dart';

/// ResourceClaimTemplateSpec contains the metadata and fields for a ResourceClaim.
class ResourceClaimTemplateSpec {
  /// ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  final ObjectMeta? metadata;
  /// Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  final ResourceClaimSpec spec;

  /// Creates a new [ResourceClaimTemplateSpec].
  /// [metadata] ObjectMeta may contain labels and annotations that will be copied into the ResourceClaim when creating it. No other fields are allowed and will be rejected during validation.
  /// [spec] Spec for the ResourceClaim. The entire content is copied unchanged into the ResourceClaim that gets created from this template. The same fields as in a ResourceClaim are also valid here.
  ResourceClaimTemplateSpec({
    this.metadata,
    required this.spec,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': spec.toMap(),
    };
  }

  factory ResourceClaimTemplateSpec.fromMap(Map<String, dynamic> map) {
    return ResourceClaimTemplateSpec(
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: ResourceClaimSpec.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

