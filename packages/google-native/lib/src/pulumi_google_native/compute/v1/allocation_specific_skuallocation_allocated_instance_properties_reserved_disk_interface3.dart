/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
enum AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface3 {
  nvme("NVME"),
  scsi("SCSI");

  const AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface3(
      this.value);
  final String value;

  static AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface3
      fromValue(String value) {
    for (final item
        in AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface3
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface3 value: $value');
  }
}
