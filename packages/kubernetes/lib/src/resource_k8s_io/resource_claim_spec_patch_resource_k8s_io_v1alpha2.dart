// ignore_for_file: unused_element, unnecessary_cast

import 'resource_claim_parameters_reference_patch_resource_k8s_io_v1alpha2.dart';

/// ResourceClaimSpec defines how a resource is to be allocated.
class ResourceClaimSpecPatchResourceK8sIoV1alpha2 {
  /// Allocation can start immediately or when a Pod wants to use the resource. "WaitForFirstConsumer" is the default.
  final String? allocationMode;
  /// ParametersRef references a separate object with arbitrary parameters that will be used by the driver when allocating a resource for the claim.
  ///
  /// The object must be in the same namespace as the ResourceClaim.
  final ResourceClaimParametersReferencePatchResourceK8sIoV1alpha2? parametersRef;
  /// ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  final String? resourceClassName;

  /// Creates a new [ResourceClaimSpecPatchResourceK8sIoV1alpha2].
  /// [allocationMode] Allocation can start immediately or when a Pod wants to use the resource. "WaitForFirstConsumer" is the default.
  /// [parametersRef] ParametersRef references a separate object with arbitrary parameters that will be used by the driver when allocating a resource for the claim.
  /// [resourceClassName] ResourceClassName references the driver and additional parameters via the name of a ResourceClass that was created as part of the driver deployment.
  ResourceClaimSpecPatchResourceK8sIoV1alpha2({
    this.allocationMode,
    this.parametersRef,
    this.resourceClassName,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocationMode': ?allocationMode,
      'parametersRef': ?parametersRef == null ? null : parametersRef!.toMap(),
      'resourceClassName': ?resourceClassName,
    };
  }

  factory ResourceClaimSpecPatchResourceK8sIoV1alpha2.fromMap(Map<String, dynamic> map) {
    return ResourceClaimSpecPatchResourceK8sIoV1alpha2(
      allocationMode: map['allocationMode'] == null ? null : map['allocationMode'] as String,
      parametersRef: map['parametersRef'] == null ? null : ResourceClaimParametersReferencePatchResourceK8sIoV1alpha2.fromMap((map['parametersRef'] as Map).cast<String, dynamic>()),
      resourceClassName: map['resourceClassName'] == null ? null : map['resourceClassName'] as String,
    );
  }
}

