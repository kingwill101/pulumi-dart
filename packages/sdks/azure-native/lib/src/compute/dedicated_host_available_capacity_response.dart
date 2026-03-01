// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'dedicated_host_allocatable_vmresponse.dart';

/// Dedicated host unutilized capacity.
class DedicatedHostAvailableCapacityResponse {
  /// The unutilized capacity of the dedicated host represented in terms of each VM size that is allowed to be deployed to the dedicated host.
  final List<DedicatedHostAllocatableVMResponse>? allocatableVMs;

  /// Creates a new [DedicatedHostAvailableCapacityResponse].
  /// [allocatableVMs] The unutilized capacity of the dedicated host represented in terms of each VM size that is allowed to be deployed to the dedicated host.
  DedicatedHostAvailableCapacityResponse({
    this.allocatableVMs,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'allocatableVMs': ?allocatableVMs == null ? null : pulumi.Input.encodeList<DedicatedHostAllocatableVMResponse, Map<String, dynamic>>(allocatableVMs!, (value) => value.toMap()),
    };
  }

  factory DedicatedHostAvailableCapacityResponse.fromMap(Map<String, dynamic> map) {
    return DedicatedHostAvailableCapacityResponse(
      allocatableVMs: map['allocatableVMs'] == null ? null : pulumi.Input.decodeList<DedicatedHostAllocatableVMResponse>(map['allocatableVMs'], (value) => DedicatedHostAllocatableVMResponse.fromMap((value as Map).cast<String, dynamic>())),
    );
  }
}

