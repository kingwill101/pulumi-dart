// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_interface3.dart';

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3 {
  /// Specifies the size of the disk in base-2 GB.
  final String? diskSizeGb;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface3?
      interface;

  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3({
    this.diskSizeGb,
    this.interface,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    final diskSizeGbValue = diskSizeGb;
    if (diskSizeGbValue != null) {
      map['diskSizeGb'] = diskSizeGbValue;
    }
    final interfaceValue = interface;
    if (interfaceValue != null) {
      map['interface'] = interfaceValue.value;
    }
    return map;
  }

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDisk3(
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      interface: map['interface'] == null
          ? null
          : AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface3
              .fromValue(map['interface'] as String),
    );
  }
}
