/// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
enum AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface2 {
  nvme("NVME"),
  scsi("SCSI");

  const AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface2(
      this.value);
  final String value;

  static AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface2
      fromValue(String value) {
    for (final item
        in AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface2
            .values) {
      if (item.value == value) {
        return item;
      }
    }
    throw ArgumentError(
        'Unknown AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskInterface2 value: $value');
  }
}
