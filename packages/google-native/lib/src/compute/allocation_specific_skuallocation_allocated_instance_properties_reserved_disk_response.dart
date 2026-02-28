// ignore_for_file: unused_element, unnecessary_cast

class AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse {
  /// Specifies the size of the disk in base-2 GB.
  final String diskSizeGb;

  /// Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  final String interface;

  /// Creates a new [AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse].
  /// [diskSizeGb] Specifies the size of the disk in base-2 GB.
  /// [interface] Specifies the disk interface to use for attaching this disk, which is either SCSI or NVME. The default is SCSI. For performance characteristics of SCSI over NVMe, see Local SSD performance.
  AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse({
    required this.diskSizeGb,
    required this.interface,
  });

  Map<String, dynamic> toMap() {
    final map = <String, dynamic>{};
    map['diskSizeGb'] = diskSizeGb;
    map['interface'] = interface;
    return map;
  }

  factory AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse.fromMap(
      Map<String, dynamic> map) {
    return AllocationSpecificSKUAllocationAllocatedInstancePropertiesReservedDiskResponse(
      diskSizeGb: map['diskSizeGb'] as String,
      interface: map['interface'] as String,
    );
  }
}
