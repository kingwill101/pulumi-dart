// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'allocation_result_patch_resource_k8s_io_v1alpha3.dart';
import 'resource_claim_consumer_reference_patch_resource_k8s_io_v1alpha3.dart';

/// ResourceClaimStatus tracks whether the resource has been allocated and what the result of that was.
class ResourceClaimStatusPatchResourceK8sIoV1alpha3 {
  /// Allocation is set once the claim has been allocated successfully.
  final AllocationResultPatchResourceK8sIoV1alpha3? allocation;
  /// Indicates that a claim is to be deallocated. While this is set, no new consumers may be added to ReservedFor.
  ///
  /// This is only used if the claim needs to be deallocated by a DRA driver. That driver then must deallocate this claim and reset the field together with clearing the Allocation field.
  ///
  /// This is an alpha field and requires enabling the DRAControlPlaneController feature gate.
  final bool? deallocationRequested;
  /// ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ///
  /// In a cluster with multiple scheduler instances, two pods might get scheduled concurrently by different schedulers. When they reference the same ResourceClaim which already has reached its maximum number of consumers, only one pod can be scheduled.
  ///
  /// Both schedulers try to add their pod to the claim.status.reservedFor field, but only the update that reaches the API server first gets stored. The other one fails with an error and the scheduler which issued it knows that it must put the pod back into the queue, waiting for the ResourceClaim to become usable again.
  ///
  /// There can be at most 32 such reservations. This may get increased in the future, but not reduced.
  final List<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha3>? reservedFor;

  /// Creates a new [ResourceClaimStatusPatchResourceK8sIoV1alpha3].
  /// [allocation] Allocation is set once the claim has been allocated successfully.
  /// [deallocationRequested] Indicates that a claim is to be deallocated. While this is set, no new consumers may be added to ReservedFor.
  /// [reservedFor] ReservedFor indicates which entities are currently allowed to use the claim. A Pod which references a ResourceClaim which is not reserved for that Pod will not be started. A claim that is in use or might be in use because it has been reserved must not get deallocated.
  ResourceClaimStatusPatchResourceK8sIoV1alpha3({
    this.allocation,
    this.deallocationRequested,
    this.reservedFor,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocation': ?allocation == null ? null : allocation!.toMap(),
      'deallocationRequested': ?deallocationRequested,
      'reservedFor': ?reservedFor == null ? null : pulumi.Input.encodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha3, Map<String, dynamic>>(reservedFor!, (value) => value.toMap()),
    };
  }

  factory ResourceClaimStatusPatchResourceK8sIoV1alpha3.fromMap(Map<String, dynamic> map) {
    return ResourceClaimStatusPatchResourceK8sIoV1alpha3(
      allocation: map['allocation'] == null ? null : AllocationResultPatchResourceK8sIoV1alpha3.fromMap((map['allocation'] as Map).cast<String, dynamic>()),
      deallocationRequested: map['deallocationRequested'] == null ? null : map['deallocationRequested'] as bool,
      reservedFor: map['reservedFor'] == null ? null : pulumi.Input.decodeList<ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha3>(map['reservedFor'], (value) => ResourceClaimConsumerReferencePatchResourceK8sIoV1alpha3.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

