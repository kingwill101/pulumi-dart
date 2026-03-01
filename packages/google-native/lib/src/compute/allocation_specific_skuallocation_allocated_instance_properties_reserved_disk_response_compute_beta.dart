// ignore_for_file: unused_element, unnecessary_cast

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta {
  /// Specifies the size of the disk in base-2 GB.
  final String diskSizeGb;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final String interface;

  /// Creates a new [AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta({
    required this.diskSizeGb,
    required this.interface,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{'diskSizeGb': diskSizeGb, 'interface': interface};
  }

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta.fromMap(
    Map<String, dynamic> map,
  ) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponseComputeBeta(
      diskSizeGb: map['diskSizeGb'] as String,
      interface: map['interface'] as String,
    );
  }
}
