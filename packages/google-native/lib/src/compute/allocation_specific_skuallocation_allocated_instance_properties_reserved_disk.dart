// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_interface.dart';

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk {
  /// Specifies the size of the disk in base-2 GB.
  final String? diskSizeGb;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface?
  interface;

  /// Creates a new [AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk({
    this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskSizeGb': ?diskSizeGb,
      'interface': ?interface == null ? null : interface!.value,
    };
  }

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk(
      diskSizeGb: map['diskSizeGb'] == null
          ? null
          : map['diskSizeGb'] as String,
      interface: map['interface'] == null
          ? null
          : AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface.fromValue(
              map['interface'] as String,
            ),
    );
  }
}
