// ignore_for_file: unused_element, unnecessary_cast

import 'allocation_specific_skuallocation_allocated_instance_properties_reserved_disk_interface_compute_v1.dart';

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1 {
  /// Specifies the size of the disk in base-2 GB.
  final String? diskSizeGb;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeV1?
      interface;

  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1({
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

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskComputeV1(
      diskSizeGb:
          map['diskSizeGb'] == null ? null : map['diskSizeGb'] as String,
      interface: map['interface'] == null
          ? null
          : AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterfaceComputeV1
              .fromValue(map['interface'] as String),
    );
  }
}
