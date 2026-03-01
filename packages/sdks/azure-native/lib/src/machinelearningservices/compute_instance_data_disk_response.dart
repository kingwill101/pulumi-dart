// ignore_for_file: unused_element, unnecessary_cast


/// Defines an Aml Instance DataDisk.
class ComputeInstanceDataDiskResponse {
  /// Caching type of Data Disk.
  final String? caching;
  /// The initial disk size in gigabytes.
  final int? diskSizeGB;
  /// The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun.
  final int? lun;
  /// type of this storage account.
  final String? storageAccountType;

  /// Creates a new [ComputeInstanceDataDiskResponse].
  /// [caching] Caching type of Data Disk.
  /// [diskSizeGB] The initial disk size in gigabytes.
  /// [lun] The lun is used to uniquely identify each data disk. If attaching multiple disks, each should have a distinct lun.
  /// [storageAccountType] type of this storage account.
  ComputeInstanceDataDiskResponse({
    this.caching,
    this.diskSizeGB,
    this.lun,
    this.storageAccountType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'caching': ?caching,
      'diskSizeGB': ?diskSizeGB,
      'lun': ?lun,
      'storageAccountType': ?storageAccountType,
    };
  }

  factory ComputeInstanceDataDiskResponse.fromMap(Map<String, dynamic> map) {
    return ComputeInstanceDataDiskResponse(
      caching: map['caching'] == null ? null : map['caching'] as String,
      diskSizeGB: map['diskSizeGB'] == null ? null : map['diskSizeGB'] as int,
      lun: map['lun'] == null ? null : map['lun'] as int,
      storageAccountType: map['storageAccountType'] == null ? null : map['storageAccountType'] as String,
    );
  }
}

