// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart';
import 'accelerator_config2.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk2.dart';
import 'allocation_specific_skuallocation_reserved_instance_properties_maintenance_interval2.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstanceProperties2 {
  /// Specifies accelerator type and count.
  final List<AcceleratorConfig2>? guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final List<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk2>?
      localSsds;

  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String? locationHint;

  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final String? machineType;

  /// Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  final int? maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval2?
      maintenanceInterval;

  /// Minimum cpu platform the reservation.
  final String? minCpuPlatform;

  AllocationSpecificSKUAllocationReservedInstanceProperties2({
    this.guestAccelerators,
    this.localSsds,
    this.locationHint,
    this.machineType,
    this.maintenanceFreezeDurationHours,
    this.maintenanceInterval,
    this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final guestAcceleratorsValue = guestAccelerators;
    if (guestAcceleratorsValue != null) {
      map['guestAccelerators'] =
          Input.encodeList<AcceleratorConfig2, Map<String, dynamic>>(
              guestAcceleratorsValue, (value) => value.toMap());
    }
    final localSsdsValue = localSsds;
    if (localSsdsValue != null) {
      map['localSsds'] = Input.encodeList<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk2,
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
    final maintenanceFreezeDurationHoursValue = maintenanceFreezeDurationHours;
    if (maintenanceFreezeDurationHoursValue != null) {
      map['maintenanceFreezeDurationHours'] =
          maintenanceFreezeDurationHoursValue;
    }
    final maintenanceIntervalValue = maintenanceInterval;
    if (maintenanceIntervalValue != null) {
      map['maintenanceInterval'] = maintenanceIntervalValue.value;
    }
    final minCpuPlatformValue = minCpuPlatform;
    if (minCpuPlatformValue != null) {
      map['minCpuPlatform'] = minCpuPlatformValue;
    }
    return map;
  }

  factory AllocationSpecificSKUAllocationReservedInstanceProperties2.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstanceProperties2(
      guestAccelerators: map['guestAccelerators'] == null
          ? null
          : Input.decodeList<AcceleratorConfig2>(
              map['guestAccelerators'],
              (value) => AcceleratorConfig2.fromMap(
                  (value as Map).cast<String, dynamic>())),
      localSsds: map['localSsds'] == null
          ? null
          : Input.decodeList<
                  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk2>(
              map['localSsds'],
              (value) =>
                  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk2
                      .fromMap((value as Map).cast<String, dynamic>())),
      locationHint:
          map['locationHint'] == null ? null : map['locationHint'] as String,
      machineType:
          map['machineType'] == null ? null : map['machineType'] as String,
      maintenanceFreezeDurationHours:
          map['maintenanceFreezeDurationHours'] == null
              ? null
              : map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] == null
          ? null
          : AllocationSpecificSKUAllocationReservedInstancePropertiesMaintenanceInterval2
              .fromValue(map['maintenanceInterval'] as String),
      minCpuPlatform: map['minCpuPlatform'] == null
          ? null
          : map['minCpuPlatform'] as String,
    );
  }
}
