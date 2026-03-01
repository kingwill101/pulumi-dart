// ignore_for_file: unused_element, unnecessary_cast


/// Managed data disk description.
class VmssDataDiskResponse {
  /// Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  final String diskLetter;
  /// Disk size for each vm in the node type in GBs.
  final int diskSizeGB;
  /// Managed data disk type. Specifies the storage account type for the managed disk
  final String diskType;
  /// Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. Lun 0 is reserved for the service fabric data disk.
  final int lun;

  /// Creates a new [VmssDataDiskResponse].
  /// [diskLetter] Managed data disk letter. It can not use the reserved letter C or D and it can not change after created.
  /// [diskSizeGB] Disk size for each vm in the node type in GBs.
  /// [diskType] Managed data disk type. Specifies the storage account type for the managed disk
  /// [lun] Specifies the logical unit number of the data disk. This value is used to identify data disks within the VM and therefore must be unique for each data disk attached to a VM. Lun 0 is reserved for the service fabric data disk.
  VmssDataDiskResponse({
    required this.diskLetter,
    required this.diskSizeGB,
    required this.diskType,
    required this.lun,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'diskLetter': diskLetter,
      'diskSizeGB': diskSizeGB,
      'diskType': diskType,
      'lun': lun,
    };
  }

  factory VmssDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return VmssDataDiskResponse(
      diskLetter: map['diskLetter'] as String,
      diskSizeGB: map['diskSizeGB'] as int,
      diskType: map['diskType'] as String,
      lun: map['lun'] as int,
    );
  }
}

