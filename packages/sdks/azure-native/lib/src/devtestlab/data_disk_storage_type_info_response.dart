// ignore_for_file: unused_element, unnecessary_cast

import 'package:pulumi/pulumi.dart' as pulumi;

/// Storage information about the data disks present in the custom image
class DataDiskStorageTypeInfoResponse {
  /// Disk Lun
  final pulumi.Input<String>? lun;
  /// Disk Storage Type
  final pulumi.Input<String>? storageType;

  /// Creates a new [DataDiskStorageTypeInfoResponse].
  /// [lun] Disk Lun
  /// [storageType] Disk Storage Type
  const DataDiskStorageTypeInfoResponse({
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
      lun: (() { final guardedValue = map['lun']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
      storageType: (() { final guardedValue = map['storageType']; if (guardedValue == null) return null; return pulumi.Input.fromValue(guardedValue as String); })(),
    );
  }
}
