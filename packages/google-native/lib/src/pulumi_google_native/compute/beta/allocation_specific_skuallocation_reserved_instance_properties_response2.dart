// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' hide Config;
import 'accelerator_config_response2.dart';
import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_response2.dart';

/// Properties of the SKU instances being reserved. Next ID: 9
class AllocationSpecificSKUAllocationReservedInstancePropertiesResponse2 {
  /// Specifies accelerator type and count.
  final List<AcceleratorConfigResponse2> guestAccelerators;

  /// Specifies amount of local ssd to reserve with each instance. The type of disk is local-ssd.
  final List<
          AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse2>
      localSsds;

  /// An opaque location hint used to place the allocation close to other resources. This field is for use by internal tools that use the public API.
  final String locationHint;

  /// Specifies type of machine (name only) which has fixed number of vCPUs and fixed amount of memory. This also includes specifying custom machine type following custom-NUMBER_OF_CPUS-AMOUNT_OF_MEMORY pattern.
  final String machineType;

  /// Specifies the number of hours after reservation creation where instances using the reservation won't be scheduled for maintenance.
  final int maintenanceFreezeDurationHours;

  /// Specifies the frequency of planned maintenance events. The accepted values are: `PERIODIC`.
  final String maintenanceInterval;

  /// Minimum cpu platform the reservation.
  final String minCpuPlatform;

  AllocationSpecificSKUAllocationReservedInstancePropertiesResponse2({
    required this.guestAccelerators,
    required this.localSsds,
    required this.locationHint,
    required this.machineType,
    required this.maintenanceFreezeDurationHours,
    required this.maintenanceInterval,
    required this.minCpuPlatform,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['guestAccelerators'] =
        Input.encodeList<AcceleratorConfigResponse2, Map<String, dynamic>>(
            guestAccelerators, (value) => value.toMap());
    map['localSsds'] = Input.encodeList<
        AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse2,
        Map<String, dynamic>>(localSsds, (value) => value.toMap());
    map['locationHint'] = locationHint;
    map['machineType'] = machineType;
    map['maintenanceFreezeDurationHours'] = maintenanceFreezeDurationHours;
    map['maintenanceInterval'] = maintenanceInterval;
    map['minCpuPlatform'] = minCpuPlatform;
    return map;
  }

  factory AllocationSpecificSKUAllocationReservedInstancePropertiesResponse2.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationReservedInstancePropertiesResponse2(
      guestAccelerators: Input.decodeList<AcceleratorConfigResponse2>(
          map['guestAccelerators'],
          (value) => AcceleratorConfigResponse2.fromMap(
              (value as Map).cast<String, dynamic>())),
      localSsds: Input.decodeList<
              AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse2>(
          map['localSsds'],
          (value) =>
              AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse2
                  .fromMap((value as Map).cast<String, dynamic>())),
      locationHint: map['locationHint'] as String,
      machineType: map['machineType'] as String,
      maintenanceFreezeDurationHours:
          map['maintenanceFreezeDurationHours'] as int,
      maintenanceInterval: map['maintenanceInterval'] as String,
      minCpuPlatform: map['minCpuPlatform'] as String,
    );
  }
}
