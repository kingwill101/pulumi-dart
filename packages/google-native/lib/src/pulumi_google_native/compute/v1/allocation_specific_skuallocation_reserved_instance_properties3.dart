// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config3.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk3.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstanceProperties3 {
  /// Specifies accelerator type and count.
  final List<AcceleratorConfig3>? guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final List<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3>?
      localSsds;

  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final String? machineType;

  /// Minimum cpu platform the reservation.
  final String? minCpuPlatform;

  AllocationSpecificSKUAllocationReservedInstanceProperties3({
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
      map['guestAccelerators'] =
          Input.encodeList<AcceleratorConfig3, Map<String, dynamic>>(
              guestAcceleratorsValue, (value) => value.toMap());
    }
    final localSsdsValue = localSsds;
    if (localSsdsValue != null) {
      map['localSsds'] = Input.encodeList<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3,
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

  factory AllocationSpecificSKUAllocationReservedInstanceProperties3.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstanceProperties3(
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : Input.decodeList<AcceleratorConfig3>(
              map['guestAccelerators'],
              (value) => AcceleratorConfig3.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localSsds: map['localSsds'] == null
          ? null
          : Input.decodeList<
                  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3>(
              map['localSsds'],
              (value) =>
                  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3
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
