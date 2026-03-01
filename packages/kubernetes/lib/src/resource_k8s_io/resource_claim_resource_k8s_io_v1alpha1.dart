// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'resource_claim_spec_resource_k8s_io_v1alpha1.dart';
import 'resource_claim_status_resource_k8s_io_v1alpha1.dart';

/// ResourceClaim describes which resources are needed by a resource consumer. Its status tracks whether the resource has been allocated and what the resulting attributes are.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimResourceK8sIoV1alpha1 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMeta? metadata;
  /// Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  final ResourceClaimSpecResourceK8sIoV1alpha1 spec;
  /// Status describes whether the resource is available and with which attributes.
  final ResourceClaimStatusResourceK8sIoV1alpha1? status;

  /// Creates a new [ResourceClaimResourceK8sIoV1alpha1].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  /// [status] Status describes whether the resource is available and with which attributes.
  ResourceClaimResourceK8sIoV1alpha1({
    this.apiVersion,
    this.kind,
    this.metadata,
    required this.spec,
    this.status,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?metadata == null ? null : metadata!.toMap(),
      'spec': spec.toMap(),
      'status': ?status == null ? null : status!.toMap(),
    };
  }

  factory ResourceClaimResourceK8sIoV1alpha1.fromMap(Map<String, dynamic> map) {
    return ResourceClaimResourceK8sIoV1alpha1(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: ResourceClaimSpecResourceK8sIoV1alpha1.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ResourceClaimStatusResourceK8sIoV1alpha1.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

