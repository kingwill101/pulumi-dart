// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_response_compute_v1.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_response_compute_v1.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1 {
  /// Specifies accelerator type and count.
  final List<AcceleratorConfigResponseComputeV1> guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final List<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1>
      localSsds;

  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String locationHint;

  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final String machineType;

  /// Minimum cpu platform the reservation.
  final String minCpuPlatform;

  AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1({
    required this.guestAccelerators,
    required this.localSsds,
    required this.locationHint,
    required this.machineType,
    required this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guestAccelerators'] = pulumi.Input.encodeList<
        AcceleratorConfigResponseComputeV1,
        Map<String, dynamic>>(guestAccelerators, (value) => value.toMap());
    map['localSsds'] = pulumi.Input.encodeList<
        AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1,
        Map<String, dynamic>>(localSsds, (value) => value.toMap());
    map['locationHint'] = locationHint;
    map['machineType'] = machineType;
    map['minCpuPlatform'] = minCpuPlatform;
    return map;
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesResponseComputeV1(
      guestAccelerators:
          pulumi.Input.decodeList<AcceleratorConfigResponseComputeV1>(
              map['guestAccelerators'],
              (value) => AcceleratorConfigResponseComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localSsds: pulumi.Input.decodeList<
              AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1>(
          map['localSsds'],
          (value) =>
              AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeV1
                  .fromMap((value as Map).cast<String, dynamic>())),
      locationHint: map['locationHint'] as String,
      machineType: map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] as String,
    );
  }
}
