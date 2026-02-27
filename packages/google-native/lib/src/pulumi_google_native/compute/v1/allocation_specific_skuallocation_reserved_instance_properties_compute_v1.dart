// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;
import 'accelerator_config_compute_v1.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_compute_v1.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1 {
  /// Specifies accelerator type and count.
  final List<AcceleratorConfigComputeV1>? guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final List<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1>?
      localSsds;

  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final String? machineType;

  /// Minimum cpu platform the reservation.
  final String? minCpuPlatform;

  AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    this.machineType,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] = pulumi.Input.encodeList<
              AcceleratorConfigComputeV1, Map<String, dynamic>>(
          guestAcceleratorsValue, (value) => value.toMap());
    }
    final localSsdsValue = localSsds;
    if (localSsdsValue != null) {
      map['localSsds'] = pulumi.Input.encodeList<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1,
          Map<String, dynamic>>(localSsdsValue, (value) => value.toMap());
    }
    final locationHintValue = locationHint;
    if (locationHintValue != null) {
      map['locationHint'] = locationHintValue;
    }
    final machineTypeValue = machineType;
    if (machineTypeValue != null) {
      map['machineType'] = machineTypeValue;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    return map;
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesComputeV1(
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : pulumi.Input.decodeList<AcceleratorConfigComputeV1>(
              map['guestAccelerators'],
              (value) => AcceleratorConfigComputeV1.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localSsds: map['localSsds'] == null
          ? null
          : pulumi.Input.decodeList<
                  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1>(
              map['localSsds'],
              (value) =>
                  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1
                      .fromMap((value as Map).cast<String, dynamic>())),
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
    );
  }
}
