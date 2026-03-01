// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import '../meta/object_meta_patch.dart';
import 'resource_claim_spec_patch_resource_k8s_io_v1alpha2.dart';

/// {@template pulumi_resource_k8s_io_v1alpha2_resource_claim_patch_resource_k8s_io_v1alpha2_args_doc}
/// The set of arguments for ResourceClaimPatch.
/// {@endtemplate}
/// {@macro pulumi_resource_k8s_io_v1alpha2_resource_claim_patch_resource_k8s_io_v1alpha2_args_doc}
class ResourceClaimPatchResourceK8sIoV1alpha2Args {
  /// APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  final pulumi.Input<String>? apiVersion;
  /// Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  final pulumi.Input<String>? kind;
  /// Standard object metadata
  final pulumi.Input<ObjectMetaPatch>? metadata;
  /// Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  final pulumi.Input<ResourceClaimSpecPatchResourceK8sIoV1alpha2>? spec;

  /// Creates a new [ResourceClaimPatchResourceK8sIoV1alpha2Args].
  /// [apiVersion] APIVersion defines the versioned schema of this representation of an object. Servers should convert recognized schemas to the latest internal value, and may reject unrecognized values. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#resources
  /// [kind] Kind is a string value representing the REST resource this object represents. Servers may infer this from the endpoint the client submits requests to. Cannot be updated. In CamelCase. More info: https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
  /// [metadata] Standard object metadata
  /// [spec] Spec describes the desired attributes of a resource that then needs to be allocated. It can only be set once when creating the ResourceClaim.
  ResourceClaimPatchResourceK8sIoV1alpha2Args({
    String? apiVersion,
    String? kind,
    ObjectMetaPatch? metadata,
    ResourceClaimSpecPatchResourceK8sIoV1alpha2? spec,
  }) :
      apiVersion = pulumi.Input.asOptionalInput<String>(apiVersion),
      kind = pulumi.Input.asOptionalInput<String>(kind),
      metadata = pulumi.Input.asOptionalInput<ObjectMetaPatch>(metadata),
      spec = pulumi.Input.asOptionalInput<ResourceClaimSpecPatchResourceK8sIoV1alpha2>(spec);

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'apiVersion': ?apiVersion,
      'kind': ?kind,
      'metadata': ?pulumi.Input.mapOptionalInputValue<ObjectMetaPatch, Map<String, dynamic>>(metadata, (value) => value.toMap()),
      'spec': ?pulumi.Input.mapOptionalInputValue<ResourceClaimSpecPatchResourceK8sIoV1alpha2, Map<String, dynamic>>(spec, (value) => value.toMap()),
    };
  }

  factory ResourceClaimPatchResourceK8sIoV1alpha2Args.fromMap(Map<String, dynamic> map) {
    return ResourceClaimPatchResourceK8sIoV1alpha2Args(
      apiVersion: map['apiVersion'] == null ? null : map['apiVersion'] as String,
      kind: map['kind'] == null ? null : map['kind'] as String,
      metadata: map['metadata'] == null ? null : ObjectMetaPatch.fromMap((map['metadata'] as Map).cast<String, dynamic>()),
      spec: map['spec'] == null ? null : ResourceClaimSpecPatchResourceK8sIoV1alpha2.fromMap((map['spec'] as Map).cast<String, dynamic>()),
    );
  }
}

