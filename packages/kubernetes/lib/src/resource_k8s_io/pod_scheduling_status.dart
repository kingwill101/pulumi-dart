// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'resource_claim_scheduling_status.dart';

/// PodSchedulingStatus describes where resources for the Pod can be allocated.
class PodSchedulingStatus {
  /// ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  final List<ResourceClaimSchedulingStatus>? resourceClaims;

  /// Creates a new [PodSchedulingStatus].
  /// [resourceClaims] ResourceClaims describes resource availability for each pod.spec.resourceClaim entry where the corresponding ResourceClaim uses "WaitForFirstConsumer" allocation mode.
  PodSchedulingStatus({
    this.resourceClaims,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'resourceClaims': ?resourceClaims == null ? null : pulumi.Input.encodeList<ResourceClaimSchedulingStatus, Map<String, dynamic>>(resourceClaims!, (value) => value.toMap()),
    };
  }

  factory PodSchedulingStatus.fromMap(Map<String, dynamic> map) {
    return PodSchedulingStatus(
      resourceClaims: map['resourceClaims'] == null ? null : pulumi.Input.decodeList<ResourceClaimSchedulingStatus>(map['resourceClaims'], (value) => ResourceClaimSchedulingStatus.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

