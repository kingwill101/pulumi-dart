// ignore_for_file: unused_element, unnecessary_cast


/// Storage information about the data disks present in the custom image
class DataDiskStorageTypeInfoResponse {
  /// Disk Lun
  final String? lun;
  /// Disk Storage Type
  final String? storageType;

  /// Creates a new [DataDiskStorageTypeInfoResponse].
  /// [lun] Disk Lun
  /// [storageType] Disk Storage Type
  DataDiskStorageTypeInfoResponse({
    this.lun,
    this.storageType,
  });

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'lun': ?lun,
      'storageType': ?storageType,
    };
  }

  factory DataDiskStorageTypeInfoResponse.fromMap(Map<String, dynamic> map) {
    return DataDiskStorageTypeInfoResponse(
      lun: map['lun'] == null ? null : map['lun'] as String,
      storageType: map['storageType'] == null ? null : map['storageType'] as String,
    );
  }
}

