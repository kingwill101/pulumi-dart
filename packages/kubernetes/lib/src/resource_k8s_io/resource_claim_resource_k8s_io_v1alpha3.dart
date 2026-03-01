// ignore_for_file: unused_element, unnecessary_cast

import '../meta/object_meta.dart';
import 'resource_claim_spec_resource_k8s_io_v1alpha3.dart';
import 'resource_claim_status_resource_k8s_io_v1alpha3.dart';

/// ResourceClaim describes a request for access to resources in the cluster, for use by workloads. For example, if a workload needs an accelerator device with specific properties, this is how that request is expressed. The status stanza tracks whether this claim has been satisfied and what specific resources have been allocated.
///
/// This is an alpha type and requires enabling the DynamicResourceAllocation feature gate.
class ResourceClaimResourceK8sIoV1alpha3 {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final String? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final String? kind;
  /// Standard object metadata
  final ObjectMeta? metadata;
  /// Spec describes what is being requested and how to configure it. The spec is immutable.
  final ResourceClaimSpecResourceK8sIoV1alpha3 spec;
  /// Status describes whether the claim is ready to use and what has been allocated.
  final ResourceClaimStatusResourceK8sIoV1alpha3? status;

  /// Creates a new [ResourceClaimResourceK8sIoV1alpha3].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes what is being requested and how to configure it. The spec is immutable.
  /// [status] Status describes whether the claim is ready to use and what has been allocated.
  ResourceClaimResourceK8sIoV1alpha3({
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

  factory ResourceClaimResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return ResourceClaimResourceK8sIoV1alpha3(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMeta.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: ResourceClaimSpecResourceK8sIoV1alpha3.fromMap((map['spec'] as Map).cast<String, dynamic>()),
      status: map['status'] == null ? null : ResourceClaimStatusResourceK8sIoV1alpha3.fromMap((map['status'] as Map).cast<String, dynamic>()),
    );
  }
}

